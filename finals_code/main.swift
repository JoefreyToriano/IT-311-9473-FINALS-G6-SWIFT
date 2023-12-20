// -~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~
/*
 IT 311 | 9473 - Applications Development
 10:30-11:30 AM | 12:1:30 PM TF
 
 GROUP 6
 ANGWAY, Khenler
 ANGWAY, Timothy Jue
 AZURIN, John Arvin Dale
 CLEMENTE, Lise
 HUFALAR, Jekka Menna
 GANGAN, William Sylvester
 TORIANO, Joefrey
 */

/*
 Aim: Create an informative console app named BAGUINFORM
 Target Users: Baguio citizens and tourists
 Purpose: Provide helpful contact information and tourist destination details
 */

// -~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~

// signUp() function
func signUp() {
print("                                       ")
print("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*")
print("*               Sign Up for an Account              *")
print("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*")
print("*                                                   *")
    print("*          Please enter the following details       *")
print("*     - - - - - - - - - - - - - - - - - - - - -     *")
print("*                                                   *")
print("           First Name:", terminator: " ")
let fName = readLine() ?? ""            // read user input for First Name

print("           Last Name:", terminator: " ")
let lName = readLine() ?? ""            // read user input for Last Name

    print("           Address:", terminator: " ")
let addr = readLine() ?? ""            // read user input for Address

print("           Username:", terminator: " ")
let user = readLine() ?? ""            // read user input for Username

print("           Password:", terminator: " ")
let pass = readLine() ?? ""            // read user input for Password

// add a new user to the Account()
let newUser = Account(username: user, password: pass,
firstName: fName, lastName: lName,
address: addr)

    // add user inputs to the Accounts list
accounts.append(newUser)

// print success message
print("                                                     ")
    print("*     - - - - - - - - - - - - - - - - - - - - -     *")
print("*          Congratulations! Account created!        *")
    print("*              Please sign in your account.         *")
  print("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*")
    print("*                                                   *")
    
    // return to main menu
    initialDis()
} // end of func Account()

func signin() {
  print("                                                     ")
  print("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*")
  print("*                 Sign In your Account              *")
  print("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*")
  print("*                                                   *")
  print("         Enter your Username:", terminator: " ")             // read user input for username
let usr = readLine()
  print("         Enter your Password:", terminator: " ")             // read user input for password
var ps = readLine()

// validate if username and password are empty
if usr!.isEmpty || ps!.isEmpty {
  print("                                                     ")
  print("*                    !!! Oops  !!!                  *")
  print("*        Username and Password cannot be empty!     *")
   print("*                Please Sign Up first.              *")

// return to the main menu
initialDis()
} // end of if

// Check if the user exists in the accounts array
if let acc = accounts.first(where: { $0.username == usr }) {
// User exists, check the password
while acc.password != ps {
  print("                                                     ")
  print("*                    !!! Oops  !!!                  *")
  print("*       Incorrect password! Please try again        *")
  print("             Password:", terminator: " ") // read Password input from user
ps = readLine()
} // use while loop to check if password and account matches

  print("                                                      ")
  print("*     - - - - - - - - - - - - - - - - - - - - -      *")
  print("*                     Welcome!                       *")
  print("*               You are now logged in!               *")
  print("*     - - - - - - - - - - - - - - - - - - - - -      *")
  print("                                                      ")
main() // proceed to main after authentication
} else {
// User does not exist
  print("                                                      ")
  print("*                    !!! Oops  !!!                   *")
  print("     User with username '\(usr ?? "")' does not exist!  ")
  print("*        Do you want to go sign up for an account?   *")
  print("*                 y/n: ", terminator: " ")
let ans = readLine()

if ans == "y" {
signUp()        // proceed to signUp method
} else if ans == "n" {
  print("*                                                   *")
  print("*            Thank you for using our App!           *")
  print("*                                                   *")
exit(0)
} else {
  print("*                                                   *")
  print("*                  Opps! Invalid input.             *")
  print("*            Please enter 'y' or 'n' only.          *")
  } // end of else
 } // end of else
} // end of signUp()
