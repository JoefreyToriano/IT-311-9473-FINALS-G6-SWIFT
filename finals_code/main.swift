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
