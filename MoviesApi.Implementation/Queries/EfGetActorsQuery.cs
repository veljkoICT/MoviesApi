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
    public class EfGetActorsQuery : IGetActorsQuery
    {
        private readonly MoviesApiContext _context;
        public EfGetActorsQuery(MoviesApiContext context)
        {
            _context = context;
        }
        public int Id => 11;

        public string Name => "Actors search";

        public PagedResponse<ActorDto> Execute(ActorSearch search)
        {
            var query = _context.Actors.AsQueryable();
            if (!string.IsNullOrEmpty(search.FirstName) || !string.IsNullOrWhiteSpace(search.FirstName))
            {
                query = query.Where(
                    x => x.FirstName.ToLower().Contains(search.FirstName.ToLower()));
            }
            if (!string.IsNullOrEmpty(search.LastName) || !string.IsNullOrWhiteSpace(search.LastName))
            {
                query = query.Where(
                    x => x.LastName.ToLower().Contains(search.LastName.ToLower()));
            }

            var skipCount = search.PerPage * (search.Page - 1);

            var response = new PagedResponse<ActorDto>
            {
                CurrentPage = search.Page,
                ItemsPerPage = search.PerPage,
                TotalCount = query.Count(),
                Items = query.Skip(skipCount).Take(search.PerPage).Select(x => new ActorDto
                {
                    Id = x.Id,
                    FirstName = x.FirstName,
                    LastName = x.LastName,
                    Biography = x.Biography,
                    DateOfBirth = x.DateOfBirth
                }).ToList()
            };

            return response;
        }
    }
}
