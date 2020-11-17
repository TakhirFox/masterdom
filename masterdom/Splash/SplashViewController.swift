//
//  SplashViewController.swift
//  masterdom
//
//  Created by Zakirov Tahir on 14.11.2020.
//

import UIKit

final class SplashViewController: UIViewController {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var textImageView: UIImageView!
    
    var logoIsHidden: Bool = false
    var textImage: UIImage?
    
    static let logoImageBig: UIImage = UIImage(named: "MD_logo_png_2")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textImageView.image = textImage
        logoImageView.isHidden = logoIsHidden
    }
    
}
