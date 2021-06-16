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
    [Route("api/[controller]")]
    [ApiController]
    public class ActorsController : ControllerBase
    {
        private readonly MoviesApiContext _context;
        private readonly UseCaseExecutor _executor;
        public ActorsController(MoviesApiContext context, UseCaseExecutor executor)
        {
            _context = context;
            _executor = executor;
        }

        // GET: api/<ActorsController>
        [HttpGet]
        public IActionResult Get([FromQuery] ActorSearch search, [FromServices] IGetActorsQuery query)
        {
            //var actorFaker = new Faker<Actor>();

            //actorFaker.RuleFor(x => x.FirstName, x => x.Name.FirstName());
            //actorFaker.RuleFor(x => x.LastName, x => x.Name.LastName());
            //actorFaker.RuleFor(x => x.DateOfBirth, x => x.Date.Past());
            //actorFaker.RuleFor(x => x.Biography, x => x.Commerce.ProductAdjective());

            //var actors = actorFaker.Generate(40);
            //_context.Actors.AddRange(actors);
            //_context.SaveChanges();

            return Ok(_executor.ExecuteQuery(query, search));
        }

        // GET api/<ActorsController>/5
        [HttpGet("{id}")]
        public IActionResult Get([FromRoute] int id, [FromServices] IGetOneActor query)
        {
            return Ok(_executor.ExecuteQuery(query, id));
        }

        // POST api/<ActorsController>
        [HttpPost]
        public IActionResult Post([FromBody] ActorDto dto, [FromServices] ICreateActorCommand command)
        {
            _executor.ExecuteCommand(command, dto);
            return NoContent();
        }

        // PUT api/<ActorsController>/5
        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody] ActorDto dto, [FromServices] IUpdateActorCommand command)
        {
            dto.Id = id;

            _executor.ExecuteCommand(command, dto);
            return NoContent();
        }

        // DELETE api/<ActorsController>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(int id, [FromServices] IDeleteActorCommand command)
        {
            _executor.ExecuteCommand(command, id);
            return NoContent();
        }
    }
}
