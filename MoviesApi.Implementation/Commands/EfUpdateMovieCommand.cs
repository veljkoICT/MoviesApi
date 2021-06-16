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
    public class EfUpdateMovieCommand : IUpdateMovieCommand
    {
        private readonly MoviesApiContext _context;
        private readonly UpdateMovieValidator _validator;
        public EfUpdateMovieCommand(MoviesApiContext context, UpdateMovieValidator validator)
        {
            _context = context;
            _validator = validator;
        }

        public int Id => 27;

        public string Name => "Update movie";

        public void Execute(MovieDto request)
        {
            var movie = _context.Movies.Find(request.Id);

            if (movie == null)
                throw new EntityNotFoundException(request.Id, typeof(Movie));

            _validator.ValidateAndThrow(request);

            movie.Name = request.Name;
            movie.Duration = request.Duration;
            movie.Description = request.Description;
            movie.ReleaseDate = request.ReleaseDate;
            movie.CategoryId = request.CategoryId;
            movie.FilmDirectorId = request.FilmDirectorId;
            movie.Available = request.Available;
            
            _context.SaveChanges();
        }
    }
}
