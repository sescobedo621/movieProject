package movie;

import javax.validation.constraints.Size;

public abstract class Person {
	@Size(min=2)
	private String firstName;
	@Size(min=2)
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
	@Override
	public int hashCode()
	{
		final int prime = 31;
		int result = 1;
		result = prime * result + ((firstName == null) ? 0 : firstName.hashCode());
		result = prime * result + ((lastName == null) ? 0 : lastName.hashCode());
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
		Person other = (Person) obj;
		if (firstName == null) {
			if (other.firstName != null)
				return false;
		} else if (!firstName.equals(other.firstName))
			return false;
		if (lastName == null) {
			if (other.lastName != null)
				return false;
		} else if (!lastName.equals(other.lastName))
			return false;
		return true;
	}
	
	
}
