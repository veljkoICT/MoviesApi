using Microsoft.EntityFrameworkCore;
using MoviesApi.Application.DataTransfer;
using MoviesApi.Application.Exceptions;
using MoviesApi.Application.Queries;
using MoviesApi.DataAccess;
using MoviesApi.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MoviesApi.Implementation.Queries
{
    public class EfGetOneMovieQuery : IGetOneMovieQuery
    {
        private readonly MoviesApiContext _context;
        public EfGetOneMovieQuery(MoviesApiContext context)
        {
            _context = context;
        }
        public int Id => 29;

        public string Name => "Get movie by id";

        public MovieSearchDto Execute(int search)
        {
            var movie = _context.Movies.Find(search);

            if (movie == null)
                throw new EntityNotFoundException(search, typeof(Movie));

            var query = _context.Movies                
                .Include(m => m.Category)
                .Include(m => m.FilmDirector)
                .Include(m => m.MovieActors)
                    .ThenInclude(ma => ma.Actor)
                .Select(x => new MovieSearchDto
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
                })
                .Where(m => m.Id == search).FirstOrDefault();

            return query;
        }
    }
}
