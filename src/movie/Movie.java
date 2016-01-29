package movie;

import java.util.*;

public class Movie {
	private int yearMade;
	private List<Actor> actors;
	private Director director;
	private String title;
	private String[] genre;
	private int afiNum;
	
	public Movie(){
		
	}
	
	public Movie(int afiNum,String title, int yearMade,String[] genre, Director director, List<Actor> actors )
	{
		this.yearMade = yearMade;
		this.actors = actors;
		this.director = director;
		this.title = title;
		this.genre = genre;
		this.afiNum = afiNum;
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
	
	
	
}
