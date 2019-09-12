//
//  ViewController.swift
//  Move
//
//  Created by Vaibhav Mehta on 13/09/19.
//  Copyright © 2019 oz10. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

   // var location = CGPoint(x: 0, y: 0)
    
    @IBOutlet weak var imgImage: UIImageView!
    @IBOutlet weak var lbl: UITextField!
    @IBOutlet weak var viewL: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in (touches as! Set<UITouch>){
            
            let loc = touch.location(in: self.view)
            if imgImage.frame.contains(loc){
                
                imgImage.center = loc
            }
            else if viewL.frame.contains(loc){
                
                viewL.center = loc
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in (touches as! Set<UITouch>){
            
            let loc = touch.location(in: self.view)
            if imgImage.frame.contains(loc){
                
                imgImage.center = loc
            }
            else if viewL.frame.contains(loc){
                
                viewL.center = loc
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
       // imgImage.center = self.view.center
    }
    
//     func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
//        let touch : UITouch! =  touches.first! as UITouch
//        location = touch.location(in: self.view)
//        imgImage.center = location
//    }
//
//     func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
//        let touch : UITouch! =  touches.first! as UITouch
//        location = touch.location(in: self.view)
//
//        imgImage.center = location
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        imgImage.center = CGPoint(x: 160, y: 330)
//    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
}
