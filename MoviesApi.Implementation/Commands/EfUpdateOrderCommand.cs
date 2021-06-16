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
    public class EfUpdateOrderCommand : IUpdateOrderCommand
    {
        private readonly MoviesApiContext _context;
        private readonly UpdateOrderValidator _validator;
        public EfUpdateOrderCommand(MoviesApiContext context, UpdateOrderValidator validator)
        {
            _context = context;
            _validator = validator;
        }
        public int Id => 43;

        public string Name => "Update order";

        public void Execute(UpdateOrderDto request)
        {
            var order = _context.UserMovies.Find(request.Id);

            if (order == null)
                throw new EntityNotFoundException(request.Id, typeof(UserMovie));

            _validator.ValidateAndThrow(request);

            order.MovieId = request.MovieId;
            order.UserId = request.UserId;
            order.EndDate = request.EndDate;

            _context.SaveChanges();
        }
    }
}
