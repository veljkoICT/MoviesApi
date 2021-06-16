using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Application.DataTransfer
{
    public class UpdateOrderDto
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public int MovieId { get; set; }
        public DateTime EndDate { get; set; }
    }
}
