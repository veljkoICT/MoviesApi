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
    public class EfUpdateCategoryCommand : IUpdateCategoryCommand
    {
        private readonly MoviesApiContext _context;
        private readonly UpdateCategoryValidator _validator;

        public EfUpdateCategoryCommand(MoviesApiContext context, UpdateCategoryValidator valdiator)
        {
            _context = context;
            _validator = valdiator;
        }

        public int Id => 8;

        public string Name => "Update category";

        public void Execute(CategoryDto request)
        {
            var category = _context.Categories.Find(request.Id);

            if (category == null)
                throw new EntityNotFoundException(request.Id, typeof(Category));

            _validator.ValidateAndThrow(request);

            category.Name = request.Name;
            _context.SaveChanges();
        }
    }
}
