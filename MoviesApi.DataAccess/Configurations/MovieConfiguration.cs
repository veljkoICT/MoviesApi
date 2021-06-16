using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using MoviesApi.Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.DataAccess.Configurations
{
    public class MovieConfiguration : IEntityTypeConfiguration<Movie>
    {
        public void Configure(EntityTypeBuilder<Movie> builder)
        {
            builder.Property(x => x.Name).IsRequired().HasMaxLength(25);
            builder.Property(x => x.Duration).IsRequired();
            builder.Property(x => x.Description).HasMaxLength(150);

            builder.HasMany(u => u.MovieActors)
                .WithOne(r => r.Movie)
                .HasForeignKey(u => u.MovieId)
                .OnDelete(DeleteBehavior.Restrict);

            builder.HasMany(u => u.UserMovies)
                .WithOne(r => r.Movie)
                .HasForeignKey(u => u.MovieId)
                .OnDelete(DeleteBehavior.Restrict);
        }
    }
}
