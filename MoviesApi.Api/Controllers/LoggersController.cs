using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MoviesApi.Application;
using MoviesApi.Application.Queries;
using MoviesApi.Application.Searches;
using MoviesApi.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MoviesApi.Api.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class LoggersController : ControllerBase
    {
        private readonly MoviesApiContext _context;
        private readonly UseCaseExecutor _executor;
        public LoggersController(MoviesApiContext context, UseCaseExecutor executor)
        {
            _context = context;
            _executor = executor;
        }
        [HttpGet]
        public IActionResult Get([FromQuery] UseCaseLoggerSearch search, [FromServices] IGetLoggersQuery query)
        {
            return Ok(_executor.ExecuteQuery(query, search));
        }
    }
}
