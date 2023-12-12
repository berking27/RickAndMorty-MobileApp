//
//  RMCharacterInfoCollectionViewCell.swift
//  RickAndMorty
//
//  Created by Berkin KOCA on 11.12.2023.
//

import UIKit

class RMCharacterInfoCollectionViewCell: UICollectionViewCell {
     
     static let cellIdentifier = "RMCharacterInfoCollectionViewCell"
     
     // MARK: - Init
     
     override init(frame: CGRect) {
          super.init(frame: frame)
         contentView.backgroundColor = .tertiarySystemBackground
         contentView.layer.cornerRadius = 8
          
     }
     
     required init?(coder: NSCoder) {
          fatalError("Unsupported")
     }
     
     private func setUpConstraints() {
          
     }
     
     override func prepareForReuse() {
          super.prepareForReuse()
     }
     
     public func configure(with viewModel: RMCharacterInfoCollectionViewCellViewModel) {
          
     }

     
}
