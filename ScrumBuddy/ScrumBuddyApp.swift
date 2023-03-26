//
//  ScrumBuddyApp.swift
//  ScrumBuddy
//
//  Created by Dan Payne on 3/25/23.
//

import SwiftUI

@main
struct ScrumBuddyApp: App {
  @State private var store = ScrumStore()
  
  var body: some Scene {
    WindowGroup {
      NavigationView {
        ScrumsView(scrums: $store.scrums)
      }
      .onAppear {
        ScrumStore.load {
          result in
          switch result {
          case .failure(let error):
            fatalError(error.localizedDescription)
          case .success(let scrums):
            store.scrums = scrums
          }
        }
      }
      
    }
  }
}

