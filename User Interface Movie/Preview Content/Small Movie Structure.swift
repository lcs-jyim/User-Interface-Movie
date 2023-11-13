//
//  ButtonView.swift
//  StopWatchProject
//
//  Created by junxi Yim on 2023/11/2.
//

import SwiftUI

struct MovieInformation: View {
    
    let movieName:String
    let imageFileTitle:String
    let dateCreated:String
    var DateVisibility:Double
    
    
    var body: some View {
        VStack(alignment:.leading){
            Image(imageFileTitle)
                .resizable()
                .frame(width: 120,height: 180)
                .cornerRadius(5.0)
            Text(movieName)
                .font(.system(size: 20))
                .padding(.leading,5)
                .fixedSize(horizontal: false, vertical: true)
            Text(dateCreated)
                .font(.system(size: 15))
                .foregroundColor(.gray)
                .opacity(DateVisibility)
                .padding(.leading,5)
            }
        .frame(width:120)
        }
    }
    
    #Preview {
        MovieInformation(movieName: "abababa", imageFileTitle: "Settings Icon", dateCreated: "Oct 27", DateVisibility: 1)
    }
