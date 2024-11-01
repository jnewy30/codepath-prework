//private variables only obtainable by getters and setters
public class Employee {
	private double hourlyPay = 0;
	private String EmployeeName = "";
	
	
	
	
	
//constructor which takes name and pay as inputs
	//this is used to refer to the inputs in the constructor.
public Employee(String name, double pay) {
		this.EmployeeName = name;
		this.hourlyPay = pay;
		
	}

	//getters and setters which allow us to take the information from 
//the private variables in the Employee Class

public String getEmployeeName() {
	return EmployeeName;
}
public double gethourlyPay() {
	return hourlyPay;
}
public void setName(String name) {
	this.EmployeeName = name;
	
}
public void sethourlyPay(double pay) {
	this.hourlyPay = pay;
}
//final method that is used to calculate total pay after taxes. 
//return lines used to enter the arguments into the math operation below. 
public double getTotalPay(int hoursWorked) {
	double TotalPay = (hoursWorked * hourlyPay) - ((hoursWorked * hourlyPay) * .3);
	return TotalPay;



    

   
}



}




