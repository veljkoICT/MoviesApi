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
    public class FilmDirectorsController : ControllerBase
    {
        private readonly MoviesApiContext _context;
        private readonly UseCaseExecutor _executor;
        public FilmDirectorsController(MoviesApiContext context, UseCaseExecutor executor)
        {
            _context = context;
            _executor = executor;
        }

        // GET: api/<FilmDirectorsController>
        [HttpGet]
        public IActionResult Get([FromQuery] ActorSearch search, [FromServices] IGetFilmDirectorsQuery query)
        {
            //var filmDirectorFaker = new Faker<FilmDirector>();

            //filmDirectorFaker.RuleFor(x => x.FirstName, x => x.Name.FirstName());
            //filmDirectorFaker.RuleFor(x => x.LastName, x => x.Name.LastName());
            //filmDirectorFaker.RuleFor(x => x.DateOfBirth, x => x.Date.Past());
            //filmDirectorFaker.RuleFor(x => x.Biography, x => x.Commerce.ProductAdjective());

            //var filmDirectors = filmDirectorFaker.Generate(40);
            //_context.FilmDirectors.AddRange(filmDirectors);
            //_context.SaveChanges();

            return Ok(_executor.ExecuteQuery(query, search));
        }

        // GET api/<FilmDirectorsController>/5
        [HttpGet("{id}")]
        public IActionResult Get([FromRoute] int id, [FromServices] IGetOneFilmDirectorQuery query)
        {
            return Ok(_executor.ExecuteQuery(query, id));
        }

        // POST api/<FilmDirectorsController>
        [HttpPost]
        public IActionResult Post([FromBody] FilmDirectorDto dto, [FromServices] ICreateFilmDirectorCommand command)
        {
            _executor.ExecuteCommand(command, dto);
            return NoContent();
        }

        // PUT api/<FilmDirectorsController>/5
        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody] FilmDirectorDto dto, [FromServices] IUpdateFilmDirectorCommand command)
        {
            dto.Id = id;

            _executor.ExecuteCommand(command, dto);
            return NoContent();
        }

        // DELETE api/<FilmDirectorsController>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(int id, [FromServices] IDeleteFilmDirectorCommand command)
        {
            _executor.ExecuteCommand(command, id);
            return NoContent();
        }
    }
}
