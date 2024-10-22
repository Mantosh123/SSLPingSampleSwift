//
//  ViewController.swift
//  SSLExample
//
//  Created by Mantosh Kumar on 22/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: "https://www.google.co.uk") else { return }
        ServiceManager().callAPI(withURL: url, isCertificatePinning: true) { (message) in
            let alert = UIAlertController(title: "SSLPinning", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
}

