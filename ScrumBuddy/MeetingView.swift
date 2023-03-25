//
//  ContentView.swift
//  ScrumBuddy
//
//  Created by Dan Payne on 3/25/23.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
      
      VStack {
        ProgressView(value: 5, total: 15)
        HStack {
          Text("Seconds Elapsed")
          Text("Seconds Remaining")
        }
      }
      
    }
}

struct MeetingView_Preview: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
