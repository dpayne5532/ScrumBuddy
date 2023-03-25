//
//  ScrumBuddyApp.swift
//  ScrumBuddy
//
//  Created by Dan Payne on 3/25/23.
//

import SwiftUI

@main
struct ScrumBuddyApp: App {
    var body: some Scene {
        WindowGroup {
          ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
