//
//  SettingView.swift
//  Fructus
//
//  Created by ifechukwu daniel; on 16/07/2021.
//

import SwiftUI

struct SettingView: View {
    //Properties
    @Environment(\.presentationMode) var presentaionMode
    @AppStorage("isOnboarding") var isOnboarding:Bool = false
    var body: some View {
        NavigationView {
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/){
                VStack(spacing:20){
                    GroupBox(label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                       ){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10){
                           Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .cornerRadius(9)
                          Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                            .font(.footnote)
                        }
                    }
                    GroupBox(label:
                                SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")){
                        Divider().padding(.vertical,4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight:60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.green)
                            }
                            else {
                                Text("Restart".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    GroupBox(label:
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")){
                        Divider().padding(.vertical, 4)
                        SettingRowView( name: "Developer", content: "Ifechukwu Daniel")
                        SettingRowView( name: "Designer", content: "Ifechukwu Daniel")
                        SettingRowView( name: "Compactability", content: "IOS 15")
                        SettingRowView(name: "Website", labelLink: "SWift Ui Webite", labelDestination: "swiftuimaterclass.com")
                        SettingRowView( name: "SwiftUi", content: "2.0")
                        SettingRowView( name: "Version", content: "1.1.0")
                        
                    }
                    
                }
                .navigationBarTitle(Text("Setting"), displayMode: .large) //Setting Title
                .navigationBarItems(
                    trailing:Button(action: {
                        presentaionMode.wrappedValue.dismiss()
                    }){
                        Image(systemName:"xmark") // Close Button
                    }
                )
                .padding()
              
            }//Scroll View
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
            .preferredColorScheme(.light)
    }
}
