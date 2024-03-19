//
//  SingleDataReadView.swift
//  RealTimeDataBase
//
//  Created by Mobility User 1 on 10/11/22.
//

import SwiftUI

struct GetRestaurantView: View {
    @StateObject var readVM = FirrebaseRealTimeDBViewModel()

    var body: some View{
        ScrollView{
            VStack {
                Button {
//                    readVM.readValue()
//                    readVM.observeDataChange()
//                    readVM.readObject()
                    readVM.observeListObject()
//                    readVM.getSortedData()
                } label: {
                    Text("Read")
                        .padding()
                        .font(.title2)
                        .fontWeight(.black)
                        .background(.pink)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
               
//----------------------------------------------------------
//                if readVM.value != nil {
//                    Text("\(readVM.value!)")
//                        .padding()
//                        .font(.headline)
//                }
//                else{
//                    Text("No Records Found!")
//                        .padding()
//                        .font(.headline)
//                }
//----------------------------------------------------------
                
                
//----------------------------------------------------------
//                if readVM.restaurant != nil {
//                    VStack{
//                        Text("Res Name: \(readVM.restaurant!.res_name)")
//                            .padding()
//                            .font(.headline)
//
//                        Text("Res Location: \(readVM.restaurant!.res_location)")
//                            .padding()
//                            .font(.headline)
//                    }
//                }
//                else{
//                    Text("No Records Found!")
//                        .padding()
//                        .font(.headline)
//                }
//----------------------------------------------------------
                
                
//----------------------------------------------------------
                if !readVM.listObject.isEmpty{
                    VStack{
                        ForEach(readVM.listObject) { val in
                            VStack(spacing: 20){
                                Text("Res Name: \(val.res_name)")
                                    .padding()
                                    .font(.headline)
                                
                                Text("Res Location: \(val.res_location)")
                                    .padding()
                                    .font(.headline)
                                
                                Divider()
                            }
                        }
                    }
                }
//----------------------------------------------------------


            }
        }
    }
    
}



struct SingleDataReadView_Previews: PreviewProvider {
    static var previews: some View {
        GetRestaurantView()
    }
}
