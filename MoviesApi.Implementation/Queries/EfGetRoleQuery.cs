using MoviesApi.Application.DataTransfer;
using MoviesApi.Application.Queries;
using MoviesApi.Application.Searches;
using MoviesApi.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MoviesApi.Implementation.Queries
{
    public class EfGetRoleQuery : IGetRolesQuery
    {
        private readonly MoviesApiContext _context;
        public EfGetRoleQuery(MoviesApiContext context)
        {
            _context = context;
        }

        public int Id => 4;

        public string Name => "Roles search";

        public PagedResponse<RoleDto> Execute(RoleSearch search)
        {
            var query = _context.Roles.AsQueryable();
            if(!string.IsNullOrEmpty(search.Name) || !string.IsNullOrWhiteSpace(search.Name))
            {
                query = query.Where(x => x.RoleName.ToLower().Contains(search.Name.ToLower()));
            }

            var skipCount = search.PerPage * (search.Page - 1);

            var response = new PagedResponse<RoleDto>
            {
                CurrentPage = search.Page,
                ItemsPerPage = search.PerPage,
                TotalCount = query.Count(),
                Items = query.Skip(skipCount).Take(search.PerPage).Select(x => new RoleDto
                {
                    Id = x.Id,
                    RoleName = x.RoleName
                }).ToList()
            };

            return response;
        }
    }
}
