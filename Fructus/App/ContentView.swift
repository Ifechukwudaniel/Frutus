//
//  ContentView.swift
//  Fructus
//
//  Created by ifechukwu daniel; on 16/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State  private var isShowingSetting:Bool = false
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruitsData.shuffled()){ item in
                    NavigationLink(destination: FruitDetailView(friut: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSetting = true
                    }){
                       Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSetting){
                        SettingView()
                    }
                    
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
