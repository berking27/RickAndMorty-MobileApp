//
//  RMCharacterPhotoCollectionViewCell.swift
//  RickAndMorty
//
//  Created by Berkin KOCA on 11.12.2023.
//

import UIKit

class RMCharacterPhotoCollectionViewCell: UICollectionViewCell {
    
     static let cellIdentifier = "RMCharacterPhotoCollectionViewCell"
     
     // MARK: - Init
     
     override init(frame: CGRect) {
          super.init(frame: frame)
          
     }
     
     required init?(coder: NSCoder) {
          fatalError("Unsupported")
     }
     
     private func setUpConstraints() {
          
     }
     
     override func prepareForReuse() {
          super.prepareForReuse()
     }
     
     public func configure(with viewModel: RMCharacterPhotoCollectionViewCellViewModel) {
          
     }
     
}
