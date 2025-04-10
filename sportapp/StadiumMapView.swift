//
//  StadiumMapView.swift
//  sportapp
//
//  Created by noor alotibi on 8/10/1446 AH.
//



import SwiftUI

struct StadiumMapView: View {
    @State private var seats: [Seat] = []
    @State private var selectedSeats: [Seat] = []
    @State private var ticketCount: Int = 1
    let ticketPrice = 400

    let seatPerCircle = [18, 25, 28]
    let categories: [SeatCategory] = [.orange, .blue, .pink]
    
    @State private var nextui = false
    
    init() {
        var tempSeats: [Seat] = []
        var seatNumber = 1

        for (circleIndex, seatCount) in seatPerCircle.enumerated() {
            let category = categories[circleIndex % categories.count]
            for _ in 0..<seatCount {
                let seat = Seat(number: "\(seatNumber)", category: category)
                tempSeats.append(seat)
                seatNumber += 1
            }
        }

        _seats = State(initialValue: tempSeats)
    }

    var seatRings: [(radius: CGFloat, seats: [Seat])] {
        var result: [(CGFloat, [Seat])] = []
        var startIndex = 0

        for (index, count) in seatPerCircle.enumerated() {
            let endIndex = startIndex + count
            let ringSeats = Array(seats[startIndex..<endIndex])
            result.append((CGFloat(100 + index * 35), ringSeats))
            startIndex = endIndex
        }

        return result
    }

    var body: some View {
        ZStack {
            
            ForEach(Array(seatRings.enumerated()), id: \.offset) { (ringIndex, ring) in
                let angleStep = 2 * .pi / CGFloat(ring.seats.count)
                ForEach(Array(ring.seats.enumerated()), id: \.element.id) { (index, seat) in
                    let angle = CGFloat(index) * angleStep
                    let x = ring.radius * cos(angle)
                    let y = ring.radius * sin(angle)

                    Circle()
                        .fill(selectedSeats.contains(where: { $0.id == seat.id }) ? Color.green : seat.category.color)
                        .frame(width: 26, height: 26)
                        .overlay(Text(seat.number).font(.system(size: 7)).foregroundColor(.white))
                        .position(x: 200 + x, y: 300 + y)
                        .onTapGesture {
                            if let existingIndex = selectedSeats.firstIndex(where: { $0.id == seat.id }) {
                                selectedSeats.remove(at: existingIndex)
                            } else {
                                selectedSeats.append(seat)
                            }
                        }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.clear)
        
        if !selectedSeats.isEmpty {
            VStack(alignment: .leading, spacing: 8) {
                Text("المقاعد المختارة:")
                    .font(Font.custom("Tajawal-Regular", size: 14))
                    .padding(.leading, 299)
//                    .padding(.top, 440)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 1) {
                        ForEach(selectedSeats) { seat in
                            Text("\(seat.number)")
                            
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(8)
//
                                .padding(.bottom,123)
                                .padding(.leading)
                        }
                    }
                }
            }
        }
    }
}

struct Seat: Identifiable, Equatable {
    let id = UUID()
    let number: String
    let category: SeatCategory
}

enum SeatCategory {
    case orange, blue, pink

    var color: Color {
        switch self {
        case .orange: return Color.orange
        case .blue: return Color.blue
        case .pink: return Color.pink
        }
    }
}


#Preview {
    StadiumMapView()
}
