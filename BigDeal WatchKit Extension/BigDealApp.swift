//
//  BigDealApp.swift
//  BigDeal WatchKit Extension
//
//  Created by 国望恒 on 2021/7/2.
//

import SwiftUI

@main
struct BigDealApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
