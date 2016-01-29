package movie;

public abstract class Person {
	private String firstName;
	private String lastName;
	private String birthYear;
	private String deathYear;
	
	public Person(){
		
	}
	public Person(String fn, String ln){
		firstName = fn;
		lastName = ln;
	}
	public String getFirstName()
	{
		return firstName;
	}
	public void setFirstName(String firstName)
	{
		this.firstName = firstName;
	}
	public String getLastName()
	{
		return lastName;
	}
	public void setLastName(String lastName)
	{
		this.lastName = lastName;
	}
	public String getBirthYear()
	{
		return birthYear;
	}
	public void setBirthYear(String birthYear)
	{
		this.birthYear = birthYear;
	}
	public String getDeathYear()
	{
		return deathYear;
	}
	public void setDeathYear(String deathYear)
	{
		this.deathYear = deathYear;
	}
	
	
}
