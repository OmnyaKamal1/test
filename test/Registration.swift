//
//  Registration.swift
//  test
//
//  Created by Omnya Kamal  on 03/11/2022.
//

import SwiftUI

struct TextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .font(.title)
            .foregroundColor(.gray)
            .frame(width: 350, height: 40, alignment: .leading)
            .background(Color("LGreen"))
            .cornerRadius(8.0)
    }
}
struct HeaderModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 18 , weight: .bold))
            .foregroundColor(Color("greenLists"))
    }
}
struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .foregroundColor(Color.black)
            .background(Color("LGreen"))
            .cornerRadius(8.0)
        
    }
}
struct Registration: View {
    @State private var showingAlert = false
    
    @State var user_name: String = ""
    @State var email: String = ""
    @State var password : String = ""
    @State var phoneNum: String = ""
    @State var Female = false
    @State var Male = false
    @State var openReg = true
    var body: some View {
        
        NavigationView() {
            
            
            VStack{
                HStack{
                    NavigationLink(destination:Login())
                    {
                        
                        Text("x").font(.title2).accentColor(Color("Dgreen"))
                            
                    }
                    Spacer()
                        .padding(.all)
                }
                
                VStack(){
                    
                    Image("myLogo")
                        .resizable()
                        .frame(width: 100.0, height: 100.0)
                    
                    VStack(alignment:.leading){
                        
                        //User Name
                        Text("User Name")
                            .modifier(HeaderModifier())
                        
                        TextField("User Name", text: $user_name)
                            .modifier(TextFieldModifier())
                        
                        
                        //Email
                        Text("email")
                            .modifier(HeaderModifier())
                        
                        TextField("@email.com", text: $email)
                            .modifier(TextFieldModifier())
                        
                        //Pasword
                        Text("Password")
                            .modifier((HeaderModifier()))
                        
                        TextField("Password min of 8 charater...", text: $password)
                            .modifier((TextFieldModifier()))
                        
                        
                        //Phone Number
                        Text("Phone Number")
                            .modifier(HeaderModifier())
                        
                        
                        TextField("+966", text: $phoneNum)
                            .modifier(TextFieldModifier())
                        
                        
                        //Gender
                        Text("Gender")
                            .modifier(HeaderModifier())
                        
                        
                        HStack{
                            
                            //Female button image
                            VStack {
                                
                                Button{
                                    Female = true
                                    Male = false
                                }
                            label:
                                {
                                    Image ("Female")}
                            }.border(Female ? .green : .clear)
                            
                                .padding(.horizontal, 70.0)
                            
                            //Male button image
                            VStack {
                                
                                Button{
                                    Female = false
                                    Male = true
                                    
                                }
                            label: {
                                Image ("Male")}
                                
                            }.border(Male ? .green : .clear)
                            
                        }
                    }
                    
                    
                    Button("Sign Up") {
                        showingAlert = true
                    }
                    .alert("The Account has been Updated", isPresented: $showingAlert) {
                        Button("OK", role: .cancel) { }
                    }
                    
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("Dgreen"))
                    .cornerRadius(8.0)
                    .padding(.top)
                    //                       .padding()
                }
                
            }
            
            
            //.navigationTitle("Sign Up")
            .padding(.all)
        }
        
    }
    
    
    
    
    struct Registration_Previews: PreviewProvider {
        static var previews: some View {
            Registration()
        }
    }
}
