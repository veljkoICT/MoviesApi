using MoviesApi.Application.Queries;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Application.Searches
{
    public class UseCaseLoggerSearch : PagedSearch
    {
        public string Actor { get; set; }
    }
}
