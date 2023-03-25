//
//  DetailView.swift
//  ScrumBuddy
//
//  Created by Dan Payne on 3/25/23.
//

import SwiftUI

struct DetailView: View {
  let scrum: DailyScrum
  
  var body: some View {
    List {
      Section(header: Text("Meeting Info")) {
        Label("Start Meeting", systemImage: "timer")
          .font(.headline)
          .foregroundColor(.accentColor)
        HStack {
          Label("Length", systemImage: "clock")
          Spacer()
          Text("\(scrum.lengthInMinutes) minutes")
        }
        .accessibilityElement(children: .combine)
        HStack {
          Label("Theme", systemImage: "paintpalette")
        }
      }
    }
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      DetailView(scrum: DailyScrum.sampleData[0])
    }
    
  }
}
