//
//  FAQ.swift
//  SwiftUICombineAndData
//
//  Created by Nov Petrović on 16/03/2023.
//

import Foundation

struct FAQ: Identifiable, Decodable {
    var id: Int
    var question: String
    var answer: String
}
