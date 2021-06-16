﻿using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Application
{
    public interface IUseCaseLogger
    {
        void Log(IUseCase useCase, IApplicationActor actor, object useCaseData);
    }
}
