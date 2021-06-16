using MoviesApi.Application.Comands;
using MoviesApi.Application.Exceptions;
using MoviesApi.DataAccess;
using MoviesApi.Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Implementation.Commands
{
    public class EfDeleteUserCommand : IDeleteUserCommand
    {
        private readonly MoviesApiContext _context;
        public EfDeleteUserCommand(MoviesApiContext context)
        {
            _context = context;
        }
        public int Id => 23;

        public string Name => "Delete user";

        public void Execute(int request)
        {
            var user = _context.Users.Find(request);

            if (user == null)
                throw new EntityNotFoundException(request, typeof(User));

            user.IsActive = false;
            user.IsDeleted = true;
            user.DeletedAt = DateTime.Now;

            _context.SaveChanges();
        }
    }
}
