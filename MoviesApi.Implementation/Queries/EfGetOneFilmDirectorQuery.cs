using MoviesApi.Application.DataTransfer;
using MoviesApi.Application.Exceptions;
using MoviesApi.Application.Queries;
using MoviesApi.DataAccess;
using MoviesApi.Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Implementation.Queries
{
    public class EfGetOneFilmDirectorQuery : IGetOneFilmDirectorQuery
    {
        private readonly MoviesApiContext _context;
        public EfGetOneFilmDirectorQuery(MoviesApiContext context)
        {
            _context = context;
        }
        public int Id => 17;

        public string Name => "Get film director by Id";

        public FilmDirectorDto Execute(int search)
        {
            var filmDirector = _context.FilmDirectors.Find(search);

            if (filmDirector == null)
                throw new EntityNotFoundException(search, typeof(FilmDirector));

            return new FilmDirectorDto
            {
                Id = filmDirector.Id,
                FirstName = filmDirector.FirstName,
                LastName = filmDirector.LastName,
                DateOfBirth = filmDirector.DateOfBirth,
                Biography = filmDirector.Biography
            };
        }
    }
}
