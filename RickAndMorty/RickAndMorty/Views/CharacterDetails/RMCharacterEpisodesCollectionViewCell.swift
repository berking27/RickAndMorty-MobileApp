//
//  RMCharacterEpisodesCollectionViewCell.swift
//  RickAndMorty
//
//  Created by Berkin KOCA on 11.12.2023.
//

import UIKit

class RMCharacterEpisodesCollectionViewCell: UICollectionViewCell {
    
     static let cellIdentifier = "RMCharacterEpisodesCollectionViewCell"
 
    private let seasonLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        
        return label
    }()
    
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 20, weight: .regular)
        
        return label
    }()
    
    
    private let airDateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .light)
        
        return label
    }()
    
     // MARK: - Init
     
     override init(frame: CGRect) {
          super.init(frame: frame)
         contentView.backgroundColor = .systemPink
         contentView.layer.cornerRadius = 8
         contentView.layer.borderWidth = 3
         contentView.layer.borderColor = UIColor.systemBackground.cgColor
         
         contentView.addSubviews(seasonLabel, nameLabel, airDateLabel)
         
         setUpConstraints()
     }
     
     required init?(coder: NSCoder) {
          fatalError("Unsupported")
     }
     
     private func setUpConstraints() {
         NSLayoutConstraint.activate([
            seasonLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            seasonLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 8),
            seasonLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            seasonLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.3),
            
            nameLabel.topAnchor.constraint(equalTo: seasonLabel.bottomAnchor),
            nameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 8),
            nameLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            nameLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.3),
            
            airDateLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            airDateLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 8),
            airDateLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            airDateLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.3)
            
         ])
     }
     
     override func prepareForReuse() {
          super.prepareForReuse()
         seasonLabel.text = nil
         nameLabel.text = nil
         airDateLabel.text = nil
     }
     
     public func configure(with viewModel: RMCharacterEpisodesCollectionViewCellViewModel) {
         viewModel.registerForData { [weak self] data in
             //Register for Data is in the Main Queue
             self?.nameLabel.text = data.name
             self?.airDateLabel.text = "Episode "+data.air_date
             self?.seasonLabel.text = "Aired on "+data.episode
         }
         
         viewModel.fetchEpisode()
     }

}

#Preview {
    RMTabViewController()
}
