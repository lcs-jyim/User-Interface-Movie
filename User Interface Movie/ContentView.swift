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
                        MovieInformation(movieName: "Outlander", imageFileTitle: "OutlanderPoster", dateCreated: "N/A", DateVisibility: 0, lineNumberRestriction: 3)
                        MovieInformation(movieName: "Star Trek: Strange New Worlds", imageFileTitle: "StartrekPoster", dateCreated: "N/A", DateVisibility: 0, lineNumberRestriction: 3)
                    }
                    Divider()
                    VStack(alignment: .leading){
                        Text("Popular Movies")
                            .font(.system(size: 30))
                            .padding(.bottom,1)
                            .bold()
                        HStack(alignment: .top){
                            MovieInformation(movieName: "South Park: Joining the Panderverse", imageFileTitle: "SouthParkPoster", dateCreated: "October 27", DateVisibility: 1, lineNumberRestriction: 2)
                            MovieInformation(movieName: "Five Nights  at Freddy's", imageFileTitle: "FiveNightsPoster", dateCreated: "October 27", DateVisibility: 1, lineNumberRestriction: 2)
                            MovieInformation(movieName: "PAW Patrol:The Mighty Movie", imageFileTitle: "PawPatrolPoster", dateCreated: "September 29", DateVisibility: 1, lineNumberRestriction: 2)
                            MovieInformation(movieName: "Saw X", imageFileTitle: "SawXPoster", dateCreated: "September 29", DateVisibility: 1, lineNumberRestriction: 2)
                        }
                    }
                    VStack(alignment: .leading){
                        Text("Popular TV Shows")
                            .font(.system(size: 30))
                            .padding(.bottom,5)
                            .bold()
                        
                        ZStack {
                            HStack{
                                MovieInformation(movieName: "RandomTV1", imageFileTitle: "Random1", dateCreated: "N/A", DateVisibility: 0, lineNumberRestriction: 1)
                                MovieInformation(movieName: "RandomTV2", imageFileTitle: "Random2", dateCreated: "N/A", DateVisibility: 0, lineNumberRestriction: 1)
                                MovieInformation(movieName: "RandomTV3", imageFileTitle: "Random3", dateCreated: "N/A", DateVisibility: 0, lineNumberRestriction: 1)
                            }
                            .blur(radius:10)
                            Rectangle()
                                .foregroundColor(.backgroundGray)
                                .opacity(0.8)
                            
                            
                            ZStack {
                                Rectangle()
                                    .frame(width:350,height:50)
                                    .foregroundColor(.gray)
                                    .cornerRadius(20)
                                    .opacity(0.4)
                                
                                HStack{
                                    Image(systemName: "magnifyingglass")
                                        .resizable()
                                        .frame(width:25,height:25)
                                        .foregroundColor(.white)
                                    Text("9 free searches remaining")
                                        .foregroundColor(.searchbarGray)
                                        .opacity(0.8)
                                    Spacer()
                                }
                                .offset(x:30)
                            }
                            .offset(y:-50)
                            
                        }
    
                    }
                    
                    Spacer()
                }
                .offset(x:35,y:100)
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
                .ignoresSafeArea()
                .frame(width:394,height:730)
                .clipped()
            }
        }
    }

#Preview {
    ContentView()
}
