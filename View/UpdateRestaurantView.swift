//
//  UpdateRestaurantView.swift
//  RealTimeDataBase
//
//  Created by Mobility User 1 on 10/11/22.
//

import SwiftUI

struct UpdateRestaurantView: View {
    @StateObject var updateVM = FirrebaseRealTimeDBViewModel()

    var body: some View {
        VStack{
            TextField("Enter Updated Restaurant ID", text: $updateVM.update_res_id)
                .padding()
                .font(.headline)
                .fontWeight(.black)

            TextField("Enter Updated Restaurant Name", text: $updateVM.update_res_name)
                .padding()
                .font(.headline)
                .fontWeight(.black)
            
            TextField("Enter Updated Restaurant Location", text: $updateVM.update_res_location)
                .padding()
                .font(.headline)
                .fontWeight(.black)
            
            Button {
                updateVM.updateRestaurant()
            } label: {
                Text("Update")
                    .padding()
                    .font(.title2)
                    .fontWeight(.black)
                    .background(.pink)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
            }

        }
        .onAppear(){
            updateVM.observeListObject()
        }
    }
}

struct UpdateRestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        UpdateRestaurantView()
    }
}
