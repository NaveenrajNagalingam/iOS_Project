//
//  ReadViewModel.swift
//  RealTimeDataBase
//
//  Created by Mobility User 1 on 10/11/22.
//

import Foundation
import FirebaseDatabase
import FirebaseDatabaseSwift

class FirrebaseRealTimeDBViewModel: ObservableObject{
    
    //get database reference
    var ref = Database.database().reference()
    @Published var restaurant: ObjectDemo? = nil
    @Published var value: String? = nil
    @Published var listObject = [ObjectDemo]()
    
    //create
    @Published var res_name: String = ""
    @Published var res_location: String = ""
    
    //delete
    @Published var res_id: String = ""
    
    //update
    @Published var update_res_id: String = ""
    @Published var update_res_name: String = ""
    @Published var update_res_location: String = ""
    @Published var key_array = []
    
    
    func readValue(){
        ref.child("res_name").observeSingleEvent(of: .value) { snapshot in
            self.value = snapshot.value as? String
        }
    }
    
    
    //observe the realtime changes by using the (observe(.value))
    func observeDataChange(){
        ref.child("res_name").observe(.value) { snapshot in
            self.value = snapshot.value as? String
        }
    }
    
    
    //read particular object
    func readObject(){
        ref.child("Restaurant/1")
            .observe(.value) { snapShot in
                do{
                    self.restaurant = try snapShot.data(as: ObjectDemo.self)
                }
                catch{
                    print("Can Not Convert to ObjectDemo \(error.localizedDescription)")
                }
            }
    }
    
    
    //read multiple object
    func observeListObject(){
        ref.child("Restaurant")
            .observe(.value) { parentSnapshot in
                guard let children = parentSnapshot.children.allObjects as? [DataSnapshot] else {
                    //incase is not
                    return
                }
                
                self.listObject = children.compactMap({ snapshot in
                    print("----------\(snapshot.key)-----------")
                    self.key_array.append(snapshot.key)
                    return try? snapshot.data(as: ObjectDemo.self)
                })
        }
    }
    
    
    
    //read multiple object sort by Restaurant Name
    func getSortedData(){
//        ref.child("Restaurant").queryOrdered(byChild: "res_name")     //sort by "res_name"
//        ref.child("Restaurant").queryLimited(toLast: 2)     //return the last 2 data's
        ref.child("Restaurant").queryLimited(toFirst: 2)     //return the first 2 data's
            .observe(.value) { parentSnapshot in
                guard let children = parentSnapshot.children.allObjects as? [DataSnapshot] else {
                    //incase is not
                    return
                }
                
                self.listObject = children.compactMap({ snapshot in
                    return try? snapshot.data(as: ObjectDemo.self)
                })
        }
    }

    
    
    //create restaurant
    func createRestaurant(){
        //custom ID
        ref.child("Restaurant").child("4").setValue(["res_name": self.res_name , "res_location": self.res_location])
        
        //auto generated ID
//        ref.child("Restaurant").childByAutoId()
//            .setValue([["res_name": self.res_name , "res_location": self.res_location]])
    }
    
    
    //delete restaurant
    func deleteRestaurant(){
        ref.child("res_name").child(self.res_id).removeValue()
    }
    
    
    //update the restaurant
    func updateRestaurant(){
        ref.child("Restaurant/\(self.update_res_id)").updateChildValues(["res_name": self.update_res_name , "res_location": self.update_res_location])
    }
    
}
