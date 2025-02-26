//
//  BookCardView.swift
//  AppleBooks
//
//  Created by Jesus Antonio Gil on 26/2/25.
//

import SwiftUI


struct BookCardView: View {
    let book: Book
    
    
    init(book: Book) {
        self.book = book
    }
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 15) {
                TopCardView()
            }
        }
    }
    
    
    func TopCardView() -> some View {
        VStack(spacing: 15) {
            FixedHeaderView()
            
            Image(book.thumbnail)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.top, 10)
            
            Text(book.title)
                .serifText(.title2, weight: .bold)
            
            Button {
                
            } label: {
                HStack(spacing: 6) {
                    Text(book.author)
                    
                    Image(systemName: "chevron.right")
                        .font(.callout)
                }
            }
            .padding(.top, -5)
            
            Label(book.raiting, systemImage: "star.fill")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 4) {
                    Text("Book")
                        .fontWeight(.semibold)
                    
                    Image(systemName: "info.circle")
                        .font(.caption)
                    
                    Text("45 pages")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    
                    HStack(spacing: 10) {
                        Button {
                            
                        } label: {
                            Label("Sample", systemImage: "book.pages")
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 5)
                        }
                        .tint(.white.opacity(0.2))

                        Button {
                            
                        } label: {
                            Text("Get")
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 5)
                        }
                        .foregroundStyle(.black)
                        .tint(.white)
                    }
                    .buttonStyle(.borderedProminent)
                }
            }

        }
        .foregroundStyle(.white)
        .background {
            Rectangle()
                .fill(book.color.gradient)
        }
    }
    
    func FixedHeaderView() -> some View {
        HStack(spacing: 20) {
            Button {
                
            } label: {
                Image(systemName: "xmark.circle.fill")
            }
            
            Spacer()

            Button {
                
            } label: {
                Image(systemName: "plus.circle.fill")
            }
            
            Button {
                
            } label: {
                Image(systemName: "ellipsis.circle.fill")
            }
        }
        .buttonStyle(.plain)
        .font(.title)
        .foregroundStyle(.white, .white.tertiary)
    }
}


#Preview {
    BookCardView(book: books[0])
}



extension View {
    func serifText(_ font: Font, weight: Font.Weight) -> some View {
        self
            .font(font)
            .fontWeight(weight)
            .fontDesign(.serif)
    }
}
