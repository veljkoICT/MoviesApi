using MoviesApi.Application.Comands;
using MoviesApi.Application.Exceptions;
using MoviesApi.DataAccess;
using MoviesApi.Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Implementation.Commands
{
    public class EfDeleteActorCommand : IDeleteActorCommand
    {
        private readonly MoviesApiContext _context;
        public EfDeleteActorCommand(MoviesApiContext context)
        {
            _context = context;
        }
        public int Id => 14;

        public string Name => "Delete Actor";

        public void Execute(int request)
        {
            var actor = _context.Actors.Find(request);

            if (actor == null)
                throw new EntityNotFoundException(request, typeof(Actor));

            actor.IsActive = false;
            actor.IsDeleted = true;
            actor.DeletedAt = DateTime.Now;

            _context.SaveChanges();
        }
    }
}
