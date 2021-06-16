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
    public class EfGetOneCategoryQuery : IGetOneCategoryQuery
    {
        private readonly MoviesApiContext _context;
        public EfGetOneCategoryQuery(MoviesApiContext context)
        {
            _context = context;
        }
        public int Id => 9;

        public string Name => "Get Category by Id";

        public CategoryDto Execute(int search)
        {
            var categoty = _context.Categories.Find(search);

            if (categoty == null)
                throw new EntityNotFoundException(search, typeof(Category));

            return new CategoryDto
            {
                Id = categoty.Id,
                Name = categoty.Name
            };
        }
    }
}
