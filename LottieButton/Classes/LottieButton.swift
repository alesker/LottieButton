//
//  LottieButton.swift
//  Pods
//
//  Created by Ilya Alesker on 27/03/2017.
//
//

import Foundation
import SnapKit
import Lottie

open class LottieButton: UIButton {

    public private(set) var animationView: LOTAnimationView?

    public var animationName: String? {
        didSet {
            if let animationView = self.animationView {
                animationView.removeFromSuperview()
            }
            self.animationView = LOTAnimationView(name: animationName)

            if let animationView = self.animationView {
                self.addSubview(animationView)
                animationView.snp.makeConstraints { make in
                    make.edges.equalTo(self.imageView!)
                }
                animationView.isHidden = true
            }
        }
    }

    private func blankImage(for image: UIImage) -> UIImage? {
        UIGraphicsBeginImageContext(image.size)
        let blankImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return blankImage
    }


    public func playAnimation(withInitialStateImage initialStateImage: UIImage,
                              andFinalStateImage finalStateImage: UIImage) {
        let blankImage = self.blankImage(for: initialStateImage)
        self.setImage(blankImage, for: .normal)
        self.animationView?.isHidden = false

        self.animationView?.play(completion: { completed in
            self.setImage(finalStateImage, for: .normal)
            self.animationView?.isHidden = true
            self.animationView?.pause()
            self.animationView?.animationProgress = 0
        })
    }

    open func playAnimation() {
        guard let image = self.image(for: .normal) else { return }
        self.playAnimation(withInitialStateImage: image, andFinalStateImage: image)
    }
}
