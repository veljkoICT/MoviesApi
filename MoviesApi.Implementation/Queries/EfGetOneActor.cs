using Microsoft.EntityFrameworkCore;
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
    public class EfGetOneActor : IGetOneActor
    {
        private readonly MoviesApiContext _context;
        public EfGetOneActor(MoviesApiContext context)
        {
            _context = context;
        }
        public int Id => 12;

        public string Name => "Get actor by Id";

        public ActorDto Execute(int search)
        {
            var actor = _context.Actors.Find(search);

            if (actor == null)
                throw new EntityNotFoundException(search, typeof(Actor));

            return new ActorDto
            {
                Id = actor.Id,
                FirstName = actor.FirstName,
                LastName = actor.LastName,
                DateOfBirth = actor.DateOfBirth,
                Biography = actor.Biography
            };
        }
    }
}
