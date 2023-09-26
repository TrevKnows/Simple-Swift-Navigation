//
//  ViewControllerB.swift
//  Navigation A to B
//
//  Created by Trevor Beaton on 9/26/23.
//

import UIKit

class ViewControllerB: UIViewController {

    var receivedData: String?
    
    var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        setUpLabel()
    }

    func setUpLabel() {
        dataLabel = UILabel(frame: CGRect(x: 20, y: 100, width: self.view.bounds.width - 40, height: 50))
        dataLabel.textAlignment = .center
        self.view.addSubview(dataLabel)
        
        if let data = receivedData {
            dataLabel.text = data
        }
    }
    
}
