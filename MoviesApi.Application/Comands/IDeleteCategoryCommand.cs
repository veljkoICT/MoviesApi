using MoviesApi.Application.DataTransfer;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.Application.Comands
{
    public interface IDeleteCategoryCommand : ICommand<int>
    {
    }
}
