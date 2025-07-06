import SwiftUI

struct RecommendationsView: View {
    let recommendations: [String]
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Рекомендации")
                .font(.headline)
            ForEach(recommendations, id: \ .self) { rec in
                Text("• " + rec)
            }
        }
    }
}
