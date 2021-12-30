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
                    |                 📚Search Using the method match to Your liking📚              |
                    |                                                                               |
                    |                     ▶︎ 1. Search for a book by title. 🔍📙                     |
                    |                                                                               |
                    |                     ▶︎ 2. Search for a book by a category.🔍🗂                 |
                    |                                                                               |
                    |                     ▶︎ 3. Search for a book by author name." 🔍 👩‍🎨             |
                    |                                                                               |
                    |-------------------------------------------------------------------------------|
                                            ------------------------------------
                                           | Enter The Number of Your Option    |
                                            ------------------------------------
            """)
            
            
            
          // selection = Book.SearchForBook (seletion)
            UserInput2 = Int(readLine()!)
            
            
            if UserInput2 != nil{
                print("                                   ◼︎Your Entered Option is: ", UserInput2! , "◼︎")
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
                   \n                                   You Sure wanna Exit This Incredible Program? ☻
                   \n                                       ▶︎ Yes, I'm not into Books
                   \n                                       ▶︎ No, I changed my mind this looks Awesome
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
                print ("                                     ☹︎ Bye Bye Dear Friend ☹︎")
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
        let CatagoriesOfBooks: [String] = ["👩‍🏫Education", "🌌Fiction&Literature", "👩‍⚕️Psychology", "👩‍🍳Cookery", "🐱Pets & Pet Care", "🎥Books turned movies"]
        let AuthorsOfBooks: [String] = ["Agatha Christie", "Stephen King", "Gordon Ramsay", "Rick Riordan", "George Orwell"]
        
        
        
        
              
                

        //dictionary of Book or array of books
        switch seletion {
            
        case 1:
            
            
            var userInput = ""
       
            repeat {
                var i=0
                var j=1
       print ("\n     📚THIS IS THE BOOK LIST TITLES📚")
            
                var Title = Book()
            while i<BookTitleList.count {
                Title.bookName = BookTitleList[i]
                print ("--------------------------------------------------------------------------")
                print("|","\(j)- | 📘\(Title.bookName)","|")
                i+=1
                j+=1
                print ("--------------------------------------------------------------------------")
            }
            //var choice=j
            //choice-=1
            //handling user input and printing his wanted result of book choice
            print ("📘Enter Your Choice of a book title📘:")
           // var k = 0
           // var found = false
                // var k=0
            UserInput3 = Int(readLine()!)
            if let UserChoice = UserInput3{

             //   print (UserInput3)
               // print((UserInput3!),"UR CHOICE")
                if (UserChoice <= BookTitleList.count )
                {
                    print ("\n ◼︎You Chose the Book📘: \(BookTitleList[UserChoice-1])","◼︎")
                }
              
//                    if (BookTitleList[UserInput3]==UserInput3){
//                      // var found = true
//                        print ("found\(BookTitleList[k])")
//                    }
                    //  k+=1
                print ("""
                       \n Would You Like To ADD This Book to Your Favorite List of Books? 📙🤍
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
                print("Do You want to add an new book? please type: \n\n    ▶︎ yes \n\n    ▶︎ No ")
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
            
            print ("\n 📚THIS IS THE CATAGORIES OF BOOKS LIST📚")
            var Catagory = Book()
            while k<CatagoriesOfBooks.count {
                Catagory.CatagoreyName = CatagoriesOfBooks[k]
                print ("-------------------------------------------")
                print("|", "\(p)- | \(Catagory.CatagoreyName)" , "|")
                print ("-------------------------------------------")
                k+=1
                p+=1
               
            }
            print ("📕Enter Your Choice for a book catagory📕:")
            
            
            var order = 1
            UserInput3 = Int(readLine()!)
            if let UserChoice = UserInput3{
                if (UserChoice <= CatagoriesOfBooks.count )
                {
                    print ("You chosen Catagorey is: \(CatagoriesOfBooks[UserChoice-1])")
                    
                    switch CatagoriesOfBooks[UserChoice-1] {
                    case "👩‍🏫Education":
                        print("\nWelcome To The Education Book Catagory")
                        print("📚BOOKS IN THIS CATAGORY📚:")
                       //print("the count of the array is : ")
                        //print(BookTitleList.count)
                        
                        //var order = 1
                        //Array for Education Book Catagory
                        var EducationCatagoreyArray: [String] = []
                        for (index, element) in BookTitleList.enumerated() {
                            if (index<10)
                            {
                                print ("-----------------------------------------------------------------------")
                                print("|", "\(order)- | 📕\(element)", "|")
                                print ("-----------------------------------------------------------------------")
                                order+=1
                                EducationCatagoreyArray.append(element)
                            }
                        }
                       // print("the count of the array is : ")
                        //print(EducationCatagoreyArray)
                        print ("📕Enter Your Choice of a book title📕:")
                        UserInput3 = Int(readLine()!)
                        if let ChoiceEduBook = UserInput3{
                            print ("\n ◼︎You Chose the Book📕: \(EducationCatagoreyArray[ChoiceEduBook-1])","◼︎")
                            
                        }
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?📙
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
                                print("\nBye Bey Dear Friend ☻ ")
                            }
                        }
                     
                    case "🌌Fiction&Literature":
 
                        print("\nWelcome To The Fiction& Literature Book Catagory")
                        print("📚BOOKS IN THIS CATAGORY📚:")
                        //Array for Fic&Literature Book Catagorey
                        var fictionLiteratureCatagoreyArray: [String] = []
                        for (index, element) in BookTitleList.enumerated() {
                            if (index>=10 && index<20)
                            {
                                print ("-----------------------------------------------------------------------")
                                print("|", "\(order)- |📗\(element)", "|")
                                print ("-----------------------------------------------------------------------")
                                order+=1
                                fictionLiteratureCatagoreyArray.append(element)
                            }
                        }
                        print ("📗Enter Your Choice of a book title📗:")
                        UserInput3 = Int(readLine()!)
                        if let ChoiceFicLiteratureBook = UserInput3{
                            print ("\n ◼︎You Chose the Book📗: \(fictionLiteratureCatagoreyArray[ChoiceFicLiteratureBook-1])", "◼︎")
                            
                        }
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?📙
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
                                print("\nBye Bey Dear Friend ☻ ")
                            }
                        }
                
                    case "👩‍⚕️Psychology":
                        
                        print("\nWelcome To The Psychology Book Catagory")
                        print("📚BOOKS IN THIS CATAGORY📚:")
                        var psychologyCatagoreyArray: [String] = []
                        for (index, element) in BookTitleList.enumerated() {
                            if (index>=20 && index<30)
                            {
                                print ("-----------------------------------------------------------------------")
                                print("|","\(order)- 📔\(element)","|")
                                print ("-----------------------------------------------------------------------")
                                order+=1
                                psychologyCatagoreyArray.append(element)
                            }
                        }
                        print ("📔Enter Your Choice of a book title📔:")
                        UserInput3 = Int(readLine()!)
                        if let ChoicePsychologyBook = UserInput3{
                            print ("\n ◼︎You Chose the Book📔: \(psychologyCatagoreyArray[ChoicePsychologyBook-1])","◼︎")
                            
                        }
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?📙
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
                                print("\nBye Bey Dear Friend ☻ ")
                            }
                        }
                        
              case "👩‍🍳Cookery":
                        print("\nWelcome To The Cookery Book Catagory")
                        print("📚BOOKS IN THIS CATAGORY📚:")
                        var cookeryCatagoreyArray: [String] = []
                        for (index, element) in BookTitleList.enumerated() {
                            if (index>=30 && index<40)
                            {
                                print ("-----------------------------------------------------------------------")
                                print("|", "\(order)- |📒\(element)","|")
                                print ("-----------------------------------------------------------------------")
                                order+=1
                                cookeryCatagoreyArray.append(element)
                            }
                        }
                        print ("📒Enter Your Choice of a book title📒:")
                        UserInput3 = Int(readLine()!)
                        if let ChoiceCookeryBook = UserInput3{
                            print ("\n ◼︎You Chose the Book📒: \(cookeryCatagoreyArray[ChoiceCookeryBook-1])","◼︎")
                            
                        }
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?📙
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
                                print("\nBye Bey Dear Friend ☻ ")
                            }
                        }
                        
                    case "🐱Pets & Pet Care":
                        
                        print("\nWelcome To The Pets & Pet Care Book Catagory")
                        print("📚BOOKS IN THIS CATAGORY📚:")
                        var petsCatagoreyArray: [String] = []
                        for (index, element) in BookTitleList.enumerated() {
                            if (index>=40 && index<50)
                            {
                                print ("-----------------------------------------------------------------------")
                                print("|","\(order)- |📘\(element)","|")
                                print ("-----------------------------------------------------------------------")
                                order+=1
                                petsCatagoreyArray.append(element)
                            }
                        }
                        print ("📘Enter Your Choice of a book title📘:")
                        UserInput3 = Int(readLine()!)
                        if let ChoicePetsBook = UserInput3{
                            print ("\n ◼︎You Chose the Book📘: \(petsCatagoreyArray[ChoicePetsBook-1])", "◼︎")
                            
                        }
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?📙
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
                                print("\nBye Bey Dear Friend ☻ ")
                            }
                        }
                        
                    case "🎥Books turned movies":
                        
                        print("\nWelcome To The Books turned movies Book Catagory")
                        print("📚BOOKS IN THIS CATAGORY📚:")
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
                        print ("📓Enter Your Choice of a book title📓:")
                        UserInput3 = Int(readLine()!)
                        if let ChoiceBooksTurnedMoviesBook = UserInput3{
                            print ("\n ◼︎You Chose the Book📓: \(booksTurnedMoviesCatagoreyArray[ChoiceBooksTurnedMoviesBook-1])","◼︎")
                            
                        }
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?📙
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
                                print("\nBye Bey Dear Friend ☻ ")
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
            print ("\n📚THIS IS BOOKS LIST BASED ON AUTHORS📚")
                 var Author = Book()
                 while a<AuthorsOfBooks.count {
                     Author.AuthorName = AuthorsOfBooks[a]
                     print ("-----------------------------------------------------------------------")
                     print("|","\(b)- |📖✍️ \(Author.AuthorName)","|")
                     print ("-----------------------------------------------------------------------")
                     a+=1
                     b+=1
                 }
            
            print ("Enter Your Choice for a book Author📖✍️:")
            //Case 3 Code Starts Here
     
            var authorOrder = 1
            UserInput3 = Int(readLine()!)
            if let UserChoiceForAuthor = UserInput3{
                if (UserChoiceForAuthor <= AuthorsOfBooks.count )
                {
                    print ("\n ◼︎You Chose the Author📖: \(AuthorsOfBooks[UserChoiceForAuthor-1])","◼︎")
                    
                    switch AuthorsOfBooks[UserChoiceForAuthor-1] {
                        
                    case "Agatha Christie":
                        print("\n📚AGATHA CHRISTIE BOOK LIST👩‍💼📚:")
                        
                        let AgathaChristieBooks: [String] = ["The Unexpected Guest", "Elephants Can Remember", "Crooked House"
                                                             ,"One,Two,Buckle My Shoe", "The ABC Murders"]
                        
                        
                        for (index, element) in AgathaChristieBooks.enumerated() {
                            print ("-----------------------------------------------------------------------")
                            print("|", "\(authorOrder)- |📙\(element)","|")
                            print ("-----------------------------------------------------------------------")
                            authorOrder+=1
                            
                        }
                        print ("📙Enter Your Choice of Agatha Christie Book📙:")
                        UserInput3 = Int(readLine()!)
                        if let ChoiceAgathaAuthor = UserInput3{
                            print ("\n ◼︎You Chose the Book📙: \(AgathaChristieBooks[ChoiceAgathaAuthor-1])","◼︎")
                            
                        }
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?📙
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
                                print("\nBye Bey Dear Friend ☻ ")
                            }
                        }
                        
                    case "Stephen King":
                        print("\n📚STEPHEN KING BOOK LIST👨‍🦳📚:")
                        let StephenKingBooks: [String] = ["It - You'll Float Too", "The Bazaar of Bad Dreams - Stories", "Full Dark, No Stars"
                                                          ,"The Shining", "Lisey's Story"]
                        for (index, element) in StephenKingBooks.enumerated() {
                            print ("-----------------------------------------------------------------------")
                            print("|","\(authorOrder)- |📓\(element)","|")
                            print ("-----------------------------------------------------------------------")
                            authorOrder+=1
                            
                        }
                        print ("📓Enter Your Choice of Stephen King Book📓:")
                        UserInput3 = Int(readLine()!)
                        if let ChoiceStephenAuthor = UserInput3{
                            print ("\n ◼︎You Chose the Book📓: \(StephenKingBooks[ChoiceStephenAuthor-1])","◼︎")
                            
                        }
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?📙
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
                                print("\nBye Bey Dear Friend ☻ ")
                            }
                        }
 
                        
                    case "Gordon Ramsay":
                        print("\n📚GORDON RAMSAY BOOK LIST👨‍🦳📚:") //BOOKS IN THE COOKERY CATAGORY
                        let GordonRamsayBooks: [String] = ["Gordon Ramsay Make It Easy", "In The Heat Of The Kitchen "
                                                           , "Gordon Ramsay’s Healtht Appetite ", "Roasting In Hell’s Kitchen (AKA Humble Pie)"
                                                           , "Passion For Flavour"]
                        for (index, element) in GordonRamsayBooks.enumerated() {
                            print ("-----------------------------------------------------------------------")
                            print("|","\(authorOrder)- |📔\(element)","|")
                            print ("-----------------------------------------------------------------------")
                            authorOrder+=1
                        }
                        print ("📔Enter Your Choice from Gordon Ramsay Books📔:")
                        UserInput3 = Int(readLine()!)
                        if let ChoiceGordonAuthor = UserInput3{
                            print ("\n ◼︎You Chose the Book📔: \(GordonRamsayBooks[ChoiceGordonAuthor-1])","◼︎")
                        }
                        
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?📙
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
                                print("\nBye Bey Dear Friend ☻ ")
                            }
                        }
                        
                    case "Rick Riordan" :
                        print("\n📚RICK RIORDAN BOOK LIST👨‍🦳📚:")
                        let RickRiordanBooks: [String] = ["The Lightning Thief", "The Sea of Monsters"
                                                           , "The Son of Neptune", "The Lost Hero"
                                                           , "The Hidden Oracle"]
                        for (index, element) in RickRiordanBooks.enumerated() {
                            print ("-----------------------------------------------------------------------")
                            print("|","\(authorOrder)- |📕\(element)","|")
                            print ("-----------------------------------------------------------------------")
                            authorOrder+=1
                        }
                        print ("📕Enter Your Choice from Rick Riordan Books📕:")
                        UserInput3 = Int(readLine()!)
                        if let ChoiceRickAuthor = UserInput3{
                            print ("\n ◼︎You Chose the Book📕: \(RickRiordanBooks[ChoiceRickAuthor-1])","◼︎")
                        }
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?📙
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
                                print("\nBye Bey Dear Friend ☻ ")
                            }
                        }
                    case "George Orwell":
                        print("\n📚GEORGE ORWELL BOOK LIST👨‍🦳📚:")
                        let GeorgeOrwellBooks: [String] = ["1984", "Animal Farm", "Coming Up For Air"]
                        for (index, element) in GeorgeOrwellBooks.enumerated() {
                            print ("-----------------------------------------------------------------------")
                            print("|","\(authorOrder)- |📗\(element)","|")
                            print ("-----------------------------------------------------------------------")
                            authorOrder+=1
                        }
                        print ("📗Enter Your Choice from George Orwell Books📗:")
                        UserInput3 = Int(readLine()!)
                        if let ChoiceGeorgeAuthor = UserInput3{
                            print ("\n ◼︎You Chose the Book📗: \(GeorgeOrwellBooks[ChoiceGeorgeAuthor-1])","◼︎")
                        }
                        
                        print ("""
                               \n Would You Like To Go Back To The Main Menu?📙
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
                                print("\nBye Bey Dear Friend ☻ ")
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
        
      print("Your Favourite Booklist📙🤍")
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
        |                    📚WELCOME TO THE BOOK LIBRARY, YOUR📚                      |
        |                                                                               |
        |                     ▶︎ 1. Search for a Book 🔍📕                               |
        |                                                                               |
        |                     ▶︎ 2. Add a Book to Your Favourite Booklist📙🤍            |
        |                                                                               |
        |                     ▶︎ 3. Exit ⍨                                               |
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
    print("                                   ◼︎Your Entered Option is: ", UserInput! , "◼︎")

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
