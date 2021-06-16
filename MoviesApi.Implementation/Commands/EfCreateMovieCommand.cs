using FluentValidation;
using MoviesApi.Application.Comands;
using MoviesApi.Application.DataTransfer;
using MoviesApi.Application.Exceptions;
using MoviesApi.DataAccess;
using MoviesApi.Domain;
using MoviesApi.Implementation.Validators;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MoviesApi.Implementation.Commands
{
    public class EfCreateMovieCommand : ICreateMovieCommand
    {
        private readonly MoviesApiContext _context;
        private readonly CreateMovieValidator _validator;
        public EfCreateMovieCommand(MoviesApiContext context, CreateMovieValidator validator)
        {
            _context = context;
            _validator = validator;
        }

        public int Id => 26;

        public string Name => "Add Movie";

        public void Execute(InsertMovieDto request)
        {
            var actorIds = _context.Actors.Select(x => x.Id).ToList();

            bool hasActorIds = !request.ActorIds.Except(actorIds).Any();
            if(!hasActorIds)
                throw new EntityNotFoundException(request.CategoryId, typeof(Movie));

            

            var movie = new Movie
            {
                Name = request.Name,
                Duration = request.Duration,
                ReleaseDate = request.ReleaseDate,
                CategoryId = request.CategoryId,
                FilmDirectorId = request.FilmDirectorId,
                Description = request.Description,
                Available = request.Available
            };

            _context.Movies.Add(movie);
            _context.SaveChanges();
            var movieId = movie.Id;

            List<MovieActor> actorMovie = new List<MovieActor>();
            foreach(var item in request.ActorIds)
            {
                actorMovie.Add(new MovieActor
                {
                    MovieId = movieId,
                    ActorId = item
                });
            }
            _context.MovieActors.AddRange(actorMovie);
            _context.SaveChanges();
        }
    }
}
