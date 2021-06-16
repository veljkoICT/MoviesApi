using MoviesApi.Application.Comands;
using MoviesApi.Application.DataTransfer;
using MoviesApi.Application.Exceptions;
using MoviesApi.DataAccess;
using MoviesApi.Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Implementation.Commands
{
    public class EfDeleteCategoryCommand : IDeleteCategoryCommand
    {
        private readonly MoviesApiContext _context;
        public EfDeleteCategoryCommand(MoviesApiContext context)
        {
            _context = context;
        }

        public int Id => 7;

        public string Name => "Deleting category";

        public void Execute(int request)
        {
            var category = _context.Categories.Find(request);

            if (category == null)
                throw new EntityNotFoundException(request, typeof(Category));

            category.IsActive = false;
            category.IsDeleted = true;
            category.DeletedAt = DateTime.Now;

            _context.SaveChanges();
        }
    }
}
