//
//  User.swift
//  matching
//
//  Created by J C on 9/17/23.
//

import Foundation


struct User: Codable, Identifiable, Hashable {
    var id = UUID().uuidString
    var username: String
    var sex: String
    var interestedIn: String
    var relationshipType: String
    var dateRange: String
    var profilePhotoUrl: String?
    var bio: String?
    var romance: Bool
    var scaryMovies: Bool
    var comedyMovies: Bool
    var dancing: Bool
    var italianFood: Bool
    var seaFood: Bool
    var steakhouse: Bool
    var typeOfDate: String
    
    
}

extension User {
    static let MOCK_USER = User(username: "janie23", sex: "female", interestedIn: "male", relationshipType: "long term", dateRange: "20s", romance: true, scaryMovies: true, comedyMovies: false, dancing: true, italianFood: true, seaFood: false, steakhouse: false, typeOfDate: "dinner"  )
    
    static let MOCK_USER_1 = User(username: "jimmy", sex: "male", interestedIn: "female", relationshipType: "long term", dateRange: "20s", romance: true, scaryMovies: false, comedyMovies: true, dancing: false, italianFood: true, seaFood: true, steakhouse: false, typeOfDate: "dinner")
    
    static let MOCK_USER_2 = User(username: "jenny4rmdablock", sex: "female", interestedIn: "male", relationshipType: "long term", dateRange: "20s", romance: true, scaryMovies: false, comedyMovies: true, dancing: false, italianFood: true, seaFood: true, steakhouse: true, typeOfDate: "dinner")
    
    static let MOCK_USER_3 = User(username: "brandy", sex: "female", interestedIn: "male", relationshipType: "friends", dateRange: "20s", romance: true, scaryMovies: false, comedyMovies: true, dancing: false, italianFood: true, seaFood: true, steakhouse: false, typeOfDate: "dinner")
}


//func findMatchingUsers() {
//    let users: [User] = [
//        .MOCK_USER,
//           .MOCK_USER_1,
//           .MOCK_USER_2,
//           .MOCK_USER_3
//    ]
//    
//    /// so if user 1 iinterestedIn == user 2 sex & they are looking for the same type of relationship they can be potential matches
//    /// inow we want to loop through and check how many similar interest they and  add a point for each one
//    /// once we get the score we will divide that by the total number of questions getting a percentage back
//    /// then we will sort the users and either find the hiest percent patch and rput them  together
//
//    let user = User.MOCK_USER_1
//    
//        for potentialUser in users{
//            if user != potentialUser {
//                if user.interestedIn == potentialUser.sex && user.relationshipType == potentialUser.relationshipType {
////                    print("\(user.username) and \(potentialUser.username) are a potential match")
//                    
//                    var points = 0
//                    
//                    if user.romance == potentialUser.romance {
//                        points += 1
//                    }
//                    
//                    if user.scaryMovies == potentialUser.scaryMovies{
//                        points += 1
//                    }
//                    
//                    if user.comedyMovies == potentialUser.comedyMovies{
//                        points += 1
//                    }
//                    
//                    if user.dancing == potentialUser.dancing {
//                        points += 1
//                    }
//                    
//                    if user.italianFood == potentialUser.italianFood{
//                        points += 1
//                    }
//                    
//                    if user.steakhouse == potentialUser.steakhouse{
//                        points += 1
//                    }
//                    
//                    if user.seaFood == potentialUser.seaFood{
//                        points += 1
//                    }
//                    
//                    if user.typeOfDate == potentialUser.typeOfDate {
//                        points += 1
//                    }
//                    
//                    let percentageMatch = (Double(points) / 8) * 100
//                    
//                    
//                    
//                    print("\(user.username) and \(potentialUser.username) are a \(percentageMatch)% match")
//                    
//                
//                }
//                   
//            }
//        }
//}








