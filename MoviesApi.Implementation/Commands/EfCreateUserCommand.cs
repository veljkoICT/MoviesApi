using FluentValidation;
using MoviesApi.Application.Comands;
using MoviesApi.Application.DataTransfer;
using MoviesApi.Application.Email;
using MoviesApi.DataAccess;
using MoviesApi.Domain;
using MoviesApi.Implementation.Validators;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Implementation.Commands
{
    public class EfCreateUserCommand : ICreateUserCommand
    {
        private readonly MoviesApiContext _context;
        private readonly CreateUserValidator _validator;
        private readonly IEmailSender _sender;
        public EfCreateUserCommand(MoviesApiContext context, CreateUserValidator validator, IEmailSender sender)
        {
            _context = context;
            _validator = validator;
            _sender = sender;
        }
        public int Id => 25;

        public string Name => "Insert user";

        public void Execute(InsertUserDto request)
        {
            _validator.ValidateAndThrow(request);

            var user = new User
            {
                FirstName = request.FirstName,
                LastName = request.LastName,
                Email = request.Email,
                Username = request.Username,
                RoleId = request.RoleId
            };

            _context.Users.Add(user);
            _context.SaveChanges();

            _sender.Send(new SendEmailDto
            {
                Content = "<h1>Successfull registration!</h1>",
                SendTo = request.Email,
                Subject = "Registration"
            });
        }
    }
}
