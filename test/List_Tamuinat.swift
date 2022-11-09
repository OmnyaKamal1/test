//
//  List_Tamuinat.swift
//  test
//
//  Created by Omnya Kamal  on 25/10/2022.
//

import SwiftUI
//This struct used to add all the custom colors added by me in assets to be able to use them as the following:
//CustomColor.اسم اللون
//Color("اسم اللون")

/*struct CustomColor {
 static let itemsOfList = Color("itemsOfList")
 Add more here...
 }*/


struct List_Tamuinat: View {
    struct Grocery {
        var id = UUID()
        var groceryName: String
        var groceryLocation: String
        var groceryHours: String
    }
    
    var myGroceryList:[Grocery] = [
        Grocery(groceryName: "Al-Turky Grocery", groceryLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", groceryHours: "Every day 24 hours"),
        
        Grocery(groceryName: "Zohoor Al-Yasmeen Grocery", groceryLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", groceryHours: "Saterday to Thursday from 10 am to 8 pm, Friday from 1 pm to 8 pm"),
        
        Grocery(groceryName: "Panda Grocery", groceryLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", groceryHours: "Every day from 10 am to 8 pm"),
        
        Grocery(groceryName: "Al-Yasmeen Grocery", groceryLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", groceryHours: "Every day from 1 pm to 12 am"),
        
        Grocery(groceryName: "Mohammed Taher Grocery", groceryLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", groceryHours: "Every day 24 hours"),
        
        Grocery(groceryName: "Othaim Grocery", groceryLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", groceryHours: "Every day 24 hours"),
        
        Grocery(groceryName: "Worood Grocery", groceryLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", groceryHours: "Every day 24 hours"),
        
        Grocery(groceryName: "Panda corner Grocery", groceryLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", groceryHours: "Every day from 10 am to 8 pm"),
        
        Grocery(groceryName: "Omar and parteners Grocery", groceryLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", groceryHours: "Every day from 10 am to 8 pm"),
        
        Grocery(groceryName: "Ahmed Grocery", groceryLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", groceryHours: "Every day 24 hours"),
        
        Grocery(groceryName: "Al-Yasmin rose Grocery", groceryLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", groceryHours: "Every day from 10 am to 8 pm")
    ]
    var body: some View {
        
        VStack{
            ScrollView(.vertical) {
                ForEach(myGroceryList,id: \.id) { oneGrocery in
                    DisclosureGroup(
                        content: {
                            VStack(alignment: .leading){
                                Text("Location:").bold()
                                
                                Text(oneGrocery.groceryLocation).foregroundColor(.blue).underline()
                                    .onTapGesture {
                                        UIApplication.shared.open(URL(string: oneGrocery.groceryLocation)!, options: [:])
                                    }
                                
                                Text("")
                                Text("Working hours:").bold()
                                Text(oneGrocery.groceryHours)
                                
                                
                            }.font(.system(size: 18))
                            
                        } ,
                        label: {Label(oneGrocery.groceryName,systemImage: "basket").bold()
                            
                        }
                    )
                    .accentColor(Color("greenLists"))//custom color
                    .font(.system(size: 20))
                    Divider()
                    
                }
            }.padding(.all)
        }
    }
}


struct List_Tamuinat_Previews: PreviewProvider {
    static var previews: some View {
        List_Tamuinat()
    }
}

//This was updated and real data was used
