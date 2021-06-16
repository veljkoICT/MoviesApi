using FluentValidation;
using MoviesApi.Application.DataTransfer;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Implementation.Validators
{
    public class UpdateActorValidator : AbstractValidator<ActorDto>
    {
        public UpdateActorValidator()
        {
            RuleFor(x => x.FirstName).NotEmpty().WithMessage("FirstName is required!");
            RuleFor(x => x.LastName).NotEmpty().WithMessage("LastName is required!");
            RuleFor(x => x.DateOfBirth).NotEmpty().WithMessage("DateOfBirth is required!").LessThan(p => DateTime.Now).WithMessage("Date must be in past!");

            RuleFor(x => x.Biography).NotEmpty().WithMessage("Biography is required!");
        }
    }
}
