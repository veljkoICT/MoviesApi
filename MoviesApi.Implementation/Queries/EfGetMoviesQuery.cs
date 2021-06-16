using Microsoft.EntityFrameworkCore;
using MoviesApi.Application.DataTransfer;
using MoviesApi.Application.Exceptions;
using MoviesApi.Application.Queries;
using MoviesApi.Application.Searches;
using MoviesApi.DataAccess;
using MoviesApi.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MoviesApi.Implementation.Queries
{
    public class EfGetMoviesQuery : IGetMoviesQuery
    {
        private readonly MoviesApiContext _context;
        public EfGetMoviesQuery(MoviesApiContext context)
        {
            _context = context;
        }
        public int Id => 30;

        public string Name => "Movies serach";

        public PagedResponse<MovieSearchDto> Execute(MovieSearch search)
        {
            var query = _context.Movies
                .Include(m => m.Category)
                .Include(m => m.FilmDirector)
                .Include(m => m.MovieActors)
                    .ThenInclude(ma => ma.Actor).AsQueryable();

            if (!string.IsNullOrEmpty(search.Name) || !string.IsNullOrWhiteSpace(search.Name))
            {
                query = query.Where(
                    x => x.Name.ToLower().Contains(search.Name.ToLower()));
            }
            var skipCount = search.PerPage * (search.Page - 1);

            var response = new PagedResponse<MovieSearchDto>
            {
                CurrentPage = search.Page,
                ItemsPerPage = search.PerPage,
                TotalCount = query.Count(),
                Items = query.Skip(skipCount).Take(search.PerPage).Select(x => new MovieSearchDto
                {
                    Id = x.Id,
                    Name = x.Name,
                    Duration = x.Duration,
                    ReleaseDate = x.ReleaseDate,
                    CategoryName = x.Category.Name,
                    FilmDirectorName = x.FilmDirector.FirstName + " " + x.FilmDirector.LastName,
                    Description = x.Description,
                    Available = x.Available,
                    Actors = x.MovieActors.Select(x => new ActorMovieDto
                    {
                        FirstName = x.Actor.FirstName,
                        LastName = x.Actor.LastName
                    })
                }).ToList()
            };

            return response;
        }
    }
}
