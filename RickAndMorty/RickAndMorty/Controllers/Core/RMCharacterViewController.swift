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
        

        RMService.shared.execute(.listCharacterRequest, 
                                 expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: "+String(model.info.count))
                print("Page result count: "+String(model.results.count))
                
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }

}
