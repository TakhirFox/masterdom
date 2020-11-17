//
//  CollectionViewTableCell.swift
//  masterdom
//
//  Created by Zakirov Tahir on 16.11.2020.
//

import UIKit

class CollectionViewTableCell: UITableViewCell, UICollectionViewDataSource {
    
    @IBOutlet weak var galleryCollectionView: UICollectionView!

    override func awakeFromNib() {
        super.awakeFromNib()
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.itemSize = CGSize(width: 200.0, height: 200.0)
        flowLayout.minimumInteritemSpacing = 1.0
        
        galleryCollectionView.collectionViewLayout = flowLayout
        galleryCollectionView.register(UINib(nibName: "GalleryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GalleryCollectionViewCell")
        galleryCollectionView.dataSource = self
         
    }
    
    //MARK:- UICollectionViewDataSourse
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GalleryCollectionViewCell", for: indexPath) as! GalleryCollectionViewCell
        
        cell.imageMenu.image = UIImage(named: "back")
        
        return cell
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
