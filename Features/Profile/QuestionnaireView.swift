import SwiftUI

struct QuestionnaireView: View {
    @ObservedObject var viewModel: ProfileViewModel
    @State private var selectedGoal: Profile.Goal = .reduceStress
    @State private var meditationExperience: Int = 0
    
    var body: some View {
        Form {
            Section(header: Text("Ваша цель")) {
                Picker("Цель", selection: $selectedGoal) {
                    ForEach(Profile.Goal.allCases, id: \ .self) { goal in
                        Text(goal.displayName)
                    }
                }
            }
            Section(header: Text("Опыт медитации (лет)")) {
                Stepper(value: $meditationExperience, in: 0...20) {
                    Text("\(meditationExperience) лет")
                }
            }
            Button("Сохранить") {
                viewModel.completeQuestionnaire(goal: selectedGoal, experience: meditationExperience)
            }
        }
    }
}
