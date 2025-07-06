import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        NavigationView {
            VStack(spacing: 24) {
                Text("Добро пожаловать, \(viewModel.userName)")
                    .font(.title)
                RecommendationsView(recommendations: viewModel.recommendations)
                DailyGoalsStatusView(goals: viewModel.dailyGoals)
                NavigationLink(destination: MeditationsListView()) {
                    Text("Быстрый доступ к медитациям")
                        .font(.headline)
                        .padding()
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(8)
                }
            }
            .padding()
            .navigationTitle("Главная")
        }
    }
}
