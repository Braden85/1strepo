//
//  News2.swift
//  1strepo
//
//  Created by Lee Guan Yi Braden on 10/9/26.
//

import SwiftUI
struct News2: View {
    let title: String
    let content: String
    @State var rating = 0
    @State var isOn = false
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(content)
                    .font(.title)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .center)
                Text("Scientist are finally confirming that there is indeed oxygen found in the air, the long debated question whether if oxygen exist in the air has finally been answered by a team of scientists from the University of Oxford and the University of Cambridge. They were initially skeptical about this long discuss topic. However, after conducting several months of testing and experimenting, they have concluded that the was oxygen in the air we breath. The long debated topic in the scientific community has finally come to a end")
                Image("oxygenfoundinair")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 300)
                HStack {
                    Image(systemName: "star.fill")
                    Stepper(
                        "I rate this \(rating) out of 5 on usefulness, I find my left shoe more useful than this.",
                        value: $rating,
                        in: 0...5
                    )
                }
                HStack {
                    Image(systemName: "hand.thumbsdown")
                    Toggle("Dislike", isOn: $isOn)
                    if isOn {
                        Text("You have disliked this news")
                    }
                }
                Text("Another \(Int.random(in: 0...10000)) people also think this news sucks")
            }
            .padding()
        }
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}
#Preview {
    NavigationStack {
        News2(
            title: "News 2",
            content: "Oxygen found in the air"
                
        )
    }
}
