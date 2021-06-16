using MoviesApi.Application.Comands;
using MoviesApi.Application.Exceptions;
using MoviesApi.DataAccess;
using MoviesApi.Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Implementation.Commands
{
    public class EfDeleteRoleCommand : IDeleteRoleCommand
    {
        private readonly MoviesApiContext _context;
        public EfDeleteRoleCommand(MoviesApiContext context)
        {
            _context = context;
        }

        public int Id => 2;

        public string Name => "Deleting role";

        public void Execute(int request)
        {
            var role = _context.Roles.Find(request);

            if (role == null)
                throw new EntityNotFoundException(request, typeof(Role));

            role.IsActive = false;
            role.IsDeleted = true;
            role.DeletedAt = DateTime.Now;

            _context.SaveChanges();
        }
    }
}
