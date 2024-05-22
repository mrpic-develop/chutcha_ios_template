//
//  MainViewController.swift
//  CCTemplate
//
//  Created by 박인수 on 5/16/24.
//

import UIKit

class MainViewController: UIViewController {
    
    var viewModel: MainViewModel?
    
    convenience init(viewModel: MainViewModel) {
        self.init()
        self.viewModel = viewModel
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
