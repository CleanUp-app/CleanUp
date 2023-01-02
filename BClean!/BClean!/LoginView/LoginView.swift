//
//  LoginView.swift
//  BClean!
//
//  Created by Julien Le ber on 29/12/2022.
//

import SwiftUI

struct LoginView: View {
    @State var email:String = ""
    @State var password:String = ""
    @State var isLinkActive = false

    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 150,height: 150)
                        .foregroundColor(.white)
                        .opacity(0.3)
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200,height: 200)
                }.padding(.top,20)
                
                VStack {
                    Spacer()
                    TextZone(value: $email, defaultText: "Enter your Email").padding(.bottom,10)
                    TextZone(value: $password, defaultText: "Enter your password").padding(.bottom,40)
                    customButton(text: "Sign In")
                    HStack {
                        Text("You don't have an account ?")
                            .foregroundColor(.white)
                            .font(.custom("AirbnbCereal_W_Bk", size: 16))
                            .padding(0)
                        NavigationLink {
                            SignupView()
                        } label: {
                            Text("Signup Now !")
                                .foregroundColor(.white)
                                .font(.custom("AirbnbCereal_W_Bd", size: 16))
                                .padding(0)
                                .background(.opacity(0))
                        }
                    }
                    Spacer()
                    
                }.padding()
                Spacer()
                
                
            }
            .background((LinearGradient(gradient: Gradient(colors: [Color("orange-gradient"), Color("red-gradient")]), startPoint: .top, endPoint: .bottom)))
            
        }
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
