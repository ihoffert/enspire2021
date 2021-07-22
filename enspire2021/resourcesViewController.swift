//
//  resourcesViewController.swift
//  enspire2021
//
//  Created by Ingrid Hoffert on 7/21/21.
//  Copyright © 2021 Ingrid Hoffert. All rights reserved.
//

import UIKit

class resourcesViewController: UIViewController {
    
    @IBOutlet weak var sunriseButtonTapped: UIButton!
    @IBOutlet weak var folarButtonTapped: UIButton!
    @IBOutlet weak var htbButtonTapped: UIButton!
    @IBOutlet weak var aceButtonTapped: UIButton!
    @IBOutlet weak var ealButtonTapped: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        sunriseButtonTapped.addTarget(self, action: #selector(openSunriseLink), for: .touchUpInside)
        
        folarButtonTapped.addTarget(self, action: #selector(openFolarLink), for: .touchUpInside)
        
        htbButtonTapped.addTarget(self, action: #selector(openHtbLink), for: .touchUpInside)
        
        aceButtonTapped.addTarget(self, action: #selector(openAceLink), for: .touchUpInside)
        
        ealButtonTapped.addTarget(self, action: #selector(openEalLink), for: .touchUpInside)
    }
    
    
    
    @objc func openSunriseLink(){
        if let sunriseUrl =  URL(string: "https://sunrisemovementla.org/"){
            UIApplication.shared.open(sunriseUrl, options: [:], completionHandler: nil)
        }
    }
    
    @objc func openFolarLink(){
        if let folarUrl =  URL(string: "https://folar.org/"){
            UIApplication.shared.open(folarUrl, options: [:], completionHandler: nil)
        }
    }
    
    @objc func openHtbLink(){
        if let htbUrl =  URL(string: "https://healthebay.org/"){
            UIApplication.shared.open(htbUrl, options: [:], completionHandler: nil)
        }
    }
    
    @objc func openAceLink(){
        if let aceUrl =  URL(string: "https://acespace.org/"){
            UIApplication.shared.open(aceUrl, options: [:], completionHandler: nil)
        }
    }
    
    @objc func openEalLink(){
        if let ealUrl =  URL(string: "https://linktr.ee/environmentalaction"){
            UIApplication.shared.open(ealUrl, options: [:], completionHandler: nil)
        }
    }
}
