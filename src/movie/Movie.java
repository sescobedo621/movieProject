package movie;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Movie {
	@Min (1896)
	@Max (2020)
	private int yearMade;
	private List<Actor> actors= new ArrayList<>();
	private Director director = new Director();
	@Size(min=2)
	private String title;
	private String[] genre;
	private int afiNum;
	private String video;
	
	public Movie(){
		
	}
	
	public Movie(int afiNum,String title, int yearMade,String[] genre, Director director, List<Actor> actors, String video)
	{
		this.yearMade = yearMade;
		this.actors = actors;
		this.director = director;
		this.title = title;
		this.genre = genre;
		this.afiNum = afiNum;
		this.video = video;
	}
	
	public int getYearMade()
	{
		return yearMade;
	}
	public void setYearMade(int yearMade)
	{
		this.yearMade = yearMade;
	}
	public List<Actor> getActors()
	{
		return actors;
	}
	public void setActors(List<Actor> actors)
	{
		this.actors = actors;
	}
	public Director getDirector()
	{
		return director;
	}
	public void setDirector(Director director)
	{
		this.director = director;
	}
	public String getTitle()
	{
		return title;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	public String[] getGenre()
	{
		return genre;
	}
	public void setGenre(String[] genre)
	{
		this.genre = genre;
	}
	public int getAfiNum()
	{
		return afiNum;
	}
	public void setAfiNum(int afiNum)
	{
		this.afiNum = afiNum;
	}

	@Override
	public int hashCode()
	{
		final int prime = 31;
		int result = 1;
		result = prime * result + ((director == null) ? 0 : director.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		result = prime * result + yearMade;
		return result;
	}

	@Override
	public boolean equals(Object obj)
	{
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Movie other = (Movie) obj;
		if (director == null) {
			if (other.director != null)
				return false;
		} else if (!director.equals(other.director))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (yearMade != other.yearMade)
			return false;
		return true;
	}

	public String getVideo()
	{
		return video;
	}

	public void setVideo(String video)
	{
		this.video = video;
	}
}
