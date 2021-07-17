//
//  SettingRowView.swift
//  Fructus
//
//  Created by ifechukwu daniel; on 17/07/2021.
//

import SwiftUI

struct SettingRowView: View {
    
    var name:String
    var content:String? = nil
    var labelLink:String? = nil
    var labelDestination:String? = nil
    
    var body: some View {
        VStack{
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if(content != nil) {
                    Text(content!)
                }
                
                if(labelLink != nil && labelDestination != nil){
                    Link(labelLink!, destination: URL(string: "https://\(labelDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                    
                }
                
                else{
                    EmptyView()
                }
            }
        }
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingRowView( name: "Developer", content: "Ifechukwu Daniel")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        SettingRowView( name: "Website", labelLink: "SwiftUi Website ", labelDestination: "swiftuimasterclas.com")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()

    }
}
