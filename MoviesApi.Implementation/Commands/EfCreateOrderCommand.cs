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
    public class EfCreateOrderCommand : ICreateOrderCommand
    {
        private readonly MoviesApiContext _context;
        private readonly CreateOrderValidator _validator;
        public EfCreateOrderCommand(MoviesApiContext context, CreateOrderValidator validator)
        {
            _context = context;
            _validator = validator;
        }
        public int Id => 42;

        public string Name => "Insert Order";

        public void Execute(InsertOrderDto request)
        {
            _validator.ValidateAndThrow(request);

            var userMovie = new UserMovie
            {
                UserId = request.UserId,
                MovieId = request.MovieId,
                EndDate = request.EndDate
            };

            _context.UserMovies.Add(userMovie);
            _context.SaveChanges();
        }
    }
}
