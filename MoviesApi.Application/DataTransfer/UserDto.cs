using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Application.DataTransfer
{
    public class UserDto
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Username { get; set; }
        public string Email { get; set; }
        public string RoleName { get; set; }
        public IEnumerable<UserMovieDto> Movies { get; set; }
    }
}
