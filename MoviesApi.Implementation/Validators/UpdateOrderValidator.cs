using FluentValidation;
using MoviesApi.Application.DataTransfer;
using MoviesApi.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MoviesApi.Implementation.Validators
{
    public class UpdateOrderValidator : AbstractValidator<UpdateOrderDto>
    {
        public UpdateOrderValidator(MoviesApiContext _context)
        {
            RuleFor(m => m.EndDate)
            .NotEmpty().WithMessage("End date is required")
            .GreaterThan(m => DateTime.Now)
                            .WithMessage("End date must be in future");

            RuleFor(x => x.UserId).NotEmpty().WithMessage("User id is required!")
               .DependentRules(() =>
               {
                   RuleFor(x => x.UserId).Must(userId => _context.Users.Any(x => x.Id == userId)).WithMessage("This id is not defined");
               });
            RuleFor(x => x.MovieId).NotEmpty().WithMessage("Movie id director is required!")
                .DependentRules(() =>
                {
                    RuleFor(x => x.MovieId).Must(movieId => _context.Movies.Any(x => x.Id == movieId)).WithMessage("This id is not defined");
                });
        }
    }
}
