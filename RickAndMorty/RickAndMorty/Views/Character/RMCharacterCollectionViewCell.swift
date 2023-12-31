//
//  RMCharacterCollectionViewCell.swift
//  RickAndMorty
//
//  Created by Berkin KOCA on 7.12.2023.
//

import UIKit


/// Single Cell for Character
final class RMCharacterCollectionViewCell: UICollectionViewCell {
    
    static let cellIdentifier = "RMCharacterCollectionViewCell"
    
    private let imageView: UIImageView =  {

        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
       return imageView
    }()
    
    private let nameLabel: UILabel = {
        
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.textColor = .label
        
        label.translatesAutoresizingMaskIntoConstraints = false
       
        return label
    }()
    
    private let statusLabel: UILabel = {
        
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
       
        return label
    }()
    
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .secondarySystemBackground
        contentView.addSubviews(imageView, nameLabel, statusLabel)
        addConstraints()
        
        /// Detecting If app is in Dark/Light Mode
        if self.traitCollection.userInterfaceStyle == .dark {
            setUpLayerDark()
        } else {
            setUpLayer()
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            statusLabel.heightAnchor.constraint(equalToConstant: 32),
            statusLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 7),
            statusLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -7),
            statusLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -3),
            
            nameLabel.heightAnchor.constraint(equalToConstant: 32),
            nameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 7),
            nameLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -7),
            nameLabel.bottomAnchor.constraint(equalTo: statusLabel.topAnchor, constant: -5),
            
            
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            imageView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            imageView.bottomAnchor.constraint(equalTo: nameLabel.topAnchor, constant: -3)
            
        ])
        
    }
    private func setUpLayer() {
        contentView.layer.cornerRadius = 8
        contentView.layer.shadowColor = UIColor.systemGreen.cgColor
        contentView.layer.cornerRadius = 4
        contentView.layer.shadowOffset = CGSize(width: -6, height: 4)
        contentView.layer.shadowOpacity = 0.4
    }
    
    private func setUpLayerDark() {
        contentView.layer.cornerRadius = 8
        contentView.layer.shadowColor = UIColor.systemGreen.cgColor
        contentView.layer.cornerRadius = 4
        contentView.layer.shadowOffset = CGSize(width: -8, height: 5)
        contentView.layer.shadowOpacity = 0.4
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
        nameLabel.text = nil
        statusLabel.text = nil
    }
    
    
    public func configure(with viewModel: RMCharacterCollectionViewCellViewModel) {
        nameLabel.text = viewModel.characterName
        statusLabel.text = viewModel.characterStatusText
        viewModel.fetchImage { [weak self] result in
            switch result {
            case .success(let data):
                DispatchQueue.main.async {
                    let image = UIImage(data: data)
                    self?.imageView.image = image
                }
            case .failure(let error):
                print(error)
                break
            }
        }
        
    }
}

#Preview {
    RMTabViewController()
}

