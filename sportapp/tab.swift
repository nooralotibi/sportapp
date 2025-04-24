//
//  tab.swift
//  sportapp
//
//  Created by noor alotibi on 25/10/1446 AH.
//

import SwiftUI
enum Tab {
    case  profile, bot, tickets, home
}

struct CustomTabBarView: View {
    @State private var selectedTab: Tab = .home
    @Binding var authSheetVisible: Bool


    var body: some View {
        ZStack(alignment: .bottom) {
            
            switch selectedTab {
         
            case .profile:
                AuthView(authSheetVisible: $authSheetVisible)
            case .bot:
                confirmpay(totalPrice: 400, ticketsCount: 2)
            case .tickets:
                tickit()
            case .home:
                backstud()
                  
//            case .settings:
//                EmptyView()
         
            }
            
            Spacer()
               
            if !authSheetVisible{
                HStack(spacing: 30) {
//                    tabBarItem(imageName: "gearshape.fill", tab: .settings)
                    tabBarItem(imageName: "person.fill", tab: .profile)
                    tabBarItem(imageName: "AI ICON", tab: .bot, useSystemImage: false)
                    tabBarItem(imageName: "ticket.fill", tab: .tickets)
                    tabBarItem(imageName: "house.fill", tab: .home)
                }
                .padding()
                .background(Color(.systemGray5).opacity(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .padding(.horizontal)
                .padding(.top,213)
            }
        }
    }

    @ViewBuilder
    func tabBarItem(imageName: String, tab: Tab, useSystemImage: Bool = true) -> some View {
        ZStack {
            if selectedTab == tab {
                Circle()
                    .fill(Color.purple)
                    .frame(width: 40, height: 40)
            }

            Group {
                if useSystemImage {
                    Image(systemName: imageName)
                } else {
                    Image(imageName)
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 22, height: 22)
                        .foregroundColor(selectedTab == tab ? .white : .primary)
                }
            }

        }
        .onTapGesture {
            selectedTab = tab
        }
    }

}

#Preview {

    CustomTabBarView(authSheetVisible: .constant(false))
}
