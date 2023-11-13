//
//  ButtonView.swift
//  StopWatchProject
//
//  Created by junxi Yim on 2023/11/2.
//

import SwiftUI

struct Portion: View {
    
    let PortionTitle:String
    let imageFileTitle:String
    let dateCreated:String
    let DateVisibility:Double
    
    
    var body: some View {
        VStack(alignment:.leading){
            Image(imageFileTitle)
                .resizable()
                .frame(width: 150,height: 230)
                .cornerRadius(5.0)
            Text(movieName)
                .font(.system(size: 25))
                .padding(.leading,5)
            Text(dateCreated)
                .font(.system(size: 20))
                .foregroundColor(.gray)
                .opacity(DateVisibility)
                .padding(.leading,5)
            }
        }
    }
    
    #Preview {
        Portion(movieName: "abababa", imageFileTitle: "Settings Icon", dateCreated: "Oct 27", DateVisibility: 1)
    }
