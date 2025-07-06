import SwiftUI

struct ProfileSummaryView: View {
    let profile: Profile
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Цель: \(profile.goal.displayName)")
            Text("Опыт медитации: \(profile.meditationExperience) лет")
            Text("Данные HealthKit: \(profile.healthSummary)")
        }
        .padding()
    }
}
