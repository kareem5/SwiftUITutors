//
//  ContentView.swift
//  SwiftUITutors
//
//  Created by Kareem Ahmed on 10/24/20.
//

import SwiftUI

struct ContentView: View {
    var tutors: [Tutor] = []
    var body: some View {
        NavigationView {
            List(tutors) { tutor in
                TutorCell(tutor: tutor)
            }
            .navigationBarTitle(Text("Tutors"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tutors: testData)
    }
}

struct TutorCell: View {
    let tutor: Tutor
    var body: some View {
        NavigationLink(destination: TutorDetail(name: tutor.name, headline: tutor.headline, bio: tutor.bio)) {
            Image(tutor.imageName)
                .cornerRadius(40.0)
            VStack(alignment: .leading) {
                Text(tutor.name)
                Text(tutor.headline)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
        }
    }
}
