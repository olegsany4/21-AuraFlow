import SwiftUI

struct DailyGoalsStatusView: View {
    let goals: [DailyGoal]
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Дневные цели")
                .font(.headline)
            ForEach(goals) { goal in
                HStack {
                    Image(systemName: goal.isCompleted ? "checkmark.circle.fill" : "circle")
                        .foregroundColor(goal.isCompleted ? .green : .gray)
                    Text(goal.title)
                }
            }
        }
    }
}
