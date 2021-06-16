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
    public class EfCreateRoleCommand : ICreateRoleCommand
    {
        private readonly MoviesApiContext _context;
        private readonly CreateRoleValidator _validator;

        public EfCreateRoleCommand(MoviesApiContext context, CreateRoleValidator validator)
        {
            _context = context;
            _validator = validator;
        }

        public int Id => 1;

        public string Name => "Create New Role using EF";

        public void Execute(RoleDto request)
        {
            _validator.ValidateAndThrow(request);

            var role = new Role
            {
                RoleName = request.RoleName
            };

            _context.Roles.Add(role);
            _context.SaveChanges();
        }
    }
}
