using MoviesApi.Application.Comands;
using MoviesApi.Application.Exceptions;
using MoviesApi.DataAccess;
using MoviesApi.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MoviesApi.Implementation.Commands
{
    public class EfDeleteMovieCommand : IDeleteMovieCommand
    {
        private readonly MoviesApiContext _context;
        public EfDeleteMovieCommand(MoviesApiContext context)
        {
            _context = context;
        }

        public int Id => 28;

        public string Name => "Delete movie";

        public void Execute(int request)
        {
            var movie = _context.Movies.Find(request);

            if (movie == null)
                throw new EntityNotFoundException(request, typeof(Movie));

            movie.IsActive = false;
            movie.IsDeleted = true;
            movie.DeletedAt = DateTime.Now;

            var movieActors = _context.MovieActors.Where(x => x.MovieId == request).ToList();

            foreach(var ma in movieActors)
            {
                ma.IsActive = false;
                ma.IsDeleted = true;
                ma.DeletedAt = DateTime.Now;
            }

            _context.SaveChanges();
        }
    }
}
