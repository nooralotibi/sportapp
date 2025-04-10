//
//  background.swift
//  sportapp
//
//  Created by noor alotibi on 12/10/1446 AH.
//
import SwiftUI

struct background: View {
    
    @State private var ticketCount: Int = 1
    let ticketPrice = 400
   

    @State private var nextui = false
    @State  var nxtui = false
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

            Color(red: 217/255, green: 217/255, blue: 217/255)
                .cornerRadius(15)
                .padding(20)
            
            VStack(spacing: -88) {
                
                VStack(spacing: 8) {
                    Image("Image")
                        .padding(.top,4)
                    Image("Image 3")
                        .padding(.bottom, -36)
                    HStack(spacing: 24) {
                        VStack {
                            Image("Image 4")
                                .resizable()
                                .frame(width: 42, height: 45)
                            Text("AL hilal")
                                .font(.custom("K2D-Regular", size: 8))
                                .foregroundColor(Color(red: 0.22, green: 0.07, blue: 0.28))
                        }
                        
                        Text("X")
                            .font(.custom("SyneMono-Regular", size: 15))
                            .foregroundColor(Color(red: 0.22, green: 0.07, blue: 0.28))
                        
                        VStack {
                            Image("Image 2")
                                .resizable()
                                .frame(width: 42, height: 49)
                            Text("Real madrid")
                                .font(.custom("K2D-Regular", size: 8))
                                .foregroundColor(Color(red: 0.22, green: 0.07, blue: 0.28))
                        }
                    }
                    Rectangle()
                                           .fill(Color(red: 56/255, green: 17/255, blue: 72/255))
                                           .frame(height: 1)
                                           .padding(.horizontal, 70)
                    HStack(spacing: 20) {
                        Text("ملعب المملكة أرينا")
                        Rectangle()
                            .fill(Color(red: 56/255, green: 17/255, blue: 72/255))
                            .frame(width: 1, height: 30)
                        Text("الجمعة 20 يوليو - 9:00 PM")
                        Rectangle()
                            .fill(Color(red: 56/255, green: 17/255, blue: 72/255))
                            .frame(width: 1, height: 30)
                        Text("نهائي كأس العالم للأندية")
                    }
                    .font(.custom("Tajawal-Regular", size: 8))
                    .foregroundColor(Color(red: 0.22, green: 0.07, blue: 0.28))
      
                    
                }.padding(.bottom,-24)
                
                StadiumMapView()
                    .padding(.leading,-10)
                
                
                VStack {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(red: 56/255, green: 17/255, blue: 72/255), lineWidth: 1)
                        .background(Color.white.cornerRadius(10))
                        .frame(height: 120)
                        .overlay(
                            VStack(spacing: 8) {
                                HStack {
                                    Text("الكمية: \(ticketCount)")
                                    Spacer()
                                    Text("نوع التذكرة: CAT 3")
                                }
                                .font(.custom("Tajawal-Regular", size: 10))
                                .padding(.horizontal)
                                
                                HStack {
                                    Text("سعر التذكرة:")
                                    Spacer()
                                    Text("\(ticketPrice * ticketCount) SR")
                                }
                                .font(.custom("Tajawal-Regular", size: 10))
                                .padding(.horizontal)
                                
                                HStack {
                                    Stepper(value: $ticketCount, in: 1...10) {
                                        Text("")
                                    }
                                    .labelsHidden()
                                    
                                    Spacer()
                                    
                                    Button(action: {
                                        nextui.toggle()
                                    }) {
                                        Text("شراء")
                                            .foregroundColor(.white)
                                            .font(.custom("Tajawal-Regular", size: 13))
                                            .frame(width: 64, height: 34)
                                            .background(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(Color(red: 0.22, green: 0.07, blue: 0.28))
                                            )
                                    }
                                }
                            }
                        )
                }.padding(.bottom,99)
                    .padding(.horizontal)
                
                NavigationLink(
                    destination: confirmpay(totalPrice: ticketPrice * ticketCount, ticketsCount: ticketCount),
                    isActive: $nextui
                ) {
                    EmptyView()
                }}.padding()
        }
       
        }.navigationBarBackButtonHidden(false)    .accentColor(Color.gray)      }
}

#Preview {
    background()
}
