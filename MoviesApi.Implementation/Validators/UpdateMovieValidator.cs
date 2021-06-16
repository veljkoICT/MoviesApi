using FluentValidation;
using MoviesApi.Application.DataTransfer;
using MoviesApi.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MoviesApi.Implementation.Validators
{
    public class UpdateMovieValidator : AbstractValidator<MovieDto>
    {
        public UpdateMovieValidator(MoviesApiContext _context)
        {
            RuleFor(x => x.Name).NotEmpty().WithMessage("Name is required!");
            RuleFor(x => x.Duration).NotEmpty().WithMessage("Duration is required!");
            RuleFor(x => x.Description).NotEmpty().WithMessage("Description is required!");
            RuleFor(x => x.CategoryId).NotEmpty().WithMessage("Category is required!")
                .DependentRules(() =>
                {
                    RuleFor(x => x.CategoryId).Must(categoryId => _context.Categories.Any(x => x.Id == categoryId)).WithMessage("This id is not defined");
                });
            RuleFor(x => x.FilmDirectorId).NotEmpty().WithMessage("Film director is required!")
                .DependentRules(() =>
                {
                    RuleFor(x => x.FilmDirectorId).Must(filmId => _context.FilmDirectors.Any(x => x.Id == filmId)).WithMessage("This id is not defined");
                });
        }
    }
}
