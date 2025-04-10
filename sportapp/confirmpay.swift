//
//  confirmpay.swift
//  sportapp
//
//  Created by noor alotibi on 9/10/1446 AH.
//
import SwiftUI

struct confirmpay: View {
    @State private var text = ""
    @State private var tex = ""
    @State private var sale = ""
    @State private var nxtui = false

    let totalPrice: Int
    let ticketsCount: Int
    var body: some View {
        NavigationStack{
            ZStack {
                LinearGradient(
                    gradient: Gradient(stops: [
                        .init(color: Color(red: 0.15, green: 0.04, blue: 0.19), location: 0.00),
                        .init(color: Color(red: 0.05, green: 0.13, blue: 0.27), location: 1.00)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                
                Color(red: 217/255, green: 217/255, blue: 217/255)
                    .frame(width: 367, height: 769)
                    .cornerRadius(15)
                
                ZStack {
                    Image("Image")
                }.padding(.bottom, 701)

//
                Image("Image 3")
                    .padding(.bottom, 650)
                
                HStack {
                    VStack {
                        Image("Image 4")
                            .frame(width: 42, height: 45)
                        Text("AL hilal")
                            .font(Font.custom("K2D-Regular", size: 8))
                            .textCase(.uppercase)
                            .foregroundColor(Color(red: 0.22, green: 0.07, blue: 0.28))
                    }
                    .allowsHitTesting(false)
                    Text("X")
                        .font(Font.custom("SyneMono-Regular", size: 15))
                        .textCase(.uppercase)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.22, green: 0.07, blue: 0.28))
                        .frame(minWidth: 28.00, minHeight: 37.00, alignment: .center)
                        .padding()
                    VStack {
                        Image("Image 2")
                            .frame(width: 42, height: 49)
                        Text("Real madrid")
                            .font(Font.custom("K2D-Regular", size: 8))
                            .textCase(.uppercase)
                            .foregroundColor(Color(red: 0.22, green: 0.07, blue: 0.28))
                    }
                }
                .padding(.bottom, 555)
                
                Rectangle()
                    .fill(Color(red: 56/255, green: 17/255, blue: 72/255))
                    .frame(height: 1)
                    .padding(.horizontal, 90)
                    .padding(.bottom, 474)
                
                VStack {
                    HStack {
                        Rectangle()
                            .fill(Color(red: 56/255, green: 17/255, blue: 72/255))
                            .frame(width: 1, height: 40)
                            .padding(.bottom, 423)
                            .padding(.leading, 168)
                        
                        HStack {
                            ZStack {
                                Color(red: 0.22, green: 0.07, blue: 0.28)
                            }
                            .mask(
                                Text("ملعب المملكة أرينا")
                                    .font(Font.custom("Tajawal-Regular", size: 6))
                                    .textCase(.uppercase)
                                    .multilineTextAlignment(.center)
                                    .frame(minWidth: 50.00, minHeight: 5.00, alignment: .leading)
                            )
                            .padding(.bottom, 436)
                            .padding(.leading, -159)
                            
                            ZStack {
                                Color(red: 0.22, green: 0.07, blue: 0.28)
                            }
                            .mask(
                                Text("الجمعة 20 يوليو   \n \n 9:00 PM\n")
                                    .font(Font.custom("Tajawal-Regular", size: 6))
                                    .textCase(.uppercase)
                                    .multilineTextAlignment(.center)
                                    .frame(minWidth: 51.00, minHeight: 5.00, alignment: .center)
                            )
                            .padding(.bottom, 422)
                            .padding(.leading, -139)
                            
                            ZStack {
                                Color(red: 0.22, green: 0.07, blue: 0.28)
                            }
                            .mask(
                                Text("نهائي كأس العالم للأندية")
                                    .font(Font.custom("Tajawal-Regular", size: 6))
                                    .textCase(.uppercase)
                                    .multilineTextAlignment(.center)
                                    .frame(minWidth: 88.00, minHeight: 5.00, alignment: .trailing)
                            )
                            .padding(.bottom, 430)
                            .padding(.leading, -145)
                        }
                        
                        Rectangle()
                            .fill(Color(red: 56/255, green: 17/255, blue: 72/255))
                            .frame(width: 1, height: 40)
                            .padding(.bottom, 423)
                            .padding(.leading, -148)
                    }
                }
            
                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color(red: 56/255, green: 17/255, blue: 72/255), lineWidth: 1)
                            .frame(width: 321.00, height: 449.00)
                            .padding(.top, 260)
                        
                        VStack {
                            ZStack {
                                Color(red: 0.22, green: 0.07, blue: 0.28)
                            }
                            .mask(
                                Text("تفاصيل شراء التذكرة :")
                                    .font(Font.custom("Tajawal-Regular", size: 10))
                                    .kerning(-0.010)
                                    .textCase(.uppercase)
                                    .multilineTextAlignment(.center)
                                    .frame(minWidth: 111.00, minHeight: 50.00, alignment: .center)
                            )
                            .padding(.leading, 212)
                            .padding(.top, 200)
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(red: 56/255, green: 17/255, blue: 72/255), lineWidth: 1)
                                    .fill(Color.white)
                                    .frame(width: 299.00, height: 72.00)
                                
                                HStack {
                                    Text("عدد التذاكر:\n \(ticketsCount)")
                                        .font(Font.custom("Tajawal-Regular", size: 8))
                                        .frame(minWidth: 121.00, minHeight: 50.00, alignment: .center)
                                        .padding(.leading, 63)
                                    
                                    Text("إجمالي السعر: \n\(totalPrice) ريال")
                                        .font(Font.custom("Tajawal-Regular", size: 8))
                                        .textCase(.uppercase)
                                        .multilineTextAlignment(.center)
                                        .frame(minWidth: 121.00, minHeight: 50.00, alignment: .center)
                                    
                                    Text("نوع التذكرة : \n \nCAT 3")
                                        .font(Font.custom("Tajawal-Regular", size: 8))
                                        .textCase(.uppercase)
                                        .multilineTextAlignment(.center)
                                        .frame(minWidth: 121.00, minHeight: 50.00, alignment: .center)
                                        .padding(.trailing, 66)
                                }
                            }
                            
                            ZStack {
                                TextField("حجز موقف", text: $text)
                                    .multilineTextAlignment(.trailing)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 283.00, height: 34.00)
                                    .padding(.leading)
                                
                                Button {
                                } label: {
                                    Text("الذهاب")
                                        .foregroundColor(.white)
                                        .font(Font.custom("Tajawal-Regular", size: 13))
                                        .textCase(.uppercase)
                                        .frame(width: 64.00, height: 34.00)
                                        .background(
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color(red: 0.22, green: 0.07, blue: 0.28))
                                        )
                                }
                                .padding(.trailing, 210)
                            }
                            
