package movieControl;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
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
	@RequestMapping(path="addMovie.do", method=RequestMethod.GET)
	public ModelAndView addMovie(){
		Movie movie = new Movie();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("add.jsp");
		mv.addObject("movie", movie);
		
		return mv;
	}
	@RequestMapping(path = "NewMovie.do", method = RequestMethod.POST)
	public ModelAndView addMovie(@Valid Movie movie, Errors error)
	{
		movieDao.addMovie(movie);
		ModelAndView mv = null;
		if(error.getErrorCount() != 0){
			mv = new ModelAndView();
			mv.setViewName("add.jsp");
			mv.addObject("movie", movie);
			return mv;
		}
				mv =getAllMovies();
		return mv;
	}
	@RequestMapping(path = "deleteMovie.do", method = RequestMethod.POST)
	public ModelAndView deleteMovie(Movie movie)
	{
		movieDao.removeMovie(movie);
		ModelAndView mv = getAllMovies();
		return mv;
	}
	
	@RequestMapping(path="editMovie.do", params="name", method=RequestMethod.GET)
	public ModelAndView editMovie(@RequestParam("name") String name){
		Movie movie = movieDao.getMovieByName(name);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("update.jsp");
		mv.addObject("movie", movie);
		
		return mv;
	}
	
	@RequestMapping(path="updateMovie.do", method=RequestMethod.POST)
	public ModelAndView updateMovie(@Valid Movie movie, Errors error){
		movieDao.editMovie(movie);
		ModelAndView mv = null;
		if(error.getErrorCount() != 0){
			mv = editMovie(movie.getTitle());
		}
		 mv = getByName(movie.getTitle());
		return mv;
	}
	
	@RequestMapping(path="editMovie.do", method=RequestMethod.GET)
	public ModelAndView editList(@ModelAttribute("movieList") List<Movie> movie){
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("edit.jsp");
		mv.addObject("movies", movieDao.getAllMovies());
		
		return mv;
	}
}
