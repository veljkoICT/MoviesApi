using MoviesApi.Application.Queries;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Application.Searches
{
    public class CategorySearch : PagedSearch
    {
        public string Name { get; set; }
    }
}
