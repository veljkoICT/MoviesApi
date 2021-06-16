using MoviesApi.Application.Comands;
using MoviesApi.Application.Exceptions;
using MoviesApi.DataAccess;
using MoviesApi.Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Implementation.Commands
{
    public class EfDeleteFilmDirectorCommand : IDeleteFilmDirectorCommand
    {
        private readonly MoviesApiContext _context;
        public EfDeleteFilmDirectorCommand(MoviesApiContext context)
        {
            _context = context;
        }

        public int Id => 20;

        public string Name => "Delete film director";

        public void Execute(int request)
        {
            var filmDirector = _context.FilmDirectors.Find(request);

            if (filmDirector == null)
                throw new EntityNotFoundException(request, typeof(FilmDirector));

            filmDirector.IsActive = false;
            filmDirector.IsDeleted = true;
            filmDirector.DeletedAt = DateTime.Now;

            _context.SaveChanges();
        }
    }
}
