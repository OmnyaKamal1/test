//
//  List_Barber.swift
//  test
//
//  Created by Omnya Kamal  on 30/10/2022.
//

import SwiftUI

struct List_Barber: View {
    struct Barber {
        var id = UUID()
        var barberName: String
        var barberLocation: String
        var barberHours: String
    }
    
    
    var myBarberList:[Barber] = [
        Barber(barberName: "Al-Yasmin barber", barberLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", barberHours: "Every day from 10 am to 8 pm, Friday from 1 pm to 8 pm"),
        
        Barber(barberName: "The elegant man barber shop", barberLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", barberHours: "Every day from 10 am to 8 pm"),
        
        Barber(barberName: "Al-Omar barber", barberLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", barberHours: "Every day from 1 pm to 12 am"),
        
        Barber(barberName: "Al-Yasmin roze barber ", barberLocation: "https://goo.gl/maps/UGthXMSwbe2a7Ys88", barberHours: "Every day from 10 am to 8 pm")]
    
    var body: some View {
        
        VStack{
            ScrollView(.vertical) {
                ForEach(myBarberList,id: \.id) { oneBarber in
                    DisclosureGroup(
                        content: {
                            VStack(alignment: .leading){
                                Text("Location:").bold()
                                
                                Text(oneBarber.barberLocation).foregroundColor(.blue).underline()
                                    .onTapGesture {
                                        UIApplication.shared.open(URL(string: oneBarber.barberLocation)!, options: [:])
                                    }
                                
                                Text("")
                                Text("Working hours:").bold()
                                Text(oneBarber.barberHours)
                                
                                
                            }.font(.system(size: 18))
                            
                        } ,
                        label: {Label(oneBarber.barberName,systemImage: "mustache").bold()
                            
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

struct List_Barber_Previews: PreviewProvider {
    static var previews: some View {
        List_Barber()
    }
}
