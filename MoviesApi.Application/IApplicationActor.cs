﻿using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Application
{
    public interface IApplicationActor
    {
        int Id { get; }
        string Identity { get; }
        IEnumerable<int> AllowedUseCases { get; }
    }
}
