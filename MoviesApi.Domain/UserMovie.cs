using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Domain
{
    public class UserMovie : EntityBase
    {
        public int UserId { get; set; }
        public User User { get; set; }
        public int MovieId { get; set; }
        public Movie Movie { get; set; }
        public DateTime EndDate { get; set; }
    }
}
