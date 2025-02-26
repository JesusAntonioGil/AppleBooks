//
//  Book.swift
//  AppleBooks
//
//  Created by Jesus Antonio Gil on 26/2/25.
//

import SwiftUI


struct Book: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let author: String
    let raiting: String
    let thumbnail: String
    let color: Color
}


let books: [Book] = [
    .init(title: "The Green Girl",
          author: "Ken Admas",
          raiting: "4.8 (32) * Crime & Thrillers",
          thumbnail: "Book 1",
          color: .book1),
    .init(title: "The Yellow Birds",
          author: "Kevin Powers",
          raiting: "4.5 (6) * Health & Wellness",
          thumbnail: "Book 2",
          color: .book2)
]


let dummyText: String = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
