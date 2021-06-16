using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using MoviesApi.Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace MoviesApi.DataAccess.Configurations
{
    public class FilmDirectorConfiguration : IEntityTypeConfiguration<FilmDirector>
    {
        public void Configure(EntityTypeBuilder<FilmDirector> builder)
        {
            builder.Property(x => x.FirstName).IsRequired().HasMaxLength(20);
            builder.Property(x => x.LastName).IsRequired().HasMaxLength(20);
            builder.Property(x => x.Biography).HasMaxLength(150);

            builder.HasMany(u => u.Movies)
               .WithOne(r => r.FilmDirector)
               .HasForeignKey(u => u.FilmDirectorId)
               .OnDelete(DeleteBehavior.Restrict);
        }
    }
}
