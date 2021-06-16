using MoviesApi.Application.Queries;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Application.Searches
{
    public class ActorSearch : PagedSearch
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }
}
