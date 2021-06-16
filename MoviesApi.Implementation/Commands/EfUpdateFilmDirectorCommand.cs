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
    public class EfUpdateFilmDirectorCommand : IUpdateFilmDirectorCommand
    {
        private readonly MoviesApiContext _context;
        private readonly UpdateFilmDirectorValidator _validator;
        public EfUpdateFilmDirectorCommand(MoviesApiContext context, UpdateFilmDirectorValidator validator)
        {
            _context = context;
            _validator = validator;
        }
        public int Id => 19;

        public string Name => "Update film director";

        public void Execute(FilmDirectorDto request)
        {
            var filmDirector = _context.FilmDirectors.Find(request.Id);

            if (filmDirector == null)
                throw new EntityNotFoundException(request.Id, typeof(FilmDirector));

            _validator.ValidateAndThrow(request);

            filmDirector.FirstName = request.FirstName;
            filmDirector.LastName = request.LastName;
            filmDirector.Biography = request.Biography;
            filmDirector.DateOfBirth = request.DateOfBirth;

            _context.SaveChanges();
        }
    }
}
