//
//  MenuRow.swift
//  SwiftUICombineAndData
//
//  Created by Nov Petrović on 16/03/2023.
//

import SwiftUI

struct MenuRow: View {
    var title: String = "FAQ / Contact"
    var leftIcon: String = "questionmark"
    var rightIcon: String = "chevron.right"
    var body: some View {
        HStack(spacing: 12.0) {
            GradientIcon(icon: leftIcon)
            
            Text(title)
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Spacer()
            
            Image(systemName: rightIcon)
                .font(.system(size: 15, weight: .semibold))
                .opacity(0.8)
        }
        .frame(width: .infinity, alignment: .leading)
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow()
    }
}
