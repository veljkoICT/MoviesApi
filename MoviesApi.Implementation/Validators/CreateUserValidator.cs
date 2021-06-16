using FluentValidation;
using MoviesApi.Application.DataTransfer;
using MoviesApi.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MoviesApi.Implementation.Validators
{
    public class CreateUserValidator : AbstractValidator<InsertUserDto>
    {
        public CreateUserValidator(MoviesApiContext context)
        {
            RuleFor(x => x.FirstName).NotEmpty().WithMessage("FirstName is required!");
            RuleFor(x => x.LastName).NotEmpty().WithMessage("LastName is required!");

            RuleFor(x => x.Username).NotEmpty().WithMessage("Username is required").DependentRules(() =>
            {
                RuleFor(x => x.Username).Must((user, username) => !context.Users.Any(x => x.Username == username && x.Id != user.Id))
                .WithMessage("This username is already taken");
            });

            RuleFor(x => x.Email).NotEmpty().WithMessage("Email is required").DependentRules(() =>
            {
                RuleFor(x => x.Email).Must((user, email) => !context.Users.Any(x => x.Email == email && x.Id != user.Id))
                .WithMessage("This email is already taken");
            });
        }
    }
}
