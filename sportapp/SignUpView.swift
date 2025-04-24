//
//  SignUpView.swift
//  sportapp
//
//  Created by noor alotibi on 25/10/1446 AH.
//

import SwiftUI
import FirebaseAuth

struct SignUpView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        VStack(spacing: 16) {
            CustomTextField(placeholder: "الايميل", text: $email)
            CustomTextField(placeholder: "كلمة المرور", text: $password, isSecure: true)
            CustomTextField(placeholder: "تاكيد كلمة المرور", text: $confirmPassword, isSecure: true)
            
            Button("تسجيل جديد") {
                signUp()
            }
            .buttonStyle(AuthButtonStyle())
            
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
            
        }
        .padding()
    }
    
    func signUp() {
        guard password == confirmPassword else { print("Passwords don't match"); return }
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Sign up error: \(error.localizedDescription)")
            } else {
                print("User registered!")
            }
        }
    }
}


#Preview {
    SignUpView()
}
