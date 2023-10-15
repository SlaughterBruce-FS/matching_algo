//
//  ContentView.swift
//  matching
//
//  Created by J C on 9/17/23.
//

import SwiftUI

struct ContentView: View {
    

    let users: [User]
    let currentuser = User.MOCK_USER_1

    var body: some View {
        VStack {
           // create a button to run my function
            Button("Find My Matches") {
                // find matches
                           let matches = findMyMatch()
                //pass matches to my display matches function
                            displayMatches(matches: matches)
                        }
            
        }
        .padding()
    }
}

//create an function that will return an array of user and percentage match
extension ContentView{ func findMyMatch() -> [(User, Double)] {
    //create the variable to hold the matched users
    var matchingUsers: [(User, Double)] = []
        
    // loop through the users
        for potentialUser in users{
            // check if the current user id is not equal to the user id
            if currentuser.id != potentialUser.id {
                // check if the current user interest is the potential user sex and if they are looking for the same type of relationship
                if currentuser.interestedIn == potentialUser.sex && currentuser.relationshipType == potentialUser.relationshipType {
//                    print("\(currentuser.username) and \(potentialUser.username) are a potential match")
//
                    // declare a points variable thats equal to 0
                    var points = 0
                    
                    // run if statements to see if the interest match if itt does add 1 point
                    if currentuser.romance == potentialUser.romance {
                        points += 1
                    }
                    
                    if currentuser.scaryMovies == potentialUser.scaryMovies{
                        points += 1
                    }
                    
                    if currentuser.comedyMovies == potentialUser.comedyMovies{
                        points += 1
                    }
                    
                    if currentuser.dancing == potentialUser.dancing {
                        points += 1
                    }
                    
                    if currentuser.italianFood == potentialUser.italianFood{
                        points += 1
                    }
                    
                    if currentuser.steakhouse == potentialUser.steakhouse{
                        points += 1
                    }
                    
                    if currentuser.seaFood == potentialUser.seaFood{
                        points += 1
                    }
                    
                    if currentuser.typeOfDate == potentialUser.typeOfDate {
                        points += 1
                    }
                    
                    // check to see if the points are adding up
                    print("\(potentialUser.username)  \(points)" )
                    
                    // then find the percentage of matching questions
                    let percentageMatch = (Double(points) / 8) * 100
                    
                    // add the user to my matching user array
                    matchingUsers.append((potentialUser, percentageMatch))
                
                }
                   
            }
            
          
        }

        // sort the array of matchingusers by the highest percentage first
        matchingUsers.sort {$0.1 > $1.1}

    // return the array of match user
    return matchingUsers
}
    
    // create a function to display the info to the console it will take in our user and percentage
    func displayMatches( matches: [(User, Double)]){
        // loop through the list of potential users
        for (potentialUser, percentageMatch) in matches{
            // print the info to the console
            print("\(currentuser.username)...  \(potentialUser.username) is a \(percentageMatch)% match")
            
            
            
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let users: [User] = [
            .MOCK_USER,
            .MOCK_USER_1,
            .MOCK_USER_2,
            .MOCK_USER_3
        ]

        return ContentView(users: users)
    }
}
