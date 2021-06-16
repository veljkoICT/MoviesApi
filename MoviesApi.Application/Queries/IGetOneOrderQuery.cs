using MoviesApi.Application.DataTransfer;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Application.Queries
{
    public interface IGetOneOrderQuery : IQuery<int, OrderDto>
    {
    }
}
