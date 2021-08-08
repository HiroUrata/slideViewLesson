//
//  ViewController.swift
//  slideViewLesson
//
//  Created by UrataHiroki on 2021/08/08.
//

import UIKit

class ViewController: UIViewController {
    
    
    var leftSlideView = UIView()
    var rightSlideView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        createLeftSlideView()
        
        
    }

    func createLeftSlideView(){
        
        leftSlideView = UIView(frame: CGRect(x: self.view.frame.minX - self.view.frame.midX, y: self.view.frame.minY + 80, width: self.view.frame.size.width / 2, height: self.view.frame.size.height - 160))
    
        leftSlideView.backgroundColor = UIColor.systemGreen
        leftSlideView.layer.cornerRadius = 20.0

        self.view.addSubview(leftSlideView)
    }
    
    
    func createRightSlideView(){
        
        rightSlideView = UIView(frame: CGRect(x: self.view.frame.maxX, y: self.view.frame.minY + 80, width: self.view.frame.size.width / 2, height: self.view.frame.size.height - 160))
        
        rightSlideView.backgroundColor = UIColor.systemIndigo
        rightSlideView.layer.cornerRadius = 20.0
        
        self.view.addSubview(rightSlideView)
        
    }
    

    func slideViewShowHidden(){
        
        if leftSlideView.frame.origin.x == self.view.frame.minX - self.view.frame.midX{
            
            UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {self.leftSlideView.frame.origin.x = 0}, completion: nil)
            createButton(xPoint: self.leftSlideView.frame.origin.x)
            
        }else if leftSlideView.frame.origin.x == 0{
            
            UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {self.leftSlideView.frame.origin.x = self.view.frame.minX - self.view.frame.midX}, completion: nil)

        }
        
    }
    
    func createButton(xPoint:CGFloat){
        
        let button = UIButton(frame: CGRect(x: xPoint + 5, y: leftSlideView.frame.minY - 70, width: leftSlideView.frame.size.width - 10, height: leftSlideView.frame.size.height / 12))
        
        button.setTitle("Button", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = UIColor.white
        button.layer.cornerRadius = 20.0
        
        leftSlideView.addSubview(button)
        
    }
   
    
    @IBAction func slide(_ sender: UIButton) {
        
        
        slideViewShowHidden()
        
    }
    
}

