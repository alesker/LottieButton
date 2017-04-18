// https://github.com/Quick/Quick

import Quick
import Nimble
import Lottie
@testable import LottieButton

class MockLottieButton: LottieButton {}

class LottieButtonSpec: QuickSpec {
    override func spec() {
        
        describe("lottie button") {
            let lottieButton = MockLottieButton()
            
            context("when setting animation name") {
                lottieButton.animationName = "TwitterHeart"
                
                it("should add animation view") {
                    expect(lottieButton.subviews.last as? LOTAnimationView).toNot(beNil())

                }
            }
        }
    }
}
