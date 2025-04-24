//
//  tickit.swift
//  sportapp
//
//  Created by noor alotibi on 11/10/1446 AH.
//

import SwiftUI


struct tickit: View {
    var body: some View {
        ZStack {
            
            LinearGradient(
                gradient: Gradient(stops: [
                    .init(color: Color(red: 0.15, green: 0.04, blue: 0.19), location: 0.00),
                    .init(color: Color(red: 0.05, green: 0.13, blue: 0.27), location: 1.00)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(spacing: 20) {
                Spacer()

                ZStack(alignment: .top) {
                    Color(red: 217/255, green: 217/255, blue: 217/255)
                        .frame(width: 367, height: 769)
                        .cornerRadius(15)

                    VStack(spacing: 13) {
                        ZStack {
                            
                            Color(red: 0.22, green: 0.07, blue: 0.28)
                            
                            
                                .mask(
                                    Text("تذكرتك ")
                                        .font(Font.custom("Tajawal-Regular", size: 25))
                                        .kerning(-0.010)
                                        .textCase(.uppercase)
                                        .multilineTextAlignment(.center)
                                        .frame(minWidth: 261.00, minHeight: 50.00, alignment: .center)
                                ).padding(.top,69)
                            
                        }
                        ZStack{
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 282, height: 487)
                                .cornerRadius(12)
                            Image("Image")
                                .resizable()
                                .frame(width: 282)
                                .padding(.bottom, 423)
                            Image("Image 3")
                                .padding(.bottom,378)
                            
                            VStack{
                                Image("Image 4")
                                    .frame(width: 42,height: 45)
                                
                                Text("AL hilal")
                                    .font(Font.custom("K2D-Regular", size: 8))
                                
                                    .textCase(.uppercase)
                                
                                    .foregroundColor(Color(red: 0.22, green: 0.07, blue: 0.28))
                            }.padding(.bottom,320)
                                .padding(.trailing,123)
                            Text("X")
                                .font(Font.custom("SyneMono-Regular", size: 15))
                                .textCase(.uppercase)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.22, green: 0.07, blue: 0.28))
                                .frame(minWidth: 28.00, minHeight: 37.00, alignment: .center)
                                .padding(.bottom,298)
                            VStack{
                                Image("Image 2")
                                    .frame(width: 42,height: 49)
                                Text("Real madrid")
                                
                                    .font(Font.custom("K2D-Regular", size: 8))
                                
                                    .textCase(.uppercase)
                                    .foregroundColor(Color(red: 0.22, green: 0.07, blue: 0.28))
                            }.padding(.bottom,320)
                                .padding(.leading,123)
                            Rectangle()
                            
                                .fill(Color(red: 56/255, green: 17/255, blue: 72/255))
                                .frame(height: 1)
                                .padding(.horizontal, 70)
                                .padding(.bottom, 226)

                            HStack{
                                ZStack {
                                    Color(red: 0.22, green: 0.07, blue: 0.28)
                                    Color(red: 0.22, green: 0.07, blue: 0.28)
                                }
                                .mask(
                                    Text("ملعب المملكة أرينا")
                                        .font(Font.custom("Tajawal-Regular", size: 6))
                                    
                                     
                                      
                                        .frame(minWidth: 50.00, minHeight: 5.00, alignment: .leading)
                                )  .padding(.bottom,200)
                                    .padding(.leading,79)
                                ZStack {
                                    Color(red: 0.22, green: 0.07, blue: 0.28)
                                    Color(red: 0.22, green: 0.07, blue: 0.28)
                                }
                       
                               
                                
                                .mask(
                                    Text("الجمعة 20 يوليو   \n \n 9:00 PM\n")
                                        .font(Font.custom("Tajawal-Regular", size: 6))
                                    
                                        .textCase(.uppercase)
                                        .multilineTextAlignment(.center)
                                        .frame(minWidth: 51.00, minHeight: 5.00, alignment: .center)
                                    
                                ).padding(.bottom,180)
                                    .padding(.leading,-19)
                                ZStack {
                                    Color(red: 0.22, green: 0.07, blue: 0.28)
                                    Color(red: 0.22, green: 0.07, blue: 0.28)
                                }
                              
                                .mask(
                                    Text("نهائي كأس العالم للأندية")
                                        .font(Font.custom("Tajawal-Regular", size: 6))
                                    
                                        .textCase(.uppercase)
                                        .multilineTextAlignment(.center)
                                        .frame(minWidth: 88.00, minHeight: 5.00, alignment: .trailing)
                                   
                                    
                                ).padding(.bottom,200)
                                    .padding(.leading,-145)
                            }
                            Rectangle()
                            
                                .fill(Color(red: 56/255, green: 17/255, blue: 72/255))
                                .frame(height: 1)
                                .padding(.horizontal, 70)
                                .padding(.bottom, 133)
                            ZStack {
         Color(red: 0.22, green: 0.07, blue: 0.28)
        
       }
         .mask(
           Text("بوابة الدخول الخاصة بك  :  1 VIP \nرقم الموقف الخاص بك : P2 VIP ZONE \n طريقة النقل : نقل شخصي \nرقم المقعد : F3")
             .font(Font.custom("Tajawal-Regular", size: 10))
             .kerning(-0.010)
             .textCase(.uppercase)
             .multilineTextAlignment(.trailing)
             .frame(minWidth: 201.00, minHeight: 4.00, alignment: .trailing)
         ).padding(.leading,22)
                                .padding(.bottom,66)
                            
                            VStack(spacing:2){
                                Rectangle()
                                
                                    .fill(Color(red: 56/255, green: 17/255, blue: 72/255))
                                    .frame(height: 1)
                                    .padding(.horizontal, 70)
                                
                                HStack(spacing:-50) {
                                    VStack(spacing:-55) {
                                        ZStack {
                                            Color(red: 0.22, green: 0.07, blue: 0.28)
                                        }
                                        .mask(
                                            Text("الباركود الخاص بالتذكرة : ")
                                                .font(Font.custom("Tajawal-Regular", size: 10))
                                            
                                        )
                                        
                                        barcode()
                                        
                                    }
                                    
                                    VStack(spacing:-55) {
                                        ZStack {
                                            Color(red: 0.22, green: 0.07, blue: 0.28)
                                        }
                                        .mask(
                                            Text("الباركود الخاص بالموقف : ")
                                                .font(Font.custom("Tajawal-Regular", size: 10))
                                            
                                            
                                        )
                                        
                                        barcode()
                                        
                                        
                                    }
                                }
                            }
                            .padding(.top, 329)
                            
                        }
      

                    }.padding(.top, 30)
                    .padding(.bottom, 88)
                }

               
            }
            
        }
    }
}

#Preview {
    tickit()
}


