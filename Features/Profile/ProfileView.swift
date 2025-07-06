import SwiftUI

struct ProfileView: View {
    @ObservedObject var viewModel: ProfileViewModel
    
    var body: some View {
        VStack {
            Text("Профиль пользователя")
                .font(.largeTitle)
                .padding()
            if viewModel.isQuestionnaireCompleted {
                ProfileSummaryView(profile: viewModel.profile)
            } else {
                QuestionnaireView(viewModel: viewModel)
            }
        }
    }
}
