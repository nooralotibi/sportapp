//
//  Authview.swift
//  sportapp
//
//  Created by noor alotibi on 25/10/1446 AH.
//

import SwiftUI
import Firebase

struct AuthView: View {
    @State private var showSheet = false
    @State private var selectedTab: String? = nil
    @GestureState private var dragOffset = CGSize.zero
    @Binding var authSheetVisible: Bool
    let options = ["تسجيل جديد", "تسجيل الدخول"]
    
    var gradient = LinearGradient(
        gradient: Gradient(stops: [
            .init(color: Color(red: 0.22, green: 0.07, blue: 0.28), location: 0.0),
            .init(color: Color(red: 0.05, green: 0.13, blue: 0.27), location: 1.0)
        ]),
        startPoint: .top,
        endPoint: .bottom
    )
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.15, green: 0.04, blue: 0.19),
                    Color(red: 0.05, green: 0.13, blue: 0.27)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            Image("Image 5")
                .resizable()
                .scaledToFit()
                .padding(.bottom,463)
            
                .ignoresSafeArea()
            
            VStack(spacing: 40){
              
                  
                Text(" سَنَــــد ")
                
                    .font(Font.custom("Jomhuria-Regular", size: 130))
                
                    .padding(.top,-77)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)

                VStack(spacing: 23) {
             
                        HStack(spacing: 16) {
                            ForEach(options, id: \.self) { option in
                                Button(action: {
                                    selectedTab = option
                                    showSheet = true
                                    
                                }) {
                                    ZStack {
                                        if selectedTab == option {
                                            RoundedRectangle(cornerRadius: 35)
                                                .fill(gradient)
                                                .frame(width: 178, height: 50)
                                        } else {
                                            RoundedRectangle(cornerRadius: 35)
                                                .fill(Color.white.opacity(0.7))
                                                .stroke(gradient, lineWidth: 2)
                                                .frame(width: 178, height: 50)
                                        }
                                        
                                        Text(option)
                                            .foregroundColor(selectedTab == option ? .white : Color(red: 0.22, green: 0.07, blue: 0.28))
                                            .bold()
                                        
                                        
                                    }
                                }
                            }
                        }
                        
      
                }
            }
            if let tab = selectedTab {
                VStack {
                    Spacer()
                    
                    VStack {
                        
                        if tab == "تسجيل الدخول" {
                            
                            LoginView()
                            
                        } else {
                            SignUpView()
                          
                        }
                        
                    }
//                    .padding()
                    .background(Color(.systemBackground))
                    .cornerRadius(30)
                    .shadow(radius: 10)
                    .frame(height: 434)
                    .offset(y: dragOffset.height > 0 ? dragOffset.height : 0)
                    .gesture(
                                  DragGesture()
                                      .updating($dragOffset) { value, state, _ in
                                          state = value.translation
                                      }
                                      .onEnded { value in
                                          if value.translation.height > 100 {
                                              withAnimation {
                                                  selectedTab = nil
                                                  authSheetVisible = false
                                              }
                                          }
                                      }
                              )
                              .transition(.move(edge: .bottom))
                              .ignoresSafeArea()
                  

                }
            }
            
        }
    }
    }

struct GradientButtonBackground: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 35)
            .fill(
                LinearGradient(
                    gradient: Gradient(stops: [
                        .init(color: Color(red: 0.22, green: 0.07, blue: 0.28), location: 0.0),
                        .init(color: Color(red: 0.05, green: 0.13, blue: 0.27), location: 1.0)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .frame(width: 178, height: 50)
    }
}

struct GradientButtonStroke: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 35)
            .stroke(
                LinearGradient(
                    gradient: Gradient(stops: [
                        .init(color: Color(red: 0.22, green: 0.07, blue: 0.28), location: 0.0),
                        .init(color: Color(red: 0.05, green: 0.13, blue: 0.27), location: 1.0)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                ),
                lineWidth: 2
            )
            .frame(width: 178, height: 50)
    }
}


#Preview {
    AuthView(authSheetVisible: .constant(false))
}
