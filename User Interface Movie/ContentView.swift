//
//  ContentView.swift
//  Reminders App
//
//  Created by junxi Yim on 2023/11/7.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                VStack(alignment: .leading){
                    Text("Pinned Item >")
                        .font(.system(size: 30))
                        .padding(.bottom,5)
                        
                        .bold()
                    HStack(alignment: .top){
                        MovieInformation(movieName: "Outlander", imageFileTitle: "OutlanderPoster", dateCreated: "N/A", DateVisibility: 0)
                        MovieInformation(movieName: "Star Trek: Strange New Worlds", imageFileTitle: "StartrekPoster", dateCreated: "N/A", DateVisibility: 0)
                    }
                    Divider()
                    VStack(alignment: .leading){
                        Text("Popular Movies")
                            .font(.system(size: 30))
                            .padding(.bottom,1)
                            .bold()
                        HStack(alignment: .top){
                            MovieInformation(movieName: "Outlander", imageFileTitle: "OutlanderPoster", dateCreated: "N/A", DateVisibility: 0)
                            MovieInformation(movieName: "Star Trek: Strange New Worlds", imageFileTitle: "StartrekPoster", dateCreated: "N/A", DateVisibility: 0)
                        }
                    }
                    Spacer()
                }
            }
            .navigationTitle("Discover")
            .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: {}) {
                            Image("Settings Icon")
                                .resizable()
                                .frame(width: 25,height:25)
                            
                        }

                    }
                    ToolbarItem(placement: .topBarTrailing){
                        Image(systemName: "clock.arrow.circlepath")
                            .foregroundColor(.mainTonePurple)
                    }
            }
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            }
        }
    }

#Preview {
    ContentView()
}
