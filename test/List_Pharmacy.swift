//
//  List_Pharmacy.swift
//  test
//
//  Created by Omnya Kamal  on 30/10/2022.
//

import SwiftUI

struct List_Pharmacy: View {
    struct Pharmacy {
        var id = UUID()
        var pharmacyName: String
        var pharmacyLocation: String
        var pharmacyHours: String
    }
    
    var myPharmacyList:[Pharmacy] = [
        Pharmacy(pharmacyName: "Al-Yasmin Pharmacy", pharmacyLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", pharmacyHours: "Every day 24 hours"),
        
        Pharmacy(pharmacyName: "Al-Nahdi Pharmacy", pharmacyLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", pharmacyHours: "Saterday to Thursday from 10 am to 8 pm, Friday from 1 pm to 8 pm"),
        
        Pharmacy(pharmacyName: "Al-dawaa Pharmacy", pharmacyLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", pharmacyHours: "Every day from 10 am to 8 pm"),
        
        Pharmacy(pharmacyName: "Al-Omar Pharmacy", pharmacyLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", pharmacyHours: "Every day from 1 pm to 12 am"),
        
        Pharmacy(pharmacyName: "Boots Pharmacy", pharmacyLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", pharmacyHours: "Every day 24 hours"),
        
        Pharmacy(pharmacyName: "Boots Pharmacy", pharmacyLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", pharmacyHours: "Every day 24 hours"),
        
        Pharmacy(pharmacyName: "Al-Yasmin rose Pharmacy ", pharmacyLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", pharmacyHours: "Every day from 10 am to 8 pm")
    ]
    
    var body: some View {
        
        VStack{
            ScrollView(.vertical) {
                ForEach(myPharmacyList,id: \.id) { onePharmacy in
                    DisclosureGroup(
                        content: {
                            VStack(alignment: .leading){
                                Text("Location:").bold()
                                
                                Text(onePharmacy.pharmacyLocation).foregroundColor(.blue).underline()
                                    .onTapGesture {
                                        UIApplication.shared.open(URL(string: onePharmacy.pharmacyLocation)!, options: [:])
                                    }
                                
                                Text("")
                                Text("Working hours:").bold()
                                Text(onePharmacy.pharmacyHours)
                                
                                
                            }.font(.system(size: 18))
                            
                        } ,
                        label: {Label(onePharmacy.pharmacyName,systemImage: "cross").bold()
                            
                        }
                    )
                    .accentColor(Color("greenLists"))
                    .font(.system(size: 20))
                    Divider()
                    
                }
            }.padding(.all)
        }
    }
}

struct List_Pharmacy_Previews: PreviewProvider {
    static var previews: some View {
        List_Pharmacy()
    }
}
