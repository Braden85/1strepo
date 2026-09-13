//
//  News3.swift
//  1strepo
//
//  Created by Lee Guan Yi Braden on 10/9/26.
//

import SwiftUI
struct News3: View {
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
                Text("Newly discovered studies shows that bridges are used to help citizens to cross water. While previously mistaken as a umbrella for the river, recent studies that caused the goverment of 67 million dollars shows that bridges were made for the citizen's use and also proved that it is in fact not a umbrella for the river. This discovery shows that the human species is finding answers to questions that nobody asked for.")
                Image("bridge")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 300)
                HStack {
                    Image(systemName: "star.fill")
                    Stepper(
                        "I rate this \(rating) out of 5 on usefulness, I find a potato shoe more useful than this.",
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
        News3(
            title: "News 3",
            content: "Bridges help people cross water, new study shows"
                
        )
    }
}
