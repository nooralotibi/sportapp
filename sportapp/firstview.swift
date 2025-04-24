//
//  firstview.swift
//  sportapp
//
//  Created by noor alotibi on 25/10/1446 AH.
//

import SwiftUI

struct firstview: View {
    @State private var uii = false
    @State private var ui = false
    var body: some View {
        NavigationStack{
            ZStack {
                
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color(red: 0.15, green: 0.04, blue: 0.19),
                        Color(red: 0.05, green: 0.13, blue: 0.27)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
      
                .ignoresSafeArea(.all)
                
                Image("Image 5")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom,463)

                    .ignoresSafeArea(.all)
                ZStack{
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white)
                        .frame(width: 345.00, height: 467.00)
                    
                        .padding(.top,213)
                    VStack(spacing:15){
                        Text("أهلاً في سَنَــــد ")
                            .font(Font.custom("Jomhuria-Regular", size: 32))
                            .kerning(-0.010)
                            .textCase(.uppercase)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.22, green: 0.07, blue: 0.28))
                            .frame(minWidth: 248.00, minHeight: 8.00, alignment: .center)
                        Text("التطبيق الأول لمساندة المشجع السعودي ")
                            .font(Font.custom("Tajawal-Regular", size: 20))
                            .kerning(-0.010)
                            .textCase(.uppercase)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.22, green: 0.07, blue: 0.28))
                            .frame(minWidth: 267.00, minHeight: 67.00, alignment: .center)
                        Text("كمشجع جديد عليك إكمال باقي المعلومات\n لملفك الخاص في الإعدادات ")
                            .font(Font.custom("Tajawal-Regular", size: 20))
                            .kerning(-0.010)
                            .textCase(.uppercase)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.22, green: 0.07, blue: 0.28))
                            .frame(minWidth: 317.00, minHeight: 8.00, alignment: .center)
                        Text("نتمنى أن تخوض تجربة ممتعه ومسانده جميلة")
                            .font(Font.custom("Tajawal-Regular", size: 20))
                            .kerning(-0.010)
                            .textCase(.uppercase)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.22, green: 0.07, blue: 0.28))
                            .frame(minWidth: 248.00, minHeight: 7.00, alignment: .center)
                        
                        
                    }
                    
                }
                HStack(spacing: 74) {
                    Button(action: {
                        ui.toggle()
                    }) {
                        Text("تخطي")
                            .foregroundColor(.white)
                            .font(.custom("Tajawal-Regular", size: 13))
                            .frame(width: 64, height: 34)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(red: 0.22, green: 0.07, blue: 0.28))
                            )
                    }
                    Button(action: {
                        uii.toggle()
                    }) {
                        Text("الاعدادت")
                            .foregroundColor(.white)
                            .font(.custom("Tajawal-Regular", size: 13))
                            .frame(width: 64, height: 34)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(red: 0.22, green: 0.07, blue: 0.28))
                            )
                    }

                } .padding(.top,333)
        
                NavigationLink(
                destination: LoginView(),
                isActive: $ui
                ) {
                EmptyView()
            }
                NavigationLink(
                destination: SignUpView(),
                isActive: $uii
            ) {
                EmptyView()
            }
            
            }.edgesIgnoringSafeArea(.all)
           
    }
    }}


#Preview {
    firstview()
}
