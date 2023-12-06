//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Berkin KOCA on 5.12.2023.
//

import UIKit

/// Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let request = RMRequest(endpoint: .character)
        print(request.url ?? "")
        
        RMService.shared.execute(request, 
                                 expecting: RMCharacters.self) { result in
            
        }
    }

}
