using Microsoft.EntityFrameworkCore.Migrations;

namespace MoviesApi.DataAccess.Migrations
{
    public partial class changemovieactorsconfiguration : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "MovieActorId",
                table: "Actors",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Actors_MovieActorId",
                table: "Actors",
                column: "MovieActorId");

            migrationBuilder.AddForeignKey(
                name: "FK_Actors_MovieActors_MovieActorId",
                table: "Actors",
                column: "MovieActorId",
                principalTable: "MovieActors",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Actors_MovieActors_MovieActorId",
                table: "Actors");

            migrationBuilder.DropIndex(
                name: "IX_Actors_MovieActorId",
                table: "Actors");

            migrationBuilder.DropColumn(
                name: "MovieActorId",
                table: "Actors");
        }
    }
}
