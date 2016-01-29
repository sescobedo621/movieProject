package movieControl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import movie.Movie;
import movie.MovieDAO;

@Controller
@SessionAttributes("movieList")
public class MovieController {
	@Autowired
	private MovieDAO movieDao;

	@ModelAttribute("movieList")
	public List<Movie> initMovieList()
	{
		return movieDao.getAllMovies();
	}

	@RequestMapping(path = "GetMovie.do", params = "name", method = RequestMethod.GET)
	public ModelAndView getByName(@RequestParam("name") String name)
	{
		Movie movie = movieDao.getMovieByName(name);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("result.jsp");
		mv.addObject("movie", movie);

		return mv;
	}

	@RequestMapping(path = "GetGenre.do", params = "genre", method = RequestMethod.GET)
	public ModelAndView getByGenre(@RequestParam("genre") String genre)
	{
		List<Movie> genreMovie = movieDao.getMovieByGenre(genre);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("genreResult.jsp");
		mv.addObject("genres", genreMovie);

		return mv;

	}

	@RequestMapping(path = "GetGenre.do", params = "all", method = RequestMethod.GET)
	public ModelAndView getAllMovies()
	{
		List<Movie> movies = movieDao.getAllMovies();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("genreResult.jsp");
		mv.addObject("genres", movies);

		return mv;
	}

	@RequestMapping(path = "NewMovie.do", method = RequestMethod.POST)
	public ModelAndView addMovie(Movie movie, @ModelAttribute("movieList") List<Movie> mov)
	{
		movieDao.addMovie(movie);
		mov.add(movie);
		ModelAndView mv = getAllMovies();
		return mv;
	}
	@RequestMapping(path = "deleteMovie.do", params="name", method = RequestMethod.POST)
	public ModelAndView deleteMovie(Movie movie, @ModelAttribute("movieList") List<Movie> mov)
	{
		movieDao.removeMovie(movie);
		mov.remove(mov.indexOf(movie));
		ModelAndView mv = getAllMovies();
		return mv;
	}
	
	@RequestMapping(path="editMovie.do", params= "name", method=RequestMethod.GET)
	public ModelAndView editMovie(@RequestParam("name") String name){
		
		
		return null;
	}
}
