import XCTest
@testable import MindHarmony

class ProfileViewModelTests: XCTestCase {
    func testCompleteQuestionnaire() {
        let vm = ProfileViewModel()
        vm.completeQuestionnaire(goal: .reduceStress, experience: 2)
        XCTAssertTrue(vm.isQuestionnaireCompleted)
        XCTAssertEqual(vm.profile.meditationExperience, 2)
    }
}
