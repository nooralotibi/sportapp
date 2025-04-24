//
//  splash.swift
//  sportapp
//
//  Created by noor alotibi on 23/10/1446 AH.
//

import SwiftUI

struct splash: View {
    @State  var onboarui = false
    @State private var animateTitle = false
      @State private var animateSubtitle = false
    var body: some View {
        NavigationView{
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
                
                VStack{
                    Text(" سَنَــــد ")
                    
                        .font(Font.custom("Jomhuria-Regular", size: 130))
                    
                    
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .opacity(animateTitle ? 1 : 0)
                                     .offset(y: animateTitle ? 0 : -30)
                                     .animation(.easeOut(duration: 1.2).delay(0.2), value: animateTitle)
                        
                    Text("أول مُساند للمشجع السعودي")
                      .font(Font.custom("Tajawal-Regular", size: 23))

  
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color.white)

                      .opacity(animateSubtitle ? 1 : 0)
                                      .offset(y: animateSubtitle ? 0 : 20)
                                      .animation(.easeOut(duration: 1.2).delay(1.0), value: animateSubtitle)
                                      .onAppear {
                                              animateTitle = true
                                              animateSubtitle = true
                                          }
                    
                    Button(action: {
                        onboarui.toggle()
                    }) {
                        Text("إبـــدأ")
                            .font(Font.custom("Tajawal-Regular", size: 23))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.22, green: 0.07, blue: 0.28))
                        
                        
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .frame(width: 116.00, height: 44.00)
                                
                            )
                    }
                    .padding(.top,173)
                }.padding(.top,123)
                NavigationLink(
                    destination: Onboarding(),
                    isActive: $onboarui
                ) {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    splash()
}
