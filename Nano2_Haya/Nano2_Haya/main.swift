//
//  main.swift
//  Nano2_Haya
//
//  Created by Haya Saleem Alhawiti on 19/05/1443 AH.
//

import Foundation
//MainMenu()

struct Book{
    
    //
    var bookName : String  = "" //filled this propertey from the array
    var CatagoreyName : String  = ""
    var AuthorName : String = ""
    static var FavArr : [String]=[] //used in Favorite booklist
    static func StartingMenuInput( choice : Int ) -> String {
    
    //
       // var Fav: Int?
        //var selection: Int?
        //var seletion: String?
        var UserInput2:Int?
        var UserExitInput = ""
        switch choice {
            
        case 1 :
            
            print ("""
                    |-------------------------------------------------------------------------------|
                    |                 ๐Search Using the method match to Your liking๐              |
                    |                                                                               |
                    |                     โถ๏ธ 1. Search for a book by title. ๐๐                     |
                    |                                                                               |
                    |                     โถ๏ธ 2. Search for a book by a category.๐๐                 |
                    |                                                                               |
                    |                     โถ๏ธ 3. Search for a book by author name." ๐ ๐ฉโ๐จ             |
                    |                                                                               |
                    |-------------------------------------------------------------------------------|
                                            ------------------------------------
                                           | Enter The Number of Your Option    |
                                            ------------------------------------
            """)
            
            
            
          // selection = Book.SearchForBook (seletion)
            UserInput2 = Int(readLine()!)
            
            
            if UserInput2 != nil{
                print("                                   โผ๏ธYour Entered Option is: ", UserInput2! , "โผ๏ธ")
                if UserInput2 == 1{
                    Book.SearchForBook (seletion: 1)
                    //should i remove the book. since it's in the same class
                }
                else if UserInput2 == 2{
                    Book.SearchForBook (seletion: 2)
                }
                else if UserInput2 == 3{
                    Book.SearchForBook (seletion: 3)
                }
            }
            else{
                print("Error! The Input is not a number")
            }
         
        //case 2:
          //  print("HEllO")
            
           // Fav = Book.FavBookList (Fav: Fav ?? <#default value#>!)
            
        default:
        //    repeat{
            print("""
                   \n                                   You Sure wanna Exit This Incredible Program? โป
                   \n                                       โถ๏ธ Yes, I'm not into Books
                   \n                                       โถ๏ธ No, I changed my mind this looks Awesome
                   \n                                       Enter Your Choice:
                  
                  """)
            if let ExitInput = readLine() {
               UserExitInput = ExitInput
            
                  }
          //  }while UserExitInput != "No"
            
            if UserExitInput=="No"{
                Menu().MainMenu()
                
            }
            else if UserExitInput == "Yes"  {
                print ("                                     โน๏ธ Bye Bye Dear Friend โน๏ธ")
            }
        }
            
    
    return String("Hi 1")
        
    
}
    
