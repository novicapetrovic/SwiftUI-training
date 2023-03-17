//
//  NotificationsRow.swift
//  SwiftUICombineAndData
//
//  Created by Nov Petrović on 17/03/2023.
//

import SwiftUI

struct NotificationsRow: View {
    @State private var subscribed: Bool = true
    var body: some View {
        Toggle(isOn: $subscribed) {
            HStack(spacing: 12) {
                GradientIcon(icon: "bell.fill")
                
                VStack(alignment: .leading) {
                    Text("Notify me of new content")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("Max once a week.")
                        .font(.caption2)
                        .opacity(0.2)
                }
            }
        }
        .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.3450980392, green: 0.337254902, blue: 0.8392156863, alpha: 1))))
    }
}

struct NotificationsRow_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsRow()
    }
}
