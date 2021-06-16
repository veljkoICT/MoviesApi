﻿using MoviesApi.Application.DataTransfer;
using MoviesApi.Application.Searches;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Application.Queries
{
    public interface IGetOrderQuery : IQuery<OrderSearch, PagedResponse<OrderDto>>
    {
    }
}
