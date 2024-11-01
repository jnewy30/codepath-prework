import java.util.Scanner;

public class Homework2 { 

	public static void main(String[] args) {
		try {			
			// Try catch Statement to catch any exceptions if user enters invalid data
		Scanner scanner = new Scanner(System.in);
		//Import the user input
		System.out.println("What is the Credit Card Holders Full Name"); 
		//Prints the first question to CC holder
		String CreditCardHoldersName = "ROBERT BRUCE"; 
		//sets CCHoldersName = to a string to later allow user to enter a string 
		
	
	//While True Statements are used to check against certain conditions if true, if it is not it will 
		//loop and ask the user to input that information again and will only continue to the next line of code
		//when the user input is correct.
		
		while(true) {
			
		CreditCardHoldersName = scanner.nextLine().toUpperCase();
		//toUpperCase to catch user typos.
		if(CreditCardHoldersName.equals("ROBERT BRUCE")) {
		}
			else {											
				//else statements prints the output when user input is invalid
			System.out.println("Card Name Is Invalid");
			System.out.println("Please Re-Enter Your Card Holder Name:");
			if(CreditCardHoldersName.equals("ROBERT BRUCE"));
			continue;
			//continue statements allow the code to continue iterating through the loop until user input is valid
			}
		//if statements are used as a nested loop to check if the user put in valid input.
		
		System.out.println("What is the Credit Card Number");
		String ccNumber;
		ccNumber = scanner.nextLine();
		
		while(true) {
		
		if(isThisCreditCardValid(ccNumber)) { 
			
			//calls the method isThisCreditCardValid and checks if card 
			//number is valid, if invalid, the statement below will ask user to input valid card
			//number until they get a valid card number.
			
		}
		else {
			System.out.println("This Card Number Is Invalid.");
			System.out.println("Please enter a valid number");
			ccNumber = scanner.nextLine();
			if(!isThisCreditCardValid(ccNumber)); //the '!' operator indicates boolean, "if method is false." do this
			continue;
		}
		
			//scanner.nextLine() are used to allow the user to input their data again if they fail.
			
		
			double CreditCardAmount = 0.00d; 
			//Card amount must be a double to allow user to enter decimals and allow number to be in
			//reasonable range of what the user could possibly input.
			System.out.println("What is the Amount to be Charged");
			
			//operators used between 0 and 1000 to set boundaries for what the user is allowed to enter.
			
		while(true) {
		CreditCardAmount = scanner.nextDouble();
		if(CreditCardAmount>1000) {
			System.out.println("Max Amount Exceeded");
			System.out.println("Please enter an amount below or equal to 1000.");
		}	
		
		else if(CreditCardAmount<=0) {
			System.out.println("Not a valid amount");
			System.out.println("Please enter an amount below or equal to 1000.");
		}
		else {
			System.out.printf("Your card has been charged for: $" + "%.2f", CreditCardAmount);
			System.out.println( ", Thank you for your purchase!");
		
			}
		
		// these 3 brackets below are used to close the while(true) loop statements
		
				}
					}
						}
		
		}catch(Exception e) { 
			System.out.println("Something went horribly wrong");
		}
		finally {
			System.out.println("END PROGRAM");
			
		} //finally line is used to print a message, that will ALWAYS print, if user causes an exception to occur
		//Catch Exception E is a catch all statement, that catches any exceptions the user causes.
	}//End Main
		
	
	
	
			
		
		
			
		
		
	
			
				
				
			
		
		
		
		
		

//end Homework 2
	//The actual credit card validator code that is slotted in after main so it does not disrupt 
	//with the code unless called upon in the main Homework2 class.
	public static boolean isThisCreditCardValid(String ccNumber){

        int sum = 0;
        boolean alternate = false;
        for (int i = ccNumber.length() - 1; i >= 0; i--)
        {
            int n = Integer.parseInt(ccNumber.substring(i, i + 1));
            if(alternate)
            {
                n *= 2;
                if (n > 9)
                {
                    n = (n % 10) + 1;
                }


            }
            sum += n;
            alternate = !alternate;
        }
        return (sum % 10 == 0);
}
}

