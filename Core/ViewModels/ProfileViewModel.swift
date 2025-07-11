import Foundation
import Combine

class ProfileViewModel: ObservableObject {
    @Published var profile: Profile = Profile(id: UUID(), goal: .reduceStress, meditationExperience: 0, healthSummary: "")
    @Published var isQuestionnaireCompleted: Bool = false
    
    func completeQuestionnaire(goal: Profile.Goal, experience: Int) {
        profile.goal = goal
        profile.meditationExperience = experience
        isQuestionnaireCompleted = true
        do {
            try ProfileStorageService().save(profile: profile)
        } catch {
            print("Ошибка сохранения профиля: \(error)")
        }
    }
    
    func loadHealthData() {
        HealthKitManager().fetchHealthSummary { result in
            switch result {
            case .success(let summary):
                DispatchQueue.main.async {
                    self.profile.healthSummary = summary
                }
            case .failure(let error):
                print("Ошибка загрузки данных HealthKit: \(error)")
            }
        }
    }
}
