//
//  ReadView.swift
//  RealTimeDataBase
//
//  Created by Mobility User 1 on 10/11/22.
//

import SwiftUI

struct LandingPage: View {
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {

                NavigationLink(destination: GetRestaurantView()) {
                    Text("Get Restaurant")
                }
                
                NavigationLink(destination: CreateRestaurantView()) {
                    Text("Create Restaurant")
                }
                
                NavigationLink(destination: DeleteRestaurantView()) {
                    Text("Delete Restaurant")
                }
                
                NavigationLink(destination: UpdateRestaurantView()) {
                    Text("Update Restaurant")
                }

            }
            .navigationTitle("Restaurants")
        }
    }
    
}



struct ReadView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
