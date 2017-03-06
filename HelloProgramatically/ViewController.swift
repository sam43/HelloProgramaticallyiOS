//
//  ViewController.swift
//  HelloProgramatically
//
//  Created by Sayem on 3/5/17.
//  Copyright © 2017 Sayem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lable:UILabel = UILabel()
    
    // will be called when the viewcontroller object is created we create the 
    // view hierachy programatically here

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor.red
        
        //training test
        
        //create lebel frame
        
        let lableRect = CGRect(x: 100, y: 100, width: 150, height: 80)
        

        //create lebel
        
        lable = UILabel(frame: lableRect)
        
        //set the lable propertise
        
        lable.text = "Hi , it's me!!!"
        
        //add the lable to view
        
        self.view.addSubview(lable)
        
        //create a button
        
        let button = UIButton(frame: CGRect(x: 150, y: 250, width: 100, height: 50))
        
        //set the button center as screen center
        
        button.center = self.view.center
        
        //add button to view
        
        self.view.addSubview(button)
        
        //set the button propertise
        
        button.setTitle("Click!", for: .normal)
        button.backgroundColor = UIColor.lightGray
        button.setTitleColor(UIColor.red, for: .highlighted)
        button.addTarget(self, action: #selector(ButtonTapped), for: .touchUpInside)
        
        
        
        
        
        
        
        
        
        
        
        
//        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
//        label.center = CGPoint(x: 190, y: 285)
//        label.textAlignment = .center
//        label.text = "Hello World it's me!"
//        label.textColor = UIColor.white
//        self.view.addSubview(label)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.backgroundColor = UIColor.brown
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.backgroundColor = UIColor.purple
    }
    
    func ButtonTapped()
    {
        lable.text = "You have clicked!!!"
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

