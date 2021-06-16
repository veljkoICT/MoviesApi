using MoviesApi.Application.DataTransfer;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Application.Queries
{
    public interface IGetOneFilmDirectorQuery : IQuery<int, FilmDirectorDto>
    {
    }
}
