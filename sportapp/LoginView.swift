//
//  LoginView.swift
//  sportapp
//
//  Created by noor alotibi on 25/10/1446 AH.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isLoggedIn = false
    var body: some View {
        NavigationStack{
            VStack(spacing: 16) {
                CustomTextField(placeholder: "الايميل", text: $email)
                CustomTextField(placeholder: "كلمة المرور", text: $password, isSecure: true)
                
                Button("تسجيل الدخول") {
                    login()
                }
                .buttonStyle(AuthButtonStyle())
             
//                .hidden()
                Text("او").foregroundColor(.gray)
                
                HStack(spacing: 24) {
                    Image(systemName: "applelogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 28, height: 28)
                        .foregroundColor(.black)
                    
                    Image("google-icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 28, height: 28)
                }
            }}
        .padding()
    }
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Login error: \(error.localizedDescription)")
            } else {
                print("Logged in!")
                self.isLoggedIn = true
                
            }
        }
    }
}
struct CustomTextField: View {
    var placeholder: String
    @Binding var text: String
    var isSecure = false

    var body: some View {
        Group {
            if isSecure {
                SecureField(placeholder, text: $text)
            } else {
                TextField(placeholder, text: $text)
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 20).stroke(Color.purple))
    }
}

struct AuthButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.purple)
            .foregroundColor(.white)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}

#Preview {
    LoginView()
}
