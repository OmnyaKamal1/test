//
//  List_Tamuinat.swift
//  test
//
//  Created by Omnya Kamal  on 25/10/2022.
//

import SwiftUI
////This struct used to add all the custom colors added by me in assets to be able to use them as the following:
//CustomColor.اسم اللون
//struct CustomColor {
//    static let itemsOfList = Color("itemsOfList")
//    // Add more here...
//}


struct testlist: View {
    
    var body: some View {
        
        VStack{
            DisclosureGroup("تموينات جوهرة الياسمين"){
                VStack(alignment: .leading){
                    Text("الموقع:")
                    Text("https://goo.gl/maps/UGthXMSwbe2a7Ys88")
                    Text("مواعيد العمل:")
                    Text("يومياً من الساعة ٦ص حتى الساعة ١١:٥٩م")
                    
                }
                
                
            }//End of tamuinat 1
            Divider()
            
            
            
            DisclosureGroup(
                content: {
                    VStack(alignment: .leading){
                        Text("الموقع:")
                        Text("https://goo.gl/maps/UGthXMSwbe2a7Ys88")
                        Text("مواعيد العمل:")
                        Text("يومياً من الساعة ٦ص حتى الساعة ١١:٥٩م")
                        
                    } },
                label: {
                    Text("تموينات الياسمين").foregroundColor(.red)                                    .bold() }
            )
            .accentColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
            
            Divider()
            
            
            
            
            
            DisclosureGroup(
                content: {
                    VStack(alignment: .leading){
                        Text("الموقع:")
                        Text("https://goo.gl/maps/UGthXMSwbe2a7Ys88")
                        Text("مواعيد العمل:")
                        Text("يومياً من الساعة ٦ص حتى الساعة ١١:٥٩م")
                        
                    } },
                label: {
                    Text("تموينات واحة الياسمين") }
            )
            .bold()
            
            
            
        }
        
        .environment(\.layoutDirection, .rightToLeft)//Used as the application in Arabic and we need everything to be from right to left
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
}

struct testlist_Previews: PreviewProvider {
    static var previews: some View {
        testlist()
    }
}

