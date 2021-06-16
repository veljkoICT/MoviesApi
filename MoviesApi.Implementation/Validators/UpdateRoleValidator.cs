using FluentValidation;
using MoviesApi.Application.DataTransfer;
using MoviesApi.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MoviesApi.Implementation.Validators
{
    public class UpdateRoleValidator : AbstractValidator<RoleDto>
    {
        public UpdateRoleValidator(MoviesApiContext context)
        {
            RuleFor(x => x.RoleName).NotEmpty().Must(name => !context.Roles.Any(g => g.RoleName == name)).WithMessage("Name must be unique!");
        }
    }
}
