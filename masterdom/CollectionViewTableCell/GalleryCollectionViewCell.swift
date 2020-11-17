//
//  GalleryCollectionViewCell.swift
//  masterdom
//
//  Created by Zakirov Tahir on 16.11.2020.
//

import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageMenu: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageMenu.layer.cornerRadius = 10
    }

}
