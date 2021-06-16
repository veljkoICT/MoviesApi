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
    public class EfGetOrderQuery : IGetOrderQuery
    {
        private readonly MoviesApiContext _context;
        public EfGetOrderQuery(MoviesApiContext context)
        {
            _context = context;
        }

        public int Id => 50;

        public string Name => "Search Order by username";

        public PagedResponse<OrderDto> Execute(OrderSearch search)
        {
            var query = _context.UserMovies
                .Include(um => um.User)
                .Include(um => um.Movie).AsQueryable();

            if (!string.IsNullOrEmpty(search.Username) || !string.IsNullOrWhiteSpace(search.Username))
            {
                query = query.Where(
                    x => x.User.Username.ToLower().Contains(search.Username.ToLower()));
            }

            var skipCount = search.PerPage * (search.Page - 1);

            var response = new PagedResponse<OrderDto>
            {
                CurrentPage = search.Page,
                ItemsPerPage = search.PerPage,
                TotalCount = query.Count(),
                Items = query.Skip(skipCount).Take(search.PerPage).Select(x => new OrderDto
                {
                    Id = x.Id,
                    User = x.User.FirstName + " " + x.User.LastName,
                    Username = x.User.Username,
                    MovieName = x.Movie.Name,
                    EndDate = x.EndDate
                }).ToList()
            };

            return response;
        }
    }
}
