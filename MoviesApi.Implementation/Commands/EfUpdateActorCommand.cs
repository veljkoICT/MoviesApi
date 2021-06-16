using FluentValidation;
using MoviesApi.Application.Comands;
using MoviesApi.Application.DataTransfer;
using MoviesApi.Application.Exceptions;
using MoviesApi.DataAccess;
using MoviesApi.Domain;
using MoviesApi.Implementation.Validators;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Implementation.Commands
{
    public class EfUpdateActorCommand : IUpdateActorCommand
    {
        private readonly MoviesApiContext _context;
        private readonly UpdateActorValidator _validator;

        public EfUpdateActorCommand(MoviesApiContext context, UpdateActorValidator valdiator)
        {
            _context = context;
            _validator = valdiator;
        }
        public int Id => 15;

        public string Name => "Update actor";

        public void Execute(ActorDto request)
        {
            var actor = _context.Actors.Find(request.Id);

            if (actor == null)
                throw new EntityNotFoundException(request.Id, typeof(Actor));

            _validator.ValidateAndThrow(request);

            actor.FirstName = request.FirstName;
            actor.LastName = request.LastName;
            actor.Biography = request.Biography;
            actor.DateOfBirth = request.DateOfBirth;

            _context.SaveChanges();
        }
    }
}
