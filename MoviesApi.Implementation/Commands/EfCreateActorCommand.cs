using FluentValidation;
using MoviesApi.Application.Comands;
using MoviesApi.Application.DataTransfer;
using MoviesApi.DataAccess;
using MoviesApi.Domain;
using MoviesApi.Implementation.Validators;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Implementation.Commands
{
    public class EfCreateActorCommand : ICreateActorCommand
    {
        private readonly MoviesApiContext _context;
        private readonly CreateActorValidator _validator;
        public EfCreateActorCommand(MoviesApiContext context, CreateActorValidator validator)
        {
            _context = context;
            _validator = validator;
        }
        public int Id => 13;

        public string Name => "Insert actor";

        public void Execute(ActorDto request)
        {
            _validator.ValidateAndThrow(request);

            var actor = new Actor
            {
                FirstName = request.FirstName,
                LastName = request.LastName,
                DateOfBirth = request.DateOfBirth,
                Biography = request.Biography,
            };

            _context.Actors.Add(actor);
            _context.SaveChanges();
        }
    }
}
