//
//  FAQView.swift
//  SwiftUICombineAndData
//
//  Created by Nov Petrović on 16/03/2023.
//

import SwiftUI

struct FAQView: View {
    @State private var contentOffset = CGFloat(0)
    
    var body: some View {
        ZStack(alignment: .top) {
            TrackableScrollView { offsetPoint in
                contentOffset = offsetPoint.y
            } content: {
                content
            }
            VisualEffectBlur(blurStyle: .systemMaterial)
                .opacity(contentOffset < -16 ? 1 : 0)
                .animation(.easeIn)
                .ignoresSafeArea()
                .frame(height: 0)
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .navigationTitle("FAQ")
        .background(Color("Background 2").edgesIgnoringSafeArea(.all))
    }
    
    var content: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(faqData, id: \.id) { faq in
                FAQRow(faq: faq)
            }
            
            Text("Have any questions?")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.subheadline)
                .opacity(0.7)
            
            Link(destination: URL(string: "mailto:support@designcode.io")!, label: {
                PrimaryButton()
                    .padding(.top, 16)
            })
        }
        .padding(20)
    }
}

struct FAQView_Previews: PreviewProvider {
    static var previews: some View {
        FAQView()
    }
}
