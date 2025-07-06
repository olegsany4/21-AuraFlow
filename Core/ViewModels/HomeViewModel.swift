import Foundation
import Combine

class HomeViewModel: ObservableObject {
    @Published var userName: String = "Гость"
    @Published var recommendations: [String] = ["Попробуйте медитацию для сна", "Сделайте дыхательное упражнение"]
    @Published var dailyGoals: [DailyGoal] = [
        DailyGoal(title: "Медитация", isCompleted: false),
        DailyGoal(title: "Дыхание", isCompleted: false)
    ]
    
    init() {
        // TODO: Load user data from Profile/CoreData/CloudKit
    }
}

struct DailyGoal: Identifiable {
    let id = UUID()
    let title: String
    var isCompleted: Bool
}
