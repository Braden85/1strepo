//
//  ContentView.swift
//  1strepo
//
//  Created by Lee Guan Yi Braden on 31/8/26.
// Name of app Is CNU (channel news useless)
//

import SwiftUI
struct ContentView: View {
    
    @State var rating = 0
    @State var isOn = false
    @State var favourite = false
    @State var favourite2 = false
    @State var favourite3 = false
    var body: some View {
        
        TabView {
            
            NavigationStack {
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    Text("Chanenl News Useless - The very website where you can find the most useless news")
                        .font(.footnote)
                    
                    NavigationLink {
                        ScrollView {
                            News1(
                                title: "News 1",
                                content: "Water was discovered in the sea"
                            )
                        }
                    } label: {
                        Image(systemName: "book.pages")
                            .foregroundColor(.blue)
                        Text("News 1")
                            .font(.title)
                    }
                    .padding()
                    .contextMenu {
                        Button {
                            favourite = true
                        } label: {
                            Label("Add to Favorites", systemImage: "heart")
                        }
                    }
                    
                    NavigationLink {
                        ScrollView {
                            News2(
                                title: "News 2",
                                content: "Oxygen was found in the air"
                            )
                        }
                    } label: {
                        Image(systemName: "book.pages")
                            .foregroundColor(.blue)
                        Text("News 2")
                            .font(.title)
                    }
                    .padding()
                    .contextMenu {
                        Button {
                            favourite2 = true
                        } label: {
                            Label("Add to Favorites", systemImage: "heart")
                        }
                    }
                    NavigationLink {
                        ScrollView {
                            News3(
                                title: "News 3",
                                content: "Bridges help people cross water, new study shows"
                            )
                        }
                    } label: {
                        Image(systemName: "book.pages")
                            .foregroundColor(.blue)
                        Text("News 3")
                            .font(.title)
                    }
                    .padding()
                    .contextMenu {
                        Button {
                            favourite3 = true
                        } label: {
                            Label("Add to Favorites", systemImage: "heart")
                        }
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
                .navigationTitle("CNU")
                .font(.system(size: 30, design: .rounded))
            }
            .tabItem {
                Label("News", systemImage: "doc.text")
            }
            
            NavigationStack {
                
                Text("Welcome to CNU, the very app where you can find the most useless news. Here, we have compiled the most useless and stupid news around the world. CNU, also known as Channel News Asia, was first devloped on 31 August, and it was created as a 'twin' for Channel News Asia. And it is now a working app for millions of users around the globe. This amazing app was made by Braden and Jayce")
                    .navigationTitle("CNU")
                    .font(.system(size: 20, design: .monospaced))
                
            }
            .tabItem {
                Label("About Us", systemImage: "info.circle")
            }
            NavigationStack {
                VStack(alignment: .leading) {
                    if favourite {
                        NavigationLink {
                            News1(
                                title: "News 1",
                                content: "Water was discovered in the sea"
                            )
                        } label: {
                            HStack {
                                Image(systemName: "book.pages")
                                    .foregroundColor(.blue)
                                Text("News 1")
                                    .font(.title)
                            }
                        }
                        .contextMenu {
                            Button {
                                favourite = false
                            } label: {
                                Label("Remove from favourites", systemImage: "trash")
                            }
                        }
                    }
                    if favourite2 {
                        NavigationLink {
                            News2(
                                title: "News 2",
                                content: "Oxygen was found in the air"
                            )
                        } label: {
                            HStack {
                                Image(systemName: "book.pages")
                                    .foregroundColor(.blue)
                                Text("News 2")
                                    .font(.title)
                            }
                        }
                        .contextMenu {
                            Button {
                                favourite2 = false
                            } label: {
                                Label("Remove from favourites", systemImage: "trash")
                            }
                        }
                    }
                    if favourite3 {
                        NavigationLink {
                            News3(
                                title: "News 2",
                                content: "Bridges help people cross water, new study shows"
                            )
                        } label: {
                            HStack {
                                Image(systemName: "book.pages")
                                    .foregroundColor(.blue)
                                Text("News 3")
                                    .font(.title)
                            }
                        }
                        .contextMenu {
                            Button {
                                favourite3 = false
                            } label: {
                                Label("Remove from favourites", systemImage: "trash")
                            }
                        }
                    }
                    if !favourite && !favourite2 && !favourite3 {
                        Text("No favourites yet")
                    }
                    Spacer()
                }
                .padding()
                .navigationTitle("Favourites")
            }
            .tabItem {
                Label("Favourites", systemImage: "heart")
            }
                        }
                    }
                }
                
            
#Preview {
    ContentView()
}
