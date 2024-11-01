import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Scanner;
//import for filereading
public class Main {
	//file not found exception
	public static boolean presentInFile(Employee e) throws FileNotFoundException {
		Scanner inFile=new Scanner(new File("input.txt"));
		String id="";
		int empSalary=0;
		int empType=0;
		
		//variables for user input and to pass through method to determine if valid emp type
		//formatting for the output text below.
		String file="";
		while(inFile.hasNextLine()) {
			file=inFile.nextLine();
			id=file.substring(file.indexOf(':')+1).strip();
			
			file=inFile.nextLine();
			empSalary=Integer.parseInt(file.substring(file.indexOf(':')+1).strip());
			
			file=inFile.nextLine();
			empType=Integer.parseInt(file.substring(file.indexOf(':')+1).strip());
			
			//if else statement that takes the user input for ID and Salary and matches it against
			//the data in input.txt
			if(e.getId().equalsIgnoreCase(id) && e.getSalary()==empSalary) {
				if(e.getClass().toString().equalsIgnoreCase("class WorkerEmployee")) {
					if(empType==1) {
						return true;
					}
				}
				else {
					if(empType==2) {
						return true;
					}
				}
			}
		}
		
		return false;
		//main
	}
	public static void main(String[] args) throws FileNotFoundException {
		//creation of an ArrayList to be able to edit and change indexes so user can try again
		//and it won't mess up the output.txt file
		ArrayList<Employee> myEmployess=new ArrayList<>();
		
		int index=0;
		
		//user input
		
		Scanner input=new Scanner(System.in);
		
		//Variables for user input.
		
		String empID="";
		int empSalary=0;
		int empType=0;
		//while loop that loops through iterations and will throw exceptions if the user puts in
		//invalid data types, it also has user try again if they failed.
		//the .parseInt() method is used to make sure the user enters an integer.
		Employee e=null;
		while(index<4) {
			System.out.println("What is the Employee ID?");
			empID=input.nextLine();
			System.out.println("What is the Employees Salary?");
			empSalary=Integer.parseInt(input.nextLine());
			System.out.println("Are they A Worker or Manager? (1 worker or 2 manager)");
			empType=Integer.parseInt(input.nextLine());
			
			//two if else statements checking if user input = 1 or 2, that it will store 
			//a new WorkerEmployee and their salary in the output file.
			//otherwise it will have them retry.
			
			if(empType==1) {
				e=new WorkerEmployee(empID,empSalary);
			}
			else {
				e=new ManagerEmployee(empID,empSalary);
			}
			
			//presentInFile function checks if the data is there and then adds the employee to the index.
			
			if(presentInFile(e)) {
				myEmployess.add(e);
				index++;
			}
			else {
				System.out.println("\nSorry, Employee Information was not found in input.txt file!");
			}
			
			System.out.println();
		}
		
		PrintWriter pw=new PrintWriter(new File("output.txt"));
		
		//function that prints the new output text above, and the writer that actually 
		//puts the new info on the output file.
		
		for(Employee ee:myEmployess) {
			pw.write(ee.getId()+" earns $"+ee.calculateSalary()+" per period.\n");
		}
		
		System.out.println("A file named output.txt was created with pay information");
		pw.close();
	}
}
