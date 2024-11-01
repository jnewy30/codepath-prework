
import java.util.Scanner;



public class PayCheckEstimator {
	public static void main(String[] args) {
		//beginning of try-catch exception
		try {
			//import the scanner
		try (Scanner scanner = new Scanner(System.in)) {
			//create a variable for user input which will later be passed through methods.
			
			 int hoursWorked = 0;

			//create an array that takes data from the Employee Class and passes it through the methods.
			Employee[] Employees = new Employee[4];
			
			Employees[0] = new Employee("Damian Lillard", 320.72);
			Employees[1] = new Employee("Lebron James", 452.72);
			Employees[2] = new Employee("Furkan Korkmaz", 12.50);
			Employees[3] = new Employee("Lauri Markannen", 2000.00);
			
			
			System.out.println("Enter how many hours every employee worked:");
			hoursWorked = scanner.nextInt();
			

			
			//for loop that iterates indexes on the array less than the 4th position and passes it through to the methods below. 
			for(int i = 0; i <4; i++) {
			
		
			//employees variable is getting the data from the employee class and passing it through these 3 methods, and the printf is to format it
				//so that it rounds to the nearest two decimals. 
				System.out.printf(" \nThe Employee %s who earns $%.2f per hour, worked for %d hours last week and took home $%.2f after taxes.\n"
				,Employees[i].getEmployeeName(), Employees[i].gethourlyPay(), hoursWorked, Employees[i].getTotalPay(hoursWorked));
			}
			}

		
		//3 different exception statements, one that catches an out of bounds index if you change the array [] to a smaller number, one that prints for any other error
		// and one that will always print no matter what (the finally statement)
		
		}catch (ArrayIndexOutOfBoundsException e) {
			System.out.println("What are you doing to my code?");
		}
		catch(Exception e) {
			System.out.println("Please enter a valid input, use only numerical values");
			
		}
			finally {
				System.out.println("\nPROGRAM TERMINATED.");
				
			}
			
		
		}
		

	
		

}// end main


	

	


