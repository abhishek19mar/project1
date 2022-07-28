//
//  ViewController.swift
//  task3
//
//  Created by Abhishek Goel on 13/07/22.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet var arryButtonTap: [UIButton]!
    @IBOutlet weak var selectionIndicator: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
 

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.arryButtonTap.forEach({ btn in btn.tintColor = Color.tabunselected })
            arryButtonTap[1].tintColor = Color.tabselected
     
    }
    @IBAction func btnTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.25) {
//            self.arryButtonTap.forEach({$0.isSelected = (sender == $0)})
            self.selectionIndicator.transform = CGAffineTransform(translationX:self.scrollView.bounds.width*0.5*CGFloat(sender.tag-1), y: 0)
            self.scrollView.setContentOffset(CGPoint(x: self.scrollView.bounds.width*CGFloat(sender.tag-1), y: 0), animated: true)
            self.arryButtonTap.forEach({$0.tintColor = (sender == $0) ? Color.tabselected : Color.tabunselected})
            
        }
    }
    
    
    

}

