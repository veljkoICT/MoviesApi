using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Application.DataTransfer
{
    public class InsertOrderDto
    {
        public int UserId { get; set; }
        public int MovieId { get; set; }
        public DateTime EndDate { get; set; }
    }
}
