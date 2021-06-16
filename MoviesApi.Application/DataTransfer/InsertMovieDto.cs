using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Application.DataTransfer
{
    public class InsertMovieDto
    {
        public string Name { get; set; }
        public int Duration { get; set; }
        public DateTime ReleaseDate { get; set; } = DateTime.Now;
        public int CategoryId { get; set; }
        public int FilmDirectorId { get; set; }
        public string Description { get; set; }
        public bool Available { get; set; } = true;
        public ICollection<int> ActorIds { get; set; }
    }
}
