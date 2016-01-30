package movieControl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import movie.Actor;
import movie.Movie;
import movie.MovieDAO;
import movie.MovieFileDAO;

@Controller
@SessionAttributes("movieList")
public class ActorController {
	@Autowired
	MovieDAO movieDao;

	@ModelAttribute("movieList")
	public List<Movie> initMovies()
	{
		return movieDao.getAllMovies();
	}
	@RequestMapping(path="deleteActor.do", method=RequestMethod.POST)
	public ModelAndView deleteActor(Movie movie, @RequestParam("firstName")String fn, @RequestParam("lastName") String ln ){
		Actor actor = ((MovieFileDAO)movieDao).getActor(fn, ln);
		((MovieFileDAO)movieDao).deleteActor(actor, movie);
		Movie mov = movieDao.getMovieByName(movie.getTitle());
		ModelAndView mv = new ModelAndView();
		mv.setViewName("result.jsp");
		mv.addObject("movie", mov);
		return mv;
	}
	@RequestMapping(path="addActor.do" , params="name", method=RequestMethod.GET)
	public ModelAndView addActorForm(@RequestParam("name") String title){
		
		Movie movie = movieDao.getMovieByName(title);
		Actor actor = new Actor();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addActor.jsp");
		mv.addObject("movie", movie);
		mv.addObject("actor", actor);
		return mv;
		
	}
	
	@RequestMapping(path="addActor.do",method=RequestMethod.POST)
	public ModelAndView addActor(Actor actor, @RequestParam("title") String title, Errors error){
		Movie movie = movieDao.getMovieByName(title);
		((MovieFileDAO)movieDao).addActor(movie, actor);
		ModelAndView mv = null;
		if(error.getErrorCount() != 0){
			mv = addActorForm(title);
			return mv;
		}
		mv = new ModelAndView();
		mv.setViewName("result.jsp");
		mv.addObject(movie);
		
		return mv;
	}
	
}
