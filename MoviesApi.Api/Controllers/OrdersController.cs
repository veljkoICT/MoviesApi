using Bogus;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using MoviesApi.Application;
using MoviesApi.Application.Comands;
using MoviesApi.Application.DataTransfer;
using MoviesApi.Application.Queries;
using MoviesApi.Application.Searches;
using MoviesApi.DataAccess;
using MoviesApi.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace MoviesApi.Api.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class OrdersController : ControllerBase
    {
        private readonly MoviesApiContext _context;
        private readonly UseCaseExecutor _executor;
        public OrdersController(MoviesApiContext context, UseCaseExecutor executor)
        {
            _context = context;
            _executor = executor;
        }
        // GET: api/<OrdersController>
        [HttpGet]
        public IActionResult Get([FromQuery] OrderSearch search, [FromServices] IGetOrderQuery query)
        {
            //var movieIds = _context.Movies.Select(x => x.Id).ToList();
            //var userIds = _context.Users.Select(x => x.Id).ToList();


            //var userMoviesFaker = new Faker<UserMovie>()
            //    .RuleFor(x => x.EndDate, x => x.Date.Future())
            //    .RuleFor(x => x.MovieId, x => x.PickRandom(movieIds))
            //    .RuleFor(x => x.UserId, x => x.PickRandom(userIds));

            //var userMovies = userMoviesFaker.Generate(50);
            //_context.UserMovies.AddRange(userMovies);
            //_context.SaveChanges();
            return Ok(_executor.ExecuteQuery(query, search));
        }

        // GET api/<OrdersController>/5
        [HttpGet("{id}")]
        public IActionResult Get([FromRoute] int id, [FromServices] IGetOneOrderQuery query)
        {
            return Ok(_executor.ExecuteQuery(query, id));
        }

        // POST api/<OrdersController>
        [HttpPost]
        public IActionResult Post([FromBody] InsertOrderDto dto, [FromServices] ICreateOrderCommand command)
        {
            _executor.ExecuteCommand(command, dto);
            return NoContent();
        }

        // PUT api/<OrdersController>/5
        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody] UpdateOrderDto dto, [FromServices] IUpdateOrderCommand command)
        {
            dto.Id = id;

            _executor.ExecuteCommand(command, dto);
            return NoContent();
        }

        // DELETE api/<OrdersController>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(int id, [FromServices] IDeleteOrderCommand command)
        {
            _executor.ExecuteCommand(command, id);
            return NoContent();
        }
    }
}
