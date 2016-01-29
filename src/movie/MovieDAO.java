package movie;

import java.util.List;

public interface MovieDAO {
	public Movie getMovieByName(String name);
	public List<Movie> getMovieByGenre(String genre);
	public Movie getMovieByNum(int num);
	public void addMovie(Movie movie);
	public List<Movie> getAllMovies();
	public void removeMovie(Movie movie);
}
