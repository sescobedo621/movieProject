package movie;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

public class MovieFileDAO implements MovieDAO {
	private static final String FILENAME = "WEB-INF/AFI-Top100.csv";
	private List<Movie> afiList = new ArrayList<>();

	@Autowired
	private ApplicationContext ac;

	@PostConstruct
	public void init()
	{
		try (InputStream is = ac.getResource(FILENAME).getInputStream();
				BufferedReader buf = new BufferedReader(new InputStreamReader(is))) {
			String line = buf.readLine();
			while ((line = buf.readLine()) != null) {
				List<Actor> actor = new ArrayList();
				String[] tokens = line.split(",");
				int afi = Integer.parseInt(tokens[0]);
				String title = tokens[1];
				int yearMade = Integer.parseInt(tokens[2]);
				String[] genre = tokens[3].split("/");
				String[] dirName = tokens[4].split(" ");
				Director dir = new Director(dirName[0], dirName[1]);
				for (int i = 5; i < tokens.length; i++) {
					String[] act = tokens[i].split(" ");
					actor.add(new Actor(act[0], act[1]));
				}

				afiList.add(new Movie(afi, title, yearMade, genre, dir, actor));

			}
		} catch (Exception e) {
			System.err.println(e);
		}
	}

	@Override
	public Movie getMovieByName(String name)
	{
		Movie mov = null;
		for (Movie movie : afiList) {
			if (movie.getTitle().equals(name)) {
				mov = movie;
			}
		}
		return mov;
	}

	@Override
	public List<Movie> getMovieByGenre(String genre)
	{
		List<Movie> genres = new ArrayList<>();
		for (Movie movie : afiList) {
			
			for (String gen : movie.getGenre()) {
				if (gen.equals(genre)) {
					genres.add(movie);
				}
			}
		}
		return genres;
	}

	@Override
	public Movie getMovieByNum(int num)
	{
		Movie mov = null;
		for (Movie movie : afiList) {
			if (movie.getAfiNum() == num) {
				mov = movie;
			}
		}
		
		return mov;
	}

	@Override
	public void addMovie(Movie movie)
	{
		afiList.add(movie);
	}

	@Override
	public List<Movie> getAllMovies()
	{
		return afiList;
	}

	@Override
	public void removeMovie(Movie movie)
	{
		int num = -1;
		for (Movie mov : afiList) {
			if(mov.getTitle().equals(movie.getTitle())){
				num =afiList.indexOf(mov);
				break;
			}
		}
		if(num != -1){
			afiList.remove(num);
		}
	}

	@Override
	public void editMovie(Movie movie)
	{
		System.out.println("in dao");
		int num =-1;
		String[] genre = null;
		List<Actor> actors=null;
		for (Movie mov : afiList) {
			System.out.println(mov);
			if(mov.getAfiNum() == movie.getAfiNum()){
				genre = mov.getGenre();
				actors= mov.getActors();
				num = afiList.indexOf(mov);
				System.out.println(num);
				break;
			}
		}
		if(num != -1){
			movie.setGenre(genre);
			movie.setActors(actors);
			afiList.set(num, movie);
		}
		
	}
	
	
	
	
}
