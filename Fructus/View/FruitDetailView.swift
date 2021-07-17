//
//  FruitDetailView.swift
//  Fructus
//
//  Created by ifechukwu daniel; on 16/07/2021.
//

import SwiftUI

struct FruitDetailView: View {
    var friut : Fruit
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing:20) {
                    // Header
                    FruitHeaderView(fruit: friut)
                    VStack(alignment: .leading, spacing:20) {
                        //Title
                        Text(friut.title)
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(friut.gradientColors[1])
                        
                        //Headline
                        Text(friut.headline)
                            .font(.headline)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        //Nutrient 
                        
                        FruitNutrientsView(fruit: friut)
                        //SubHeading
                        Text("Learn more about \(friut.title)".uppercased())
                            .font(.body)
                            .foregroundColor(friut.gradientColors[1])
                            
                        
                        //Description
                        Text(friut.description)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        //Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)

                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth:640, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                }
                .navigationBarTitle(friut.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(friut: fruitsData[0])
    }
}
