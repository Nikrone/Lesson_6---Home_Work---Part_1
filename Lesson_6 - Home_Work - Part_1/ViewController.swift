//
//  ViewController.swift
//  Lesson_6 - Home_Work - Part_1
//
//  Created by Evgeniy Nosko on 10.08.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        button.backgroundColor = UIColor(
            red: 255/255,
            green: 69/255,
            blue: 0/255,
            alpha: 1
        )
        
        button.layer.cornerRadius = 38
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super .viewDidAppear(animated)
        
        
        func buttonAction(button: UIButton!) {
            let buttonCoordinate: UIButton = button
            if buttonCoordinate.tag == 1 {
                dismiss(animated: true, completion: nil)
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        
        let coordinate = (touches.first?.location(in: view))!
        button.center = coordinate
    }
}

