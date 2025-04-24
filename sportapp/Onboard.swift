//
//  Onboard.swift
//  sportapp
//
//  Created by noor alotibi on 25/10/1446 AH.
//
import SwiftUI

struct Onboard: View {
    @State var onborui = false
    @State var onui = false

    var body: some View {
        NavigationView {
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

                VStack {


                    Image("Image 5")
                        .resizable()
                        .frame(width: 413.00, height: 403.00)

                        .opacity(0.20)

                        .ignoresSafeArea()
                    VStack(alignment:.trailing,spacing: 10){
                        Text("إحجز موقف الآن ")
                            .font(Font.custom("Tajawal-Regular", size: 35))
                            .foregroundColor(.white)

                            .padding(.leading,143)
                            .padding()
                            .padding(.horizontal,59)
                        
                        Text("قم بحجز موقف خاص  لسيارتك عند الملعب ...")
                            .font(Font.custom("Tajawal-Regular", size: 20))
                            .multilineTextAlignment(.leading)
                        
                            .foregroundColor(.white)
                           
                            .padding(.horizontal,87)
                        
                    }   .padding(.bottom,34)

                    HStack(spacing:254) {
                        Button(action: {
                            onui.toggle()
                        }) {
                            Image(systemName: "arrowshape.left.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .foregroundColor(.white)
                        }



                        Button(action: {
                            onborui.toggle()
                        }) {
                            Image(systemName: "arrowshape.right.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.horizontal, 30)
                    .padding(.all,33)
                 
                    ZStack {
                  
                        
                        Image("Image 7")
                            .resizable()
                            .frame(width: 433.00, height: 433.00)
                            .opacity(0.2)
                            .padding(.bottom,199)
                            .padding(.trailing,153)
                        Image("Image 7")
                            .resizable()
                          .frame(width: 279.00, height: 279.00)
                          .padding(.top,-299)
                          .padding(.trailing,153)
                    }
                }

             
                NavigationLink(destination: Onboarding(), isActive: $onui) {
                    EmptyView()
                }.navigationBarBackButtonHidden(true)
                NavigationLink(destination: lastonboar(), isActive: $onborui) {
                    EmptyView()
                }
            }.padding(.top,321)
        }.navigationBarBackButtonHidden(true)    
    }
}

#Preview {
    Onboard()
}
