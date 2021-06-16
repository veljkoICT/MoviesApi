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
    public class EfGetLoggersQuery : IGetLoggersQuery
    {
        private readonly MoviesApiContext _context;
        public EfGetLoggersQuery(MoviesApiContext context)
        {
            _context = context;
        }
        public int Id => 51;

        public string Name => "Search Loggers";

        public PagedResponse<UseCaseLoggerDto> Execute(UseCaseLoggerSearch search)
        {
            var query = _context.UseCaseLogs.AsQueryable();

            if (!string.IsNullOrEmpty(search.Actor) || !string.IsNullOrWhiteSpace(search.Actor))
            {
                query = query.Where(
                    x => x.Actor.ToLower().Contains(search.Actor.ToLower()));
            }

            var skipCount = search.PerPage * (search.Page - 1);

            var response = new PagedResponse<UseCaseLoggerDto>
            {
                CurrentPage = search.Page,
                ItemsPerPage = search.PerPage,
                TotalCount = query.Count(),
                Items = query.Skip(skipCount).Take(search.PerPage).Select(x => new UseCaseLoggerDto
                {
                    Id = x.Id,
                    Date = x.Date,
                    UseCaseName = x.UseCaseName,
                    Data = x.Data,
                    Actor = x.Actor
                }).ToList()
            };

            return response;
        }
    }
}
