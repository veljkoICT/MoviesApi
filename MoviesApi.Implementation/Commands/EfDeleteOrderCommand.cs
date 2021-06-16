using MoviesApi.Application.Comands;
using MoviesApi.Application.Exceptions;
using MoviesApi.DataAccess;
using MoviesApi.Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Implementation.Commands
{
    public class EfDeleteOrderCommand : IDeleteOrderCommand
    {
        private readonly MoviesApiContext _context;
        public EfDeleteOrderCommand(MoviesApiContext context)
        {
            _context = context;
        }
        public int Id => 44;

        public string Name => "Delete order";

        public void Execute(int request)
        {
            var order = _context.UserMovies.Find(request);

            if (order == null)
                throw new EntityNotFoundException(request, typeof(UserMovie));

            order.IsActive = false;
            order.IsDeleted = true;
            order.DeletedAt = DateTime.Now;

            _context.SaveChanges();
        }
    }
}
