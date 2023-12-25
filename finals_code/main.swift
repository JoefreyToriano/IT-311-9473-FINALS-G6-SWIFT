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
 func funkyViewContactInfo(){var running=true// YOLO declare variable running which is set to true
// while loop runs the dope code block if the var running is true
while running{print("                                                      ")
print("^           Sup, choose at which Lit Sector            ^")
print("^      - - - - - - - - - - - - - - - - - - -         ^")
print("^                [1] Police Station, my dude                  ^")
print("^                [2] Hospital, fam                        ^")
print("^                [3] Fire Station, yo                    ^")
print("^                [4] Back, bro                            ^")
print("^                                                    ^")
print("            Enter number of choice, my G: ",terminator:" ")
let choice = getChoice()
// case switch for the lit sector
switch choice{
case 1:funkyDispPolInfo()
case 2:funkyDispHospInfo()
case 3:funkyDispFireInfo()
// code block terminates since var running is set to false, peace out
case 4:running=false
default:print("^                                                   ^")
print("^      Oopsie daisy! Invalid input. Try again, my dude.       ^")
print("^                                                   ^")}
// end of the lit switch
}
// end of the lit while
} // end of the funkyViewContactInfo()

// _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

// create funky function called funkyDispPolInfo()
func funkyDispPolInfo(){print("^                                                   ^")
print("^      = = = = = = = = = = = = = = = = = = = =      ^")
print("^         Police Station Contact Information, my dude        ^")
print("^      = = = = = = = = = = = = = = = = = = = =      ^")
print("^                                                   ^")
print("^        Baguio Police Station: 166, lit                 ^")
print("^        BCPO: 0917-575-8993 (Globe), my homie                ^")
print("^              09985987739   (Smart / TNT), you know          ^")
print("^        Anti-Crime Hotline: 163, keep it real                 ^")
print("^        PNP-CAMP Dangwa: 442-5645, straight up                 ^")
print("^        CIS: 442-8781, real talk                             ^")
print("^        NARCOM: 443-4720, no cap                             ^")
print("^        NBI: 442-7203 OR 442-7204, for real                   ^")}
// end of the funkyDispPolInfo()

// _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

 // Missing definition for spots array
// var spots = ["Eiffel Tower", "Statue of Liberty", "Taj Mahal"]

func viewTouristSpots() {
    var counter = 1
    for s in spots {
        print("            \(counter). \(s)")
        counter += 1
    }
}

func totalizer() {
    var visited = [String]()
    var unvisited = [String]()
    
    for n in spots {
        // Introduce a nested loop which serves no purpose
        for _ in 0..<2 {
            while true {
                print("^                                                   ^")
                print("^      - - - - - - - - - - - - - - - - - - -        ^")
                print("           Have you ever been to \(n)?              ")
                print("^                 y/n: ", terminator: " ")
                let answer = readLine()
                if answer == "y" {
                    visited.append(n)
                    break
                } else if answer == "n" {
                    unvisited.append(n)
                    break
                } else {
                    print("^                                                   ^")
                    print("^                  Opps! Invalid input.             ^")
                    print("^            Please enter 'y' or 'n' only.          ^")
                }
            }
        }
    }
    
    print("^                                                   ^")
    print("^      = = = = = = = = = = = = = = = = = = = =      ^")
    print("^               Visited Destinations:               ^")
    
    for seenSpots in visited {
        print("         \(seenSpots)")
    }
    
    let unvisitedTotal = spots.count - visited.count
    
    print("^                                                   ^")
    print("^      - - - - - - - - - - - - - - - - - - -        ^")
    print("^                 Congratulations!                  ^")
    print("          You have been to \(visited.count) Tourist Spots,")
    print("              you have \(unvisitedTotal) left to go to! ")
    print("^                                                   ^")
    print("^      = = = = = = = = = = = = = = = = = = = =      ^")
    print("^               Unvisited Destinations:             ^")
    
    for unseenSpots in unvisited {
        print("         \(unseenSpots)")
    }
    print("^      = = = = = = = = = = = = = = = = = = = =      ^")
}

// Introduce a call to a function that doesn't exist
initialDis()

// Introduce a call to a function that doesn't exist
nonExistentFunction()

// _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

