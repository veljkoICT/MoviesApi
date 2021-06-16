using MoviesApi.Application.Queries;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Application.Searches
{
    public class MovieSearch : PagedSearch
    {
        public string Name { get; set; }
    }
}
