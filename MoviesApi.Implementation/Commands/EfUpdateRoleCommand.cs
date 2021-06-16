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
    public class EfUpdateRoleCommand : IUpdateRoleCommand
    {
        private readonly MoviesApiContext _context;
        private readonly UpdateRoleValidator _validator;
        public EfUpdateRoleCommand(MoviesApiContext context, UpdateRoleValidator validator)
        {
            _context = context;
            _validator = validator;
        }

        public int Id => 3;

        public string Name => "Role update";

        public void Execute(RoleDto request)
        {
            _validator.ValidateAndThrow(request);

            var role = _context.Roles.Find(request.Id);

            if(role == null)
                throw new EntityNotFoundException(request.Id, typeof(Role));

            role.RoleName = request.RoleName;

            _context.SaveChanges();
        }
    }
}
