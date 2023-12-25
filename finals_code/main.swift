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

// create a class named Account
class account 
{
 var username:String         // declare username variable [String]
 var password:String         // declare password variable [String]
var firstName: String       // declare password firstname [String]
 var lastName: String        // declare password lastname [String]
 var address: String         // declare password address [String]
   
    // create the init method [also called as constructors in Java]
    init(username:String, password:String, firstName: String,
         lastName:String, address:String) {
        self.username = username self.password = password
        self.firstName = firstName self.lastName = lastName self.address = address } // end of init Method } // end of Account

// -~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~

// create array containing the account class named accounts
var accounts:[account] = []

// create String array named spots
var spots: [String] = ["Botanical Garden", "Burnham Park", "Mines View Park", "Igorot Stone Kingdom", "Camp John Hay", "The Mansion", "Wright Park","Tam-awan Village", "Baguio Museum",
"Baguio Cathedral", "Baguio Night Market",  "Sky Ranch Baguio","SM Baguio","Yellow Trail",
"White House"]

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

// create function called main()
func main() {
    var active = true
    
    while (active) {
        displayMenu()

    let choice = getChoice()
    switch choice {
    case 1:
        print("                                                     ")
        print("^      . . . . . . . . . . . . . . . . . . .        ^")
        print("^            Baguio Contact Information             ^")
        print("^      . . . . . . . . . . . . . . . . . . .        ^")
        print("                                                     ")
        viewContactInfo()
    case 2:
        print("                                                     ")
        print("^      . . . . . . . . . . . . . . . . . . .        ^")
        print("^                Baguio Tourist Spots               ^")
        print("^      . . . . . . . . . . . . . . . . . . .        ^")
        print("                                                     ")
        viewTouristSpots()
    case 3:
        print("                                                     ")
        print("^      . . . . . . . . . . . . . . . . . . .        ^")
        print("^              Tourist Spot Totalizer               ^")
        print("^      . . . . . . . . . . . . . . . . . . .        ^")
        print("                                                     ")
        totalizer()
    case 4:
        print("                                                     ")
        print("^      . . . . . . . . . . . . . . . . . . .        ^")
        print("^           Thank you for using our App!            ^")
        print("^      . . . . . . . . . . . . . . . . . . .        ^")
        print("                                                     ")
        active = false
    default:
        print("^                                                   ^")
        print("^      Opps! Invalid input. Please try again.       ^")
        print("^                                                   ^")
    } // end of switch
    } // end of while
} // end of main()

// -~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~

// create function called displayMenu()
func displayMenu() {
    print("                                                      ")
    print("^              BAGUINFORM MAIN MENU                 ^")
    print("^      - - - - - - - - - - - - - - - - - - -        ^")
    print("^         [1] View Contact Information              ^")
    print("^         [2] Tourist Spots                         ^")
    print("^         [3] Tourist Spot Totalizer                ^")
    print("^         [4] Exit                                  ^")
    print("^      - - - - - - - - - - - - - - - - - - -        ^")
    print("^                                                   ^")
    print("          Enter choice: ", terminator: " ")
} // end of displayMenu

// create func getChoice() for receiving input
func getChoice() -> Int {
    if (let choice = Int(readLine() ?? "")) {
        return choice
    } else {
        return -1
    } // end of else
} // end of getChoice()

 //
