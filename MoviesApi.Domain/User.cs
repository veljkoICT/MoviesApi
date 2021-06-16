using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Domain
{
    public class User : EntityBase
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Username { get; set; }
        public string Email { get; set; }
        public int RoleId { get; set; }
        public virtual Role Role { get; set; }
        public virtual ICollection<UserMovie> UserMovies { get; set; } = new HashSet<UserMovie>();
        public virtual ICollection<UserUseCases> UserUseCases { get; set; }
    }
}