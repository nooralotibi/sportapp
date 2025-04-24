//
//  Onboarding.swift
//  sportapp
//
//  Created by noor alotibi on 24/10/1446 AH.
//

import SwiftUI

struct Onboarding: View {
    @State  var onboaui = false
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
                
                    .opacity(0.20)
                    .ignoresSafeArea()
                VStack{
                    Text("إحجز تذكرتك الآن ")
                        .font(Font.custom("Tajawal-Regular", size: 35))
                    
                        .foregroundColor(Color.white)
                        .padding(.leading,149)
                        .padding()
                    Text("تصفح التذاكر لكل المباريات المقبلة ...")
                        .font(Font.custom("Tajawal-Regular", size: 20))
                    
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                    
                        .padding(.leading,99)
                    
                    Button(action: {
                        onboaui.toggle()
                    }) {
                        Image(systemName: "arrowshape.right.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                    }
                    .padding(.leading, 321)
                    .padding()
                }
                NavigationLink(
                    destination: Onboard(),
                    isActive: $onboaui
                ) {
                    EmptyView()
                }
                ZStack{
                    Image("Image 6")
                    
                    
                        .rotationEffect(.degrees(-2.43))
                        .padding(.trailing,138)
                        .padding(.top,430)
                    Image("Image 6")
                    
                    
                        .rotationEffect(.degrees(-2.43))
                        .padding(.trailing,268)
                        .padding(.top,360)
                        .opacity(0.300)
                }
            }
        }  .navigationBarBackButtonHidden(true)      }
}

#Preview {
    Onboarding()
}
