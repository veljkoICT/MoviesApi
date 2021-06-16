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
    public class UsersController : ControllerBase
    {
        private readonly MoviesApiContext _context;
        private readonly UseCaseExecutor _executor;
        public UsersController(MoviesApiContext context, UseCaseExecutor executor)
        {
            _context = context;
            _executor = executor;
        }

        // GET: api/<UsersController>
        [HttpGet]
        public IActionResult Get([FromQuery] UserSearch search, [FromServices] IGetUsersQuery query)
        {
            //var roleIds = _context.Roles.Select(x => x.Id).ToList();

            //var userFaker = new Faker<User>();
            //userFaker.RuleFor(x => x.FirstName, x => x.Name.FirstName());
            //userFaker.RuleFor(x => x.LastName, x => x.Name.LastName());
            //userFaker.RuleFor(u => u.Email, (f, u) => f.Internet.Email(u.FirstName, u.LastName));
            //userFaker.RuleFor(u => u.Username, (f, u) => f.Internet.UserName(u.FirstName, u.LastName));
            //userFaker.RuleFor(x => x.RoleId, x => x.PickRandom(roleIds));

            //var users = userFaker.Generate(40);
            //_context.Users.AddRange(users);
            //_context.SaveChanges();

            return Ok(_executor.ExecuteQuery(query, search));
        }

        // GET api/<UsersController>/5
        [HttpGet("{id}")]
        public IActionResult Get([FromRoute] int id, [FromServices] IGetOneUserQuery query)
        {
            return Ok(_executor.ExecuteQuery(query, id));
        }

        // POST api/<UsersController>
        [HttpPost]
        public IActionResult Post([FromBody] InsertUserDto dto, [FromServices] ICreateUserCommand command)
        {
            _executor.ExecuteCommand(command, dto);
            return NoContent();
        }

        // PUT api/<UsersController>/5
        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody] UserDto dto, [FromServices] IUpdateUserCommand command)
        {
            dto.Id = id;

            _executor.ExecuteCommand(command, dto);
            return NoContent();
        }

        // DELETE api/<UsersController>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(int id, [FromServices] IDeleteUserCommand command)
        {
            _executor.ExecuteCommand(command, id);
            return NoContent();
        }
    }
}
