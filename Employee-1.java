public abstract class Employee{
	protected String id;
	protected int salary;
	
	public Employee(String id, int salary) {

		this.id = id;
		this.salary = salary;
	}
	
	
	
	public String getId() {
		return id;
	}



	public int getSalary() {
		return salary;
	}



	public void setId(String id) {
		this.id = id;
	}



	public void setSalary(int salary) {
		this.salary = salary;
	}



	public abstract int calculateSalary();
	
}
