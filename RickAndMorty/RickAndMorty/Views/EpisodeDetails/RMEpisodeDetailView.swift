//
//  RMEpisodeDetailView.swift
//  RickAndMorty
//
//  Created by Berkin KOCA on 13.12.2023.
//

import UIKit

final class RMEpisodeDetailView: UIView {

    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("unsupported")
    }
}
