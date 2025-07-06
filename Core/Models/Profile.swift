import Foundation

struct Profile: Identifiable, Codable {
    enum Goal: String, Codable, CaseIterable {
        case reduceStress = "Снижение стресса"
        case improveSleep = "Улучшение сна"
        case mindfulness = "Осознанность"
        
        var displayName: String {
            switch self {
            case .reduceStress: return "Снижение стресса"
            case .improveSleep: return "Улучшение сна"
            case .mindfulness: return "Осознанность"
            }
        }
    }
    
    let id: UUID
    var goal: Goal
    var meditationExperience: Int
    var healthSummary: String
}
