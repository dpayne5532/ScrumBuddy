//
//  ScrumBuddyApp.swift
//  ScrumBuddy
//
//  Created by Dan Payne on 3/25/23.
//

import SwiftUI

@main
struct ScrumBuddyApp: App {
  @State private var scrums = DailyScrum.sampleData
  var body: some Scene {
    WindowGroup {
      NavigationView {
        ScrumsView(scrums: $scrums)
      }
      
    }
  }
}
