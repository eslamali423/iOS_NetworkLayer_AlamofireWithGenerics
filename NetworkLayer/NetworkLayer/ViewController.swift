//
//  ViewController.swift
//  NetworkLayer
//
//  Created by Eslam Ali  on 13/04/2022.
//

import UIKit

class ViewController: UIViewController {

    var viewModel = UsersViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getUsers()
    
        DispatchQueue.main.async {
            print(self.viewModel.users.count)

        }
        
        
        // Do any additional setup after loading the view.
    }
    
    
    func getUsers(){
        viewModel.getUsers { (isSucess) in
            if isSucess{
                //reload Data
            }
        }
        
    }


}

