//
//  Login.swift
//  test
//
//  Created by Omnya Kamal  on 03/11/2022.
//

import SwiftUI
import AuthenticationServices
struct Login: View {

    @State var page_title: String = ""
    @State var user_name: String = ""
    @State var email: String = ""
    @State var password : String = ""
    @State var phoneNum: String = ""
    @State var openReg = false

    var body: some View {
        
        NavigationView() {
            
            VStack{
                
                //Logo picture inside a Stack
        

               // VStack{
                    
                    Image("myLogo")
                        .resizable()
                        .frame(width: 200.0, height: 200.0)
                    
               // }
                
               
                    //User Information inside a Stack
                    
                    VStack(alignment:.leading){

                        
                        //Email
                        Text("email")
                            .modifier(HeaderModifier())
                        
                        TextField("", text: $email)
                            .modifier(TextFieldModifier())
                        
                        //Pasword
                        Text("Password")
                            .modifier((HeaderModifier()))
                        
                        TextField("", text: $password)
                            .modifier((TextFieldModifier()))
                        
                    }
                    .padding()
                

                
                
                Button {
                    print("Button was tapped")
                    print(user_name)
                    print(email)
                    print(phoneNum)
                    
                } label: {
                    Text("Login")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color("Dgreen"))
                        .cornerRadius(8.0)
                       .padding()
                }
                HStack{
                    Text("Don't have an account?")
                   
                    
                    Button{
                        openReg.toggle()
                    }
                label:{
                        Text("Register").foregroundColor(.blue).underline()
                }.sheet(isPresented: $openReg){
                    Registration()
                }

                }
                
                   .padding()
                   .frame(width: 390, height: 85)
            }
            
            
            .navigationTitle("Login")
        }
        
    }
       
    
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
