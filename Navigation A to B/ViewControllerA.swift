//
//  ViewController.swift
//  Navigation A to B
//
//  Created by Trevor Beaton on 9/26/23.
//

import UIKit

class ViewControllerA: UIViewController {

    var dataToPass = "Hello World"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .green
        setButtonUI()
    }
    
    func setButtonUI() {
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 150, height: 80))
        button.setTitle("Navigate to B", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(navigateToViewControllerB), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    
    @objc func navigateToViewControllerB() {
            let viewControllerB = ViewControllerB()
            viewControllerB.receivedData = dataToPass
            self.navigationController?.pushViewController(viewControllerB, animated: true)
        }


}

