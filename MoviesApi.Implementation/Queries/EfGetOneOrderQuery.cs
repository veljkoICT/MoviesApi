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
    public class EfGetOneOrderQuery : IGetOneOrderQuery
    {
        private readonly MoviesApiContext _context;
        public EfGetOneOrderQuery(MoviesApiContext context)
        {
            _context = context;
        }
        public int Id => 41;

        public string Name => "Get order by id";

        public OrderDto Execute(int search)
        {
            var movie = _context.UserMovies.Find(search);

            if (movie == null)
                throw new EntityNotFoundException(search, typeof(UserMovie));
            
            var query = _context.UserMovies
                .Include(um => um.User)
                .Include(um => um.Movie)
                .Select(x => new OrderDto
                {
                    Id = x.Id,
                    User = x.User.FirstName + " " + x.User.LastName,
                    Username = x.User.Username,
                    EndDate = x.EndDate,
                    MovieName = x.Movie.Name
                })
                .Where(um => um.Id == search).FirstOrDefault();

            return query;
        }
    }
}
