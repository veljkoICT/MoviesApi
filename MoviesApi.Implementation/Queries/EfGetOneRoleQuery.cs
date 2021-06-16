using MoviesApi.Application.DataTransfer;
using MoviesApi.Application.Exceptions;
using MoviesApi.Application.Queries;
using MoviesApi.DataAccess;
using MoviesApi.Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Implementation.Queries
{
    public class EfGetOneRoleQuery : IGetOneRoleQuery
    {
        private readonly MoviesApiContext _context;
        public EfGetOneRoleQuery(MoviesApiContext context)
        {
            _context = context;
        }

        public int Id => 5;

        public string Name => "Get one role";

        public RoleDto Execute(int search)
        {
            var role = _context.Roles.Find(search);

            if(role == null)
                throw new EntityNotFoundException(search, typeof(Role));

            return new RoleDto
            {
                Id = role.Id,
                RoleName = role.RoleName
            };
        }
    }
}
