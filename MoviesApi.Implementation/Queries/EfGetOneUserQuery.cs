using Microsoft.EntityFrameworkCore;
using MoviesApi.Application.DataTransfer;
using MoviesApi.Application.Exceptions;
using MoviesApi.Application.Queries;
using MoviesApi.DataAccess;
using MoviesApi.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MoviesApi.Implementation.Queries
{
    public class EfGetOneUserQuery : IGetOneUserQuery
    {
        private readonly MoviesApiContext _context;
        public EfGetOneUserQuery(MoviesApiContext context)
        {
            _context = context;
        }
        public int Id => 22;

        public string Name => "Get user by id";

        public UserDto Execute(int search)
        {
            var user = _context.Users
                .Include(x => x.Role)
                .Include(x => x.UserMovies)
                    .ThenInclude(um => um.Movie)
                .Select(x => new UserDto
                {
                    Id = x.Id,
                    FirstName = x.FirstName,
                    LastName = x.LastName,
                    Email = x.Email,
                    Username = x.Username,
                    RoleName = x.Role.RoleName,
                    Movies = x.UserMovies.Select( m => new UserMovieDto
                    {
                        Name = m.Movie.Name
                    })
                })
                .Where(x => x.Id == search).FirstOrDefault();

            if (user == null)
                throw new EntityNotFoundException(search, typeof(User));

            return user;
        }
    }
}
