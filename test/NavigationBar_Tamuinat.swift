//
//  NavigationBar_Tamuinat.swift
//  test
//
//  Created by Omnya Kamal  on 26/10/2022.
//

import SwiftUI

struct NavigationBar_Tamuinat: View {
    var body: some View {
        ZStack{
            NavigationView {
                VStack{
                    NavigationLink(destination:List_Tamuinat())
                    {
                        Text("Grocery page")
                        
                    }
                    .navigationTitle("حارتنا")
                    NavigationLink(destination:List_Pharmacy())
                    {
                        Text("Pharmacy page")
                        
                    }
                    NavigationLink(destination:List_Barber())
                    {
                        Text("Barber page")
                        
                    }
                }
            }
        }
        
        .environment(\.layoutDirection, .rightToLeft)//Used as the application in Arabic and we need everything to be from right to left
    }
    
    
    init() {
        
        let navBarAppearance = UINavigationBarAppearance()
        
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.red, .font: UIFont(name: "Savoye LET", size: 40)!]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.blue, .font: UIFont(name: "Savoye LET", size: 20)!]

//
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
        
        
    } //init to change the appearance of the nav
}

struct NavigationBar_Tamuinat_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar_Tamuinat()
    }

}
