//
//  SignupView.swift
//  Waddame
//
//  Created by Leandro Setti de Almeida on 2022-07-16.
//

import SwiftUI

struct SignupView: View {
    var body: some View {
        VStack {
            SignupText()
            SignupForm()
        }
        .padding()
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}

struct SignupText: View {
    var label: LocalizedStringKey = "signup"
    var body: some View {
        Text(label)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct SignupForm: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var email: String = ""
    
    var unamelabel: LocalizedStringKey = "username"
    var pwdlabel: LocalizedStringKey = "password"
    var emaillabel: LocalizedStringKey = "email"
    
    var body: some View {
        TextField(emaillabel, text: $email)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 10)
        TextField(unamelabel, text: $username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 10)
        SecureField(pwdlabel, text: $password)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
        Button(action: {print("Button tapped")}) {
            SignupButtonContent()
        }
        
    }
}

struct SignupButtonContent: View {
    var loginlabel: LocalizedStringKey = "signup_action"
    
    var body: some View {
        Text(loginlabel)
            .textCase(.uppercase)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.green)
            .cornerRadius(15.0)
    }
}
