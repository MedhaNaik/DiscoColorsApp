//
//  ViewController.swift
//  Disco
//
//  Created by Medha Naik on 7/17/21.
//

import UIKit

extension UIColor {
    static var random: UIColor {
        return .init(hue: .random(in: 0...1), saturation: 1, brightness: 1, alpha: .random(in: 0.2...1))
    }
}

class ViewController: UIViewController {
    @IBOutlet var discoButton: UIButton!
    
    fileprivate func updateUI() {
        if discoButton.backgroundColor == .systemBackground {
            discoButton.backgroundColor = .random
            discoButton.setTitleColor(.systemBackground, for: .normal)
        } else {
            discoButton.backgroundColor = .systemBackground
            discoButton.setTitleColor(.random, for: .normal)
        }
        
//        var typeface = UIFont.familyNames.randomElement()
//
//        print(typeface ?? 0)
        
        
        discoButton.titleLabel!.font =  UIFont(name: "American Typewriter", size: 30)
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        updateUI()
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }


}

