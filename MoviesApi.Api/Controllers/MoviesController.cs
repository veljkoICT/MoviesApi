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
    public class MoviesController : ControllerBase
    {
        private readonly MoviesApiContext _context;
        private readonly UseCaseExecutor _executor;
        public MoviesController(MoviesApiContext context, UseCaseExecutor executor)
        {
            _context = context;
            _executor = executor;
        }
        // GET: api/<MoviesController>
        [HttpGet]
        public IActionResult Get([FromQuery] MovieSearch search, [FromServices] IGetMoviesQuery query)
        {
            return Ok(_executor.ExecuteQuery(query, search));
        }

        // GET api/<MoviesController>/5
        [HttpGet("{id}")]
        public IActionResult Get([FromRoute] int id, [FromServices] IGetOneMovieQuery query)
        {
            return Ok(_executor.ExecuteQuery(query, id));
        }

        // POST api/<MoviesController>
        [HttpPost]
        public IActionResult Post([FromBody] InsertMovieDto dto, [FromServices] ICreateMovieCommand command)
        {
            _executor.ExecuteCommand(command, dto);
            return NoContent();
        }

        // PUT api/<MoviesController>/5
        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody] MovieDto dto, [FromServices] IUpdateMovieCommand command)
        {
            dto.Id = id;

            _executor.ExecuteCommand(command, dto);
            return NoContent();
        }

        // DELETE api/<MoviesController>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(int id, [FromServices] IDeleteMovieCommand command)
        {
            _executor.ExecuteCommand(command, id);
            return NoContent();
        }
    }
}