    //this func is for books search
    static func SearchForBook(seletion : Int) -> String {
        
       var UserInput3:Int?
        
        
        //Book List with their title array
        //let instead of var
        let BookTitleList: [String] = ["Candle Igcse Physics Cb", "Cambridge IGCSE: Biology", "Complete Chemistry for Cambridge IGCSE"
                                     ,"IGCSE Study Guide for Business Studies", "Oxford English for Information Technology: Student's Book"
                                     ,"Study Skills for Business and Management Students", "Cambridge English for Human Resources Student's Book", "Cambridge English for Nursing"
                                       ,"Dynamic Presentations: Student's Book", "Academic Writing Skills Sb2"
                                       ,"1984", "A Little Princess", "Alice in Wonderland", "Treasure Island", "The Wheel of Time: The Eye of The World", "To Kill A Mocking Bird"
                                       ,"Jane Eyre", "Little Lord Fauntleroy", "My Grandmother Asked Me to Tell You She's Sorry", "The Slow Regard of Silent Things (Kingkiller Chronicles)", "Educational Psychology", "Experimental Psychology", "Motivation and Performance - A Guide to Motivating a Diverse Workforce"
                                        ,"An Introduction to Psychological Measurements", "Behave - The Biology of Humans at Our Best and Worst", "Think Like a Psychologist"
                                       ,"Dream Dictionary", "Clinical Psychology (A Very Short Introduction)", "Success The Psychology of Achievement - A Practical Guide to Unlocking Your Potential in Every Area of Life"
                                       ,"Deviate - The Science of Seeing Differently", "Baking Delights - for Those Who Eat Right"
                                       ,"Cookies Galore", "Cook's Corner: Brilliant Barbecue", "500 Light Meals", "The Middle Eastern Vegetarian Cookbook", "The Whole Grain Cookbook"
                                       ,"From The Lands of Figs and Olives", "The Artful Cupcake", "Bobby Flay's Throwdown!", "The Classic Recipes of Asia"
                                       ,"Really Important Stuff My Cat Has Taught Me", "101 Essential Tips: Cat Care", "The Curious Cat", "All About My Cat", "97 Ways to Make a Cat Like You", "Complete Cat Care: How to Keep Your Cat Healthy and Happy", "The Ultimate Guide to Cat Breeds", "Quotable Cats"
                                      ,"Cat Care Essentials (Hamlyn All Colour Pet Care)"
                                       ,"Cats: A Portrait in Pictures and Words", "The Lord of the Rings", "The Hunger Games", "The Shining", "The BFG Movie", "The Bad Beginning - A Series of Unfortunate Events", "And Then There Were None", "Miss Peregrine's Home for Peculiar Children", "Little Women"
                                       , "The Wonderful Wizard of Oz", "No Country For Old Men" ]
        
        //Catagories Array
        let CatagoriesOfBooks: [String] = ["๐ฉโ๐ซEducation", "๐Fiction&Literature", "๐ฉโโ๏ธPsychology", "๐ฉโ๐ณCookery", "๐ฑPets & Pet Care", "๐ฅBooks turned movies"]
        let AuthorsOfBooks: [String] = ["Agatha Christie", "Stephen King", "Gordon Ramsay", "Rick Riordan", "George Orwell"]
        
        
        
        
              
                

        //dictionary of Book or array of books
        switch seletion {
            
        case 1:
            
            
            var userInput = ""
       
            repeat {
                var i=0
                var j=1
       print ("\n     ๐THIS IS THE BOOK LIST TITLES๐")
            
                var Title = Book()
            while i<BookTitleList.count {
                Title.bookName = BookTitleList[i]
                print ("--------------------------------------------------------------------------")
                print("|","\(j)- | ๐\(Title.bookName)","|")
                i+=1
                j+=1
                print ("--------------------------------------------------------------------------")
            }
            //var choice=j
            //choice-=1
            //handling user input and printing his wanted result of book choice
            print ("๐Enter Your Choice of a book title๐:")
           // var k = 0
           // var found = false
                // var k=0
            UserInput3 = Int(readLine()!)
            if let UserChoice = UserInput3{

             //   print (UserInput3)
               // print((UserInput3!),"UR CHOICE")
                if (UserChoice <= BookTitleList.count )
                {
                    print ("\n โผ๏ธYou Chose the Book๐: \(BookTitleList[UserChoice-1])","โผ๏ธ")
                }
              
//                    if (BookTitleList[UserInput3]==UserInput3){
//                      // var found = true
//                        print ("found\(BookTitleList[k])")
//                    }
                    //  k+=1
                print ("""
                       \n Would You Like To ADD This Book to Your Favorite List of Books? ๐๐ค
                       \n 1. Yes
                       \n 2. No
                       Enter Your Choice:
                       """)
                
                UserInput3 = Int(readLine()!)
                if let UserFavChoice = UserInput3{
                    if (UserFavChoice == 1){
                        let FavBook = (BookTitleList[UserChoice-1])
                        //Book.FavBookList(Fav: FavBook)
                        print(Book.FavBookList(Fav: FavBook))
                    }
                    else if (UserFavChoice == 2) {
                        Menu().MainMenu()
                    }
                }
                print("Do You want to add an new book? please type: \n\n    โถ๏ธ yes \n\n    โถ๏ธ No ")
                if let input = readLine() {
                    userInput = input
                    
                }
                
            //}
            }
            else{
                print("The input is not a number enter again ")
            }
            
                if userInput == "No" {
                    print ("THEN YOU MUST WANT TO GO BACK TO THE MAINMENU, HERE U GO:")
                    Menu().MainMenu()
                }
            }while userInput != "No"

            
        case 2:
            var k=0
            var p=1
            
            print ("\n ๐THIS IS THE CATAGORIES OF BOOKS LIST๐")
            var Catagory = Book()
            while k<CatagoriesOfBooks.count {
                Catagory.CatagoreyName = CatagoriesOfBooks[k]
                print ("-------------------------------------------")
                print("|", "\(p)- | \(Catagory.CatagoreyName)" , "|")
                print ("-------------------------------------------")
                k+=1
                p+=1
               
            }
            print ("๐Enter Your Choice for a book catagory๐:")
            
            
            var order = 1
            UserInput3 = Int(readLine()!)
            if let UserChoice = UserInput3{
                if (UserChoice <= CatagoriesOfBooks.count )
                {
                    print ("You chosen Catagorey is: \(CatagoriesOfBooks[UserChoice-1])")
                    
                    switch CatagoriesOfBooks[UserChoice-1] {
                    case "๐ฉโ๐ซEducation":
                        print("\nWelcome To The Education Book Catagory")
                        print("๐BOOKS IN THIS CATAGORY๐:")
                       //print("the count of the array is : ")
                        //print(BookTitleList.count)
                        
                        //var order = 1
                        //Array for Education Book Catagory
                        var EducationCatagoreyArray: [String] = []
                        for (index, element) in BookTitleList.enumerated() {
                            if (index<10)
                            {
                                print ("-----------------------------------------------------------------------")
                                print("|", "\(order)- | ๐\(element)", "|")
                                print ("-----------------------------------------------------------------------")
                                order+=1
                                EducationCatagoreyArray.append(element)
                            }
                        }
                       // print("the count of the array is : ")
                        //print(EducationCatagoreyArray)
                        print ("๐Enter Your Choice of a book title๐:")
                        UserInput3 = Int(readLine()!)
                        if let ChoiceEduBook = UserInput3{
                            print ("\n โผ๏ธYou Chose the Book๐: \(EducationCatagoreyArray[ChoiceEduBook-1])","โผ๏ธ")
                            
                        }
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?๐
                               \n 1. Yes
                               \n 2. No
                               Enter Your Choice:
                               """)
                        
                        UserInput3 = Int(readLine()!)
                        if let UserWantChoice = UserInput3{
                            if (UserWantChoice == 1){
                                Menu().MainMenu()
                            }
                            else if (UserWantChoice == 2) {
                                print("\nBye Bey Dear Friend โป ")
                            }
                        }
                     
                    case "๐Fiction&Literature":
 
                        print("\nWelcome To The Fiction& Literature Book Catagory")
                        print("๐BOOKS IN THIS CATAGORY๐:")
                        //Array for Fic&Literature Book Catagorey
                        var fictionLiteratureCatagoreyArray: [String] = []
                        for (index, element) in BookTitleList.enumerated() {
                            if (index>=10 && index<20)
                            {
                                print ("-----------------------------------------------------------------------")
                                print("|", "\(order)- |๐\(element)", "|")
                                print ("-----------------------------------------------------------------------")
                                order+=1
                                fictionLiteratureCatagoreyArray.append(element)
                            }
                        }
                        print ("๐Enter Your Choice of a book title๐:")
                        UserInput3 = Int(readLine()!)
                        if let ChoiceFicLiteratureBook = UserInput3{
                            print ("\n โผ๏ธYou Chose the Book๐: \(fictionLiteratureCatagoreyArray[ChoiceFicLiteratureBook-1])", "โผ๏ธ")
                            
                        }
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?๐
                               \n 1. Yes
                               \n 2. No
                               Enter Your Choice:
                               """)
                        
                        UserInput3 = Int(readLine()!)
                        if let UserWantChoice = UserInput3{
                            if (UserWantChoice == 1){
                                Menu().MainMenu()
                            }
                            else if (UserWantChoice == 2) {
                                print("\nBye Bey Dear Friend โป ")
                            }
                        }
                
                    case "๐ฉโโ๏ธPsychology":
                        
                        print("\nWelcome To The Psychology Book Catagory")
                        print("๐BOOKS IN THIS CATAGORY๐:")
                        var psychologyCatagoreyArray: [String] = []
                        for (index, element) in BookTitleList.enumerated() {
                            if (index>=20 && index<30)
                            {
                                print ("-----------------------------------------------------------------------")
                                print("|","\(order)- ๐\(element)","|")
                                print ("-----------------------------------------------------------------------")
                                order+=1
                                psychologyCatagoreyArray.append(element)
                            }
                        }
                        print ("๐Enter Your Choice of a book title๐:")
                        UserInput3 = Int(readLine()!)
                        if let ChoicePsychologyBook = UserInput3{
                            print ("\n โผ๏ธYou Chose the Book๐: \(psychologyCatagoreyArray[ChoicePsychologyBook-1])","โผ๏ธ")
                            
                        }
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?๐
                               \n 1. Yes
                               \n 2. No
                               Enter Your Choice:
                               """)
                        
                        UserInput3 = Int(readLine()!)
                        if let UserWantChoice = UserInput3{
                            if (UserWantChoice == 1){
                                Menu().MainMenu()
                            }
                            else if (UserWantChoice == 2) {
                                print("\nBye Bey Dear Friend โป ")
                            }
                        }
                        
              case "๐ฉโ๐ณCookery":
                        print("\nWelcome To The Cookery Book Catagory")
                        print("๐BOOKS IN THIS CATAGORY๐:")
                        var cookeryCatagoreyArray: [String] = []
                        for (index, element) in BookTitleList.enumerated() {
                            if (index>=30 && index<40)
                            {
                                print ("-----------------------------------------------------------------------")
                                print("|", "\(order)- |๐\(element)","|")
                                print ("-----------------------------------------------------------------------")
                                order+=1
                                cookeryCatagoreyArray.append(element)
                            }
                        }
                        print ("๐Enter Your Choice of a book title๐:")
                        UserInput3 = Int(readLine()!)
                        if let ChoiceCookeryBook = UserInput3{
                            print ("\n โผ๏ธYou Chose the Book๐: \(cookeryCatagoreyArray[ChoiceCookeryBook-1])","โผ๏ธ")
                            
                        }
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?๐
                               \n 1. Yes
                               \n 2. No
                               Enter Your Choice:
                               """)
                        
                        UserInput3 = Int(readLine()!)
                        if let UserWantChoice = UserInput3{
                            if (UserWantChoice == 1){
                                Menu().MainMenu()
                            }
                            else if (UserWantChoice == 2) {
                                print("\nBye Bey Dear Friend โป ")
                            }
                        }
                        
                    case "๐ฑPets & Pet Care":
                        
                        print("\nWelcome To The Pets & Pet Care Book Catagory")
                        print("๐BOOKS IN THIS CATAGORY๐:")
                        var petsCatagoreyArray: [String] = []
                        for (index, element) in BookTitleList.enumerated() {
                            if (index>=40 && index<50)
                            {
                                print ("-----------------------------------------------------------------------")
                                print("|","\(order)- |๐\(element)","|")
                                print ("-----------------------------------------------------------------------")
                                order+=1
                                petsCatagoreyArray.append(element)
                            }
                        }
                        print ("๐Enter Your Choice of a book title๐:")
                        UserInput3 = Int(readLine()!)
                        if let ChoicePetsBook = UserInput3{
                            print ("\n โผ๏ธYou Chose the Book๐: \(petsCatagoreyArray[ChoicePetsBook-1])", "โผ๏ธ")
                            
                        }
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?๐
                               \n 1. Yes
                               \n 2. No
                               Enter Your Choice:
                               """)
                        
                        UserInput3 = Int(readLine()!)
                        if let UserWantChoice = UserInput3{
                            if (UserWantChoice == 1){
                                Menu().MainMenu()
                            }
                            else if (UserWantChoice == 2) {
                                print("\nBye Bey Dear Friend โป ")
                            }
                        }
                        
                    case "๐ฅBooks turned movies":
                        
                        print("\nWelcome To The Books turned movies Book Catagory")
                        print("๐BOOKS IN THIS CATAGORY๐:")
                        var booksTurnedMoviesCatagoreyArray: [String] = []
                        for (index, element) in BookTitleList.enumerated() {
                            if (index>=50 && index<60)
                            {
                                print ("-----------------------------------------------------------------------")
                                print("\(order)- \(element)")
                                print ("-----------------------------------------------------------------------")
                                order+=1
                                booksTurnedMoviesCatagoreyArray.append(element)
                            }
                        }
                        print ("๐Enter Your Choice of a book title๐:")
                        UserInput3 = Int(readLine()!)
                        if let ChoiceBooksTurnedMoviesBook = UserInput3{
                            print ("\n โผ๏ธYou Chose the Book๐: \(booksTurnedMoviesCatagoreyArray[ChoiceBooksTurnedMoviesBook-1])","โผ๏ธ")
                            
                        }
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?๐
                               \n 1. Yes
                               \n 2. No
                               Enter Your Choice:
                               """)
                        
                        UserInput3 = Int(readLine()!)
                        if let UserWantChoice = UserInput3{
                            if (UserWantChoice == 1){
                                Menu().MainMenu()
                            }
                            else if (UserWantChoice == 2) {
                                print("\nBye Bey Dear Friend โป ")
                            }
                        }

                        
                        
                    default:
                        print(" no catagory match")
                    }
                    
                }
            }
            else{
                print("The input is not a number enter again ")
            }
            
        case 3:
          var a=0
          var b=1
            print ("\n๐THIS IS BOOKS LIST BASED ON AUTHORS๐")
                 var Author = Book()
                 while a<AuthorsOfBooks.count {
                     Author.AuthorName = AuthorsOfBooks[a]
                     print ("-----------------------------------------------------------------------")
                     print("|","\(b)- |๐โ๏ธ \(Author.AuthorName)","|")
                     print ("-----------------------------------------------------------------------")
                     a+=1
                     b+=1
                 }
            
            print ("Enter Your Choice for a book Author๐โ๏ธ:")
            //Case 3 Code Starts Here
     
            var authorOrder = 1
            UserInput3 = Int(readLine()!)
            if let UserChoiceForAuthor = UserInput3{
                if (UserChoiceForAuthor <= AuthorsOfBooks.count )
                {
                    print ("\n โผ๏ธYou Chose the Author๐: \(AuthorsOfBooks[UserChoiceForAuthor-1])","โผ๏ธ")
                    
                    switch AuthorsOfBooks[UserChoiceForAuthor-1] {
                        
                    case "Agatha Christie":
                        print("\n๐AGATHA CHRISTIE BOOK LIST๐ฉโ๐ผ๐:")
                        
                        let AgathaChristieBooks: [String] = ["The Unexpected Guest", "Elephants Can Remember", "Crooked House"
                                                             ,"One,Two,Buckle My Shoe", "The ABC Murders"]
                        
                        
                        for (index, element) in AgathaChristieBooks.enumerated() {
                            print ("-----------------------------------------------------------------------")
                            print("|", "\(authorOrder)- |๐\(element)","|")
                            print ("-----------------------------------------------------------------------")
                            authorOrder+=1
                            
                        }
                        print ("๐Enter Your Choice of Agatha Christie Book๐:")
                        UserInput3 = Int(readLine()!)
                        if let ChoiceAgathaAuthor = UserInput3{
                            print ("\n โผ๏ธYou Chose the Book๐: \(AgathaChristieBooks[ChoiceAgathaAuthor-1])","โผ๏ธ")
                            
                        }
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?๐
                               \n 1. Yes
                               \n 2. No
                               Enter Your Choice:
                               """)
                        
                        UserInput3 = Int(readLine()!)
                        if let UserWantChoice = UserInput3{
                            if (UserWantChoice == 1){
                                Menu().MainMenu()
                            }
                            else if (UserWantChoice == 2) {
                                print("\nBye Bey Dear Friend โป ")
                            }
                        }
                        
                    case "Stephen King":
                        print("\n๐STEPHEN KING BOOK LIST๐จโ๐ฆณ๐:")
                        let StephenKingBooks: [String] = ["It - You'll Float Too", "The Bazaar of Bad Dreams - Stories", "Full Dark, No Stars"
                                                          ,"The Shining", "Lisey's Story"]
                        for (index, element) in StephenKingBooks.enumerated() {
                            print ("-----------------------------------------------------------------------")
                            print("|","\(authorOrder)- |๐\(element)","|")
                            print ("-----------------------------------------------------------------------")
                            authorOrder+=1
                            
                        }
                        print ("๐Enter Your Choice of Stephen King Book๐:")
                        UserInput3 = Int(readLine()!)
                        if let ChoiceStephenAuthor = UserInput3{
                            print ("\n โผ๏ธYou Chose the Book๐: \(StephenKingBooks[ChoiceStephenAuthor-1])","โผ๏ธ")
                            
                        }
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?๐
                               \n 1. Yes
                               \n 2. No
                               Enter Your Choice:
                               """)
                        
                        UserInput3 = Int(readLine()!)
                        if let UserWantChoice = UserInput3{
                            if (UserWantChoice == 1){
                                Menu().MainMenu()
                            }
                            else if (UserWantChoice == 2) {
                                print("\nBye Bey Dear Friend โป ")
                            }
                        }
 
                        
                    case "Gordon Ramsay":
                        print("\n๐GORDON RAMSAY BOOK LIST๐จโ๐ฆณ๐:") //BOOKS IN THE COOKERY CATAGORY
                        let GordonRamsayBooks: [String] = ["Gordon Ramsay Make It Easy", "In The Heat Of The Kitchen "
                                                           , "Gordon Ramsayโs Healtht Appetite ", "Roasting In Hellโs Kitchen (AKA Humble Pie)"
                                                           , "Passion For Flavour"]
                        for (index, element) in GordonRamsayBooks.enumerated() {
                            print ("-----------------------------------------------------------------------")
                            print("|","\(authorOrder)- |๐\(element)","|")
                            print ("-----------------------------------------------------------------------")
                            authorOrder+=1
                        }
                        print ("๐Enter Your Choice from Gordon Ramsay Books๐:")
                        UserInput3 = Int(readLine()!)
                        if let ChoiceGordonAuthor = UserInput3{
                            print ("\n โผ๏ธYou Chose the Book๐: \(GordonRamsayBooks[ChoiceGordonAuthor-1])","โผ๏ธ")
                        }
                        
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?๐
                               \n 1. Yes
                               \n 2. No
                               Enter Your Choice:
                               """)
                        
                        UserInput3 = Int(readLine()!)
                        if let UserWantChoice = UserInput3{
                            if (UserWantChoice == 1){
                                Menu().MainMenu()
                            }
                            else if (UserWantChoice == 2) {
                                print("\nBye Bey Dear Friend โป ")
                            }
                        }
                        
                    case "Rick Riordan" :
                        print("\n๐RICK RIORDAN BOOK LIST๐จโ๐ฆณ๐:")
                        let RickRiordanBooks: [String] = ["The Lightning Thief", "The Sea of Monsters"
                                                           , "The Son of Neptune", "The Lost Hero"
                                                           , "The Hidden Oracle"]
                        for (index, element) in RickRiordanBooks.enumerated() {
                            print ("-----------------------------------------------------------------------")
                            print("|","\(authorOrder)- |๐\(element)","|")
                            print ("-----------------------------------------------------------------------")
                            authorOrder+=1
                        }
                        print ("๐Enter Your Choice from Rick Riordan Books๐:")
                        UserInput3 = Int(readLine()!)
                        if let ChoiceRickAuthor = UserInput3{
                            print ("\n โผ๏ธYou Chose the Book๐: \(RickRiordanBooks[ChoiceRickAuthor-1])","โผ๏ธ")
                        }
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?๐
                               \n 1. Yes
                               \n 2. No
                               Enter Your Choice:
                               """)
                        
                        UserInput3 = Int(readLine()!)
                        if let UserWantChoice = UserInput3{
                            if (UserWantChoice == 1){
                                Menu().MainMenu()
                            }
                            else if (UserWantChoice == 2) {
                                print("\nBye Bey Dear Friend โป ")
                            }
                        }
                    case "George Orwell":
                        print("\n๐GEORGE ORWELL BOOK LIST๐จโ๐ฆณ๐:")
                        let GeorgeOrwellBooks: [String] = ["1984", "Animal Farm", "Coming Up For Air"]
                        for (index, element) in GeorgeOrwellBooks.enumerated() {
                            print ("-----------------------------------------------------------------------")
                            print("|","\(authorOrder)- |๐\(element)","|")
                            print ("-----------------------------------------------------------------------")
                            authorOrder+=1
                        }
                        print ("๐Enter Your Choice from George Orwell Books๐:")
                        UserInput3 = Int(readLine()!)
                        if let ChoiceGeorgeAuthor = UserInput3{
                            print ("\n โผ๏ธYou Chose the Book๐: \(GeorgeOrwellBooks[ChoiceGeorgeAuthor-1])","โผ๏ธ")
                        }
                        
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?๐
                               \n 1. Yes
                               \n 2. No
                               Enter Your Choice:
                               """)
                        
                        UserInput3 = Int(readLine()!)
                        if let UserWantChoice = UserInput3{
                            if (UserWantChoice == 1){
                                Menu().MainMenu()
                            }
                            else if (UserWantChoice == 2) {
                                print("\nBye Bey Dear Friend โป ")
                            }
                        }
                        
                    default:
                        print(" no Author match")
                    }
                    
                }
            }
            else{
                print("The input is not a number for any author enter again dumpy")
            }
            
            
            //Case 3 code ends here
         //This default for the outer switch
        default:
            print("kk")
        }

        return ("Hi 2")
        
    }
    
    
  
    
    static func FavBookList ( Fav : String) -> String {
        
      print("Your Favourite Booklist๐๐ค")
        FavArr.append(Fav)
        for index in 0..<FavArr.count {
            print ("-----------------------------------------------------------------------")
            print("|",index+1,"|", FavArr[index],"|")
            print ("-----------------------------------------------------------------------")
            
        }
        
        return ("")
        
    }
    
}//end of struct

class Menu {
 func MainMenu(){

print ("""
        |-------------------------------------------------------------------------------|
        |                    ๐WELCOME TO THE BOOK LIBRARY, YOUR๐                      |
        |                                                                               |
        |                     โถ๏ธ 1. Search for a Book ๐๐                               |
        |                                                                               |
        |                     โถ๏ธ 2. Add a Book to Your Favourite Booklist๐๐ค            |
        |                                                                               |
        |                     โถ๏ธ 3. Exit โจ                                               |
        |                                                                               |
        |-------------------------------------------------------------------------------|
                                ------------------------------------
                               | Enter The Number of Your Option    |
                                ------------------------------------
""")



//print (Book.FavBookList)
var UserInput:Int?
UserInput = Int(readLine()!)

if UserInput != nil{
    print("                                   โผ๏ธYour Entered Option is: ", UserInput! , "โผ๏ธ")

    if UserInput == 1{
        Book.StartingMenuInput(choice: 1)
    }
    else if UserInput == 2{
        Book.SearchForBook(seletion: 1)
    }
    else if UserInput == 3{
        Book.StartingMenuInput(choice: 3)
    }
}
else{
    print("The input is not a number")
}
}//main menu
}//end of class Menu
let WelcomePage = Menu().MainMenu()
var Welcome = WelcomePage
print(Welcome)





//struct BookInfo {
//    var bookname : String  = ""
//    var authorName : String = ""
//}
//
//
//let book1 = BookInfo(bookname: <#T##String#>, authorName: <#T##String#>)
//let book1 = BookInfo(bookname: <#T##String#>, authorName: <#T##String#>)
//
//let arr = [book1 , book2]

//struct BookTitle {
//
//    var bookName : String  = ""
//
//}

//struct BookInfo{
//    //
//    var bookName : String  = "" //filled this propertey from the array
//    var CatagoreyName : String  = ""
//    var AuthorName : String = ""
//
//
//}
