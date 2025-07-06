import SwiftUI
import HealthKit

@main
struct MindHarmonyApp: App {
    @StateObject private var profileVM = ProfileViewModel()
    @StateObject private var homeVM = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(profileVM)
                .environmentObject(homeVM)
        }
    }
}
