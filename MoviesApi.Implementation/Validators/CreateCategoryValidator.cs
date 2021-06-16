    using FluentValidation;
using MoviesApi.Application.DataTransfer;
using MoviesApi.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MoviesApi.Implementation.Validators
{
    public class CreateCategoryValidator : AbstractValidator<CategoryDto>
    {
        public CreateCategoryValidator(MoviesApiContext context)
        {
            RuleFor(x => x.Name)
               .NotEmpty().Must(name => !context.Categories.Any(g => g.Name == name)).WithMessage("Name must be unique!");
        }
    }
}
