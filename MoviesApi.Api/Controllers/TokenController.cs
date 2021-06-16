﻿using Microsoft.AspNetCore.Mvc;
using MoviesApi.Api.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace MoviesApi.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TokenController : ControllerBase
    {
        private readonly JwtManager manager;

        public TokenController(JwtManager manager)
        {
            this.manager = manager;
        }

        // POST api/<TokenController>
        [HttpPost]
        public IActionResult Post([FromBody] LoginRequest request)
        {
            var token = manager.MakeToken(request.Email, request.Username);

            if (token == null)
            {
                return Unauthorized();
            }

            return Ok(new { token });
        }

        public class LoginRequest
        {
            public string Email { get; set; }
            public string Username { get; set; }
        }
    }
}
