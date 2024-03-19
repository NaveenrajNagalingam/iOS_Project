//
//  CreateRestaurantView.swift
//  RealTimeDataBase
//
//  Created by Mobility User 1 on 10/11/22.
//

import SwiftUI

struct CreateRestaurantView: View {
    @StateObject var createVM = FirrebaseRealTimeDBViewModel()
    
    var body: some View {
        VStack{
            TextField("Enter Restaurant Name", text: $createVM.res_name)
                .padding()
                .font(.headline)
                .fontWeight(.black)
            
            TextField("Enter Restaurant Location", text: $createVM.res_location)
                .padding()
                .font(.headline)
                .fontWeight(.black)
            
            Button {
                createVM.createRestaurant()
            } label: {
                Text("Create")
                    .padding()
                    .font(.title2)
                    .fontWeight(.black)
                    .background(.pink)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
            }

        }
    }
}

struct CreateRestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        CreateRestaurantView()
    }
}
