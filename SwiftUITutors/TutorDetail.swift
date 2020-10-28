//
//  TutorDetail.swift
//  SwiftUITutors
//
//  Created by Kareem Ahmed on 10/24/20.
//

import SwiftUI

struct TutorDetail: View {
    var name: String
    var headline: String
    var bio: String
    var body: some View {
        VStack {
            Image(name)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.orange, lineWidth: 4))
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text(name)
                .font(.title)
            Text(headline)
                .font(.subheadline)
            
            Divider()
            Text(bio)
                .font(.headline)
                .multilineTextAlignment(.center)
                .lineLimit(50)
        }.padding()
    }
}

#if DEBUG
struct TutorDetail_Previews: PreviewProvider {
    static var previews: some View {
        TutorDetail(name: "Simon Ng", headline: "Founder of AppCoda", bio: "Founder of AppCoda. Author of multiple iOS programming books including Beginning iOS 12 Programming with Swift and Intermediate iOS 12 Programming with Swift. iOS Developer and Blogger.")
    }
}
#endif
