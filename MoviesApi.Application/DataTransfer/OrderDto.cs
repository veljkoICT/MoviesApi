using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Application.DataTransfer
{
    public class OrderDto
    {
        public int Id { get; set; }
        public string User { get; set; }
        public string Username { get; set; }
        public DateTime EndDate { get; set; }
        public string MovieName { get; set; }
    }
}
