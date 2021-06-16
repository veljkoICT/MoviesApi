using Microsoft.EntityFrameworkCore;
using MoviesApi.Application.DataTransfer;
using MoviesApi.Application.Queries;
using MoviesApi.Application.Searches;
using MoviesApi.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MoviesApi.Implementation.Queries
{
    public class EfGetUsersQuery : IGetUsersQuery
    {
        private readonly MoviesApiContext _context;
        public EfGetUsersQuery(MoviesApiContext context)
        {
            _context = context;
        }
        public int Id => 21;

        public string Name => "Users search";

        public PagedResponse<UserDto> Execute(UserSearch search)
        {
            var query = _context.Users
                .Include(x => x.Role)
                .Include(x => x.UserMovies)
                    .ThenInclude(um => um.Movie)
                .AsQueryable();

            if (!string.IsNullOrEmpty(search.FirstName) || !string.IsNullOrWhiteSpace(search.FirstName))
            {
                query = query.Where(
                    x => x.FirstName.ToLower().Contains(search.FirstName.ToLower()));
            }

            if (!string.IsNullOrEmpty(search.LastName) || !string.IsNullOrWhiteSpace(search.LastName))
            {
                query = query.Where(
                    x => x.LastName.ToLower().Contains(search.LastName.ToLower()));
            }

            if (!string.IsNullOrEmpty(search.Email) || !string.IsNullOrWhiteSpace(search.Email))
            {
                query = query.Where(
                    x => x.Email.ToLower().Contains(search.Email.ToLower()));
            }

            var skipCount = search.PerPage * (search.Page - 1);

            var response = new PagedResponse<UserDto>
            {
                CurrentPage = search.Page,
                ItemsPerPage = search.PerPage,
                TotalCount = query.Count(),
                Items = query.Skip(skipCount).Take(search.PerPage).Select(x => new UserDto
                {
                    Id = x.Id,
                    FirstName = x.FirstName,
                    LastName = x.LastName,
                    Username = x.Username,
                    Email = x.Email,
                    RoleName = x.Role.RoleName,
                    Movies = x.UserMovies.Select(m => new UserMovieDto
                    {
                        Name = m.Movie.Name
                    })
                }).ToList()
            };

            return response;
        }
    }
}
