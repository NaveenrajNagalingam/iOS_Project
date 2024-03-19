//
//  DeleteRestaurantView.swift
//  RealTimeDataBase
//
//  Created by Mobility User 1 on 10/11/22.
//

import SwiftUI

struct DeleteRestaurantView: View {
    @StateObject var deleteVM = FirrebaseRealTimeDBViewModel()

    var body: some View {
        VStack{
            TextField("Enter Restaurant ID to Delete", text: $deleteVM.res_id)
                .padding()
                .font(.headline)
                .fontWeight(.black)
            
            Button {
                deleteVM.deleteRestaurant()
            } label: {
                Text("Delete")
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



struct DeleteRestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        DeleteRestaurantView()
    }
}
