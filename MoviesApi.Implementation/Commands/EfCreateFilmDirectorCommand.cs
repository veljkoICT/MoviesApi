using FluentValidation;
using MoviesApi.Application.Comands;
using MoviesApi.Application.DataTransfer;
using MoviesApi.DataAccess;
using MoviesApi.Domain;
using MoviesApi.Implementation.Validators;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Implementation.Commands
{
    public class EfCreateFilmDirectorCommand : ICreateFilmDirectorCommand
    {
        private readonly MoviesApiContext _context;
        private readonly CreateFilmDirectorValidator _validator;
        public EfCreateFilmDirectorCommand(MoviesApiContext context, CreateFilmDirectorValidator validator)
        {
            _context = context;
            _validator = validator;
        }

        public int Id => 18;

        public string Name => "Create Film director";

        public void Execute(FilmDirectorDto request)
        {
            _validator.ValidateAndThrow(request);

            var filmDirector = new FilmDirector
            {
                FirstName = request.FirstName,
                LastName = request.LastName,
                DateOfBirth = request.DateOfBirth,
                Biography = request.Biography,
            };

            _context.FilmDirectors.Add(filmDirector);
            _context.SaveChanges();
        }
    }
}
