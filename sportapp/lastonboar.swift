//
//  lastonboar.swift
//  sportapp
//
//  Created by noor alotibi on 25/10/1446 AH.
//

import SwiftUI

struct lastonboar: View {
    @State  var laston = false
    @State private var nxt = false

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
                VStack{
                VStack {
                    ZStack{
                        
                        Image("Image 5")
                            .resizable()
                            .frame(width: 413.00, height: 403.00)
                        //
                            .opacity(0.20)
                        //                        .padding(.bottom, 290)
                            .ignoresSafeArea()
                        Button(action: {
                            nxt.toggle()
                        }) {
                            
                            Image(systemName: "xmark.circle.fill")
                                .resizable()
                                .foregroundColor(.white)
                               
                                .frame(width: 35, height: 35)
                                .padding(.leading,299)
                                .padding(.bottom,97)
                                .opacity(0.9)
                            
                        
                    }
                    VStack(alignment:.trailing,spacing: 10){
                   
    //                    .padding(.bottom,99)
    //                    .padding(.horizontal)
                    } .padding(.top,333)
                    //                    .padding(.horizontal)
                    NavigationLink(
                    destination: CustomTabBarView( authSheetVisible: .constant(false)),
                    isActive: $nxt
                ) {
                    EmptyView()
                }
                        
                    }
                    VStack(alignment:.trailing,spacing: 10){
                        
                        Text("نقاط النقل")
                            .font(Font.custom("Tajawal-Regular", size: 35))
                            .foregroundColor(.white)
//                            .padding(.horizontal,-15)
                        //                            .frame(maxWidth: .infinity, alignment: .trailing)
                        //                            .padding(.horizontal)
                        
                        Text("تعرف على نقاط نقل المشجعين للملعب .. ")
                            .font(Font.custom("Tajawal-Regular", size: 20))
                                                     .multilineTextAlignment(.leading)
                            .foregroundColor(.white)
                             .padding(.horizontal,-22)
                            .padding()
                    }
                    
                    .padding()
                    .padding(.leading,49)
                    HStack {
                        Button(action: {
                            laston.toggle()
                        }) {
                            Image(systemName: "arrowshape.left.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .foregroundColor(.white)
                                .padding(.trailing,295)
                        }
                    }
                }    /* .padding(.bottom,299)*/
                    .padding(.leading)
                
                NavigationLink(
                    destination: Onboard(),
                    isActive: $laston
                ) {
                    EmptyView()
                }
                    ZStack{
                        Image("Image 8")
                            .resizable()
                        .frame(width: 420.00, height: 420.00)
                        .opacity(0.2)
                        Image("Image 8")
                            .resizable()
                            .frame(width: 331.00, height: 331.00)
                    }.padding(.leading,123)
            }
            }.padding()
        }.navigationBarBackButtonHidden(true)
        .accentColor(Color.gray)
           
    }
}
#Preview {
    lastonboar()
}
