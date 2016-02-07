//
//  ViewController.swift
//  isItPrimeNo_IOS
//
//  Created by Venkat Kotu on 2/6/16.
//  Copyright © 2016 VenkatKotu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var resultText: UILabel!
    @IBOutlet weak var inputNo: UITextField!

    
    @IBAction func isPrime(sender: AnyObject) {
        
        let inp = Int(inputNo.text!)
        var isPrime = true
        if(inp != nil) {
            let inputVal = inp!
            var i = 2
            if inp <= 1{
                isPrime = false
            }
            
            if inputVal != 2 && inputVal != 1 {
                while i <= inputVal / 2  {
                    
                    if( inputVal % i == 0 && i != inputVal) {
                        isPrime = false
                    }
                    i++
                    
                }
                
            }
            if isPrime {
                resultText.text = "Yes, it is!"
            }else{
                resultText.text = "No, it is not"
            }

        }else {
            resultText.text = "Please enter a number"
        }
        
    }
//    @IBAction func isPrime(sender: AnyObject) {
//        
//        let inp:Int! = Int(inputNo.text!)
//        var isPrime = true
//        if(inp != nil) {
//
//            var i = 2
//            if inp == 1 {
//                isPrime = false
//            }
//            
//            if inp != 2 && inp != 1 {
//                while i <= inp / 2  {
//                    
//                    if( inp % i == 0 && i != inp) {
//                        isPrime = false
//                    }
//                    i++
//                    
//                }
//                
//            }
//            if isPrime {
//                resultText.text = "Yes, it is!"
//            }else{
//                resultText.text = "No, it is not"
//            }
//            
//        }else {
//            resultText.text = "Please enter a number"
//        }
//        
//    }
}