                            ZStack {
                                TextField(" نقاط النقل", text: $tex)
                                    .multilineTextAlignment(.trailing)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 283.00, height: 34.00)
                                    .padding(.leading)
                                
                                Button {
                                } label: {
                                    Text("الذهاب")
                                        .foregroundColor(.white)
                                        .font(Font.custom("Tajawal-Regular", size: 13))
                                        .kerning(-0.010)
                                        .textCase(.uppercase)
                                        .frame(width: 64.00, height: 34.00)
                                        .background(
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color(red: 0.22, green: 0.07, blue: 0.28))
                                        )
                                }
                                .padding(.trailing, 210)
                            }
                            
                            ZStack {
                                TextField(" اكتب كود الخصم", text: $sale)
                                    .multilineTextAlignment(.trailing)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 283.00, height: 34.00)
                                    .padding(.leading)
                                
                                Button {
                                } label: {
                                    Text("تطبيق")
                                        .foregroundColor(.white)
                                        .font(Font.custom("Tajawal-Regular", size: 13))
                                        .frame(width: 64.00, height: 34.00)
                                        .background(
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color(red: 0.22, green: 0.07, blue: 0.28))
                                        )
                                }
                                .padding(.trailing, 210)
                            }
                            
                            ZStack {
                                Color(red: 0.22, green: 0.07, blue: 0.28)
                            }
                            .mask(
                                Text("إختر طريقة الدفع المناسبة لك :")
                                    .font(Font.custom("Tajawal-Regular", size: 10))
                                    .textCase(.uppercase)
                                    .padding(.leading, 166)
                            )
                        }
                        .padding(.top, 66)
                    }
                    
                    ZStack {
                        Color(red: 0.22, green: 0.07, blue: 0.28)
                            .mask(
                                VStack(alignment: .trailing, spacing: 4) {
                                    HStack {
                                        Text("وسيلة دفع آمنة")
                                        Image(systemName: "checkmark.circle.fill")
                                            .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
                                    }
                                    HStack {
                                        Text("تذكرة ضد السوق السوداء أو الإحتيال")
                                        Image(systemName: "checkmark.circle.fill")
                                            .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
                                    }
                                    HStack {
                                        Text("إسترداد الأموال في حال إلغاء التذكرة")
                                        Image(systemName: "checkmark.circle.fill")
                                            .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
                                    }
                                }
                                    .font(Font.custom("Tajawal-Regular", size: 10))
                                    .multilineTextAlignment(.trailing)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .padding(.bottom, 111)
                                    .padding(.trailing, 95)
                            )
                    }
                }
            }.ignoresSafeArea()}
      
    }
}

#Preview {
    confirmpay(totalPrice: 400, ticketsCount: 2)
}
