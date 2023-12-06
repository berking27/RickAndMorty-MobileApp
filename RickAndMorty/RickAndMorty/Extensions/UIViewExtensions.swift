//
//  UIViewExtensions.swift
//  RickAndMorty
//
//  Created by Berkin KOCA on 6.12.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
