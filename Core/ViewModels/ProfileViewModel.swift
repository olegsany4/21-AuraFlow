import Foundation
import Combine

class ProfileViewModel: ObservableObject {
    @Published var profile: Profile = Profile(id: UUID(), goal: .reduceStress, meditationExperience: 0, healthSummary: "")
    @Published var isQuestionnaireCompleted: Bool = false
    
    func completeQuestionnaire(goal: Profile.Goal, experience: Int) {
        profile.goal = goal
        profile.meditationExperience = experience
        isQuestionnaireCompleted = true
        // TODO: Save to CoreData/CloudKit
    }
    
    func loadHealthData() {
        // TODO: Integrate with HealthKit
    }
}
