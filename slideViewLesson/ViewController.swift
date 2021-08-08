//
//  ViewController.swift
//  slideViewLesson
//
//  Created by UrataHiroki on 2021/08/08.
//

import UIKit

class ViewController: UIViewController {

    var slideView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        createSlideView()
        
        
        
    }

    func createSlideView(){
        
        slideView = UIView(frame: CGRect(x: self.view.frame.minX - self.view.frame.midX, y: self.view.frame.minY + 80, width: self.view.frame.size.width / 2, height: self.view.frame.size.height - 80))
    
        
        slideView.backgroundColor = UIColor.systemGray

        self.view.addSubview(slideView)
    }

    
    
    
    @IBAction func slide(_ sender: UIButton) {
        
        
        
    }
    
}

