import SwiftUI

struct RootView: View {
    @EnvironmentObject var profileVM: ProfileViewModel
    @EnvironmentObject var homeVM: HomeViewModel
    @State private var selectedTab: Tab = .home
    
    enum Tab {
        case home, profile
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(viewModel: homeVM)
                .tabItem {
                    Label("Главная", systemImage: "house")
                }
                .tag(Tab.home)
            ProfileView(viewModel: profileVM)
                .tabItem {
                    Label("Профиль", systemImage: "person")
                }
                .tag(Tab.profile)
        }
    }
}
