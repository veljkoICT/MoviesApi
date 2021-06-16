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
    public class EfUpdateUserCommand : IUpdateUserCommand
    {        
        private readonly MoviesApiContext _context;
        private readonly UpdateUserValidator _validator;

        public EfUpdateUserCommand(MoviesApiContext context, UpdateUserValidator valdiator)
        {
            _context = context;
            _validator = valdiator;
        }
        public int Id => 24;

        public string Name => "Update user";

        public void Execute(UserDto request)
        {
            var user = _context.Users.Find(request.Id);

            if (user == null)
                throw new EntityNotFoundException(request.Id, typeof(User));

            _validator.ValidateAndThrow(request);

            user.FirstName = request.FirstName;
            user.LastName = request.LastName;
            user.Email = request.Email;
            user.Username = request.Username;

            _context.SaveChanges();
        }
    }
}
