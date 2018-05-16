//
//  ViewController.swift
//  PizzaDelegate
//
//  Created by David Van Osdol on 5/16/18.
//  Copyright © 2018 David Van Osdol. All rights reserved.
//

import UIKit





class ViewController: UIViewController, PizzaMakerDelegate {

    @IBOutlet weak var abcde: UILabel!
    @IBOutlet weak var pizzaPic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToPizzaMaker" {
            
            let makerVC = segue.destination as! PizzaMakerViewController
            
            makerVC.delegate = self
        }
    }
    
    
    
    func pizzaIsReady(message: String) {
        
        abcde.text = message
    
        pizzaPic.image = UIImage(named: "np_pizza_1204551_000000")
    
    }

}

