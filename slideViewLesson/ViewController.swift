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
        
        slideView = UIView(frame: CGRect(x: self.view.frame.minX - self.view.frame.midX, y: self.view.frame.minY + 80, width: self.view.frame.size.width / 2, height: self.view.frame.size.height - 160))
    
        
        slideView.backgroundColor = UIColor.systemGray

        self.view.addSubview(slideView)
    }

    func slideViewShowHidden(){
        
        if slideView.frame.origin.x == self.view.frame.minX - self.view.frame.midX{
            
            UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {self.slideView.frame.origin.x = 0}, completion: nil)
            createButton(xPoint: self.slideView.frame.origin.x)
            
        }else if slideView.frame.origin.x == 0{
            
            UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {self.slideView.frame.origin.x = self.view.frame.minX - self.view.frame.midX}, completion: nil)

        }
        
    }
    
    func createButton(xPoint:CGFloat){
        
        let button = UIButton(frame: CGRect(x: xPoint, y: slideView.frame.minY - 70, width: slideView.frame.size.width - 5, height: slideView.frame.size.height / 12))
        
        button.backgroundColor = UIColor.white
        
        slideView.addSubview(button)
        
    }
   
    
    @IBAction func slide(_ sender: UIButton) {
        
        slideViewShowHidden()
        
    }
    
}

