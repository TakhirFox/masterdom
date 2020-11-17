//
//  SplashPresenter.swift
//  masterdom
//
//  Created by Zakirov Tahir on 14.11.2020.
//

import UIKit

protocol SplashPresenterDescription: class {
    func present()
    func dismiss(completion: @escaping () -> Void)
}

final class SplashPresenter: SplashPresenterDescription {
    
    private lazy var animator: SplashAnimatorDescription = SplashAnimator(foregroundSplashWindow: foregroundSplashWindow, backgroundSplashWindow: backgroundSplashWindow)
    
    
    
    private lazy var textImage: UIImage? = {
        let textsCount = 4
        
        let imageNumber = Int.random(in: 1...textsCount)
        let imageName = "\(imageNumber)"
        
        return UIImage(named: imageName)
    }()
    
    private lazy var foregroundSplashWindow: UIWindow = {
        let splashViewController = self.splashViewController(with: textImage, logoIsHidden: false)
        let splashWindow = self.splashWindow(windowLevel: .normal + 1, rootViewController: splashViewController)
        
        return splashWindow
    }()
    
    private lazy var backgroundSplashWindow: UIWindow = {
        let splashViewController = self.splashViewController(with: textImage, logoIsHidden: true)
        let splashWindow = self.splashWindow(windowLevel: .normal - 1, rootViewController: splashViewController)
        
        return splashWindow
    }()
    
    private func splashWindow(windowLevel: UIWindow.Level, rootViewController: SplashViewController?) -> UIWindow {
        let splashWindow = UIWindow(frame: UIScreen.main.bounds)
        
        splashWindow.windowLevel = windowLevel
        splashWindow.rootViewController = rootViewController
        
        return splashWindow
    }
    
    private func splashViewController(with textImage: UIImage?, logoIsHidden: Bool) -> SplashViewController? {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SplashViewController")
        let splashViewController = viewController as? SplashViewController
        
        splashViewController?.textImage = textImage
        splashViewController?.logoIsHidden = logoIsHidden
        
        return splashViewController
    }
    

    
    
    func present() {
        animator.animateAppearance()
    }
    
    func dismiss(completion: @escaping () -> Void) {
        animator.animateDisappearance(completion: completion)
    }
    
    
}
