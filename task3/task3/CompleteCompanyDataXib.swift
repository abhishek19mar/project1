//
//  CompleteCompanyDataXib.swift
//  task3
//
//  Created by Abhishek Goel on 15/07/22.
//

import UIKit

class CompleteCompanyDataXib: UITableViewCell {
    @IBOutlet var lastEdited: UILabel!
    
    @IBOutlet var moreDesciption: UIImageView!
    
    @IBOutlet var selectionIndicator: UIView!
    @IBOutlet var Arraybtn: [UIButton]!
    @IBOutlet var titleLogo: UILabel!
    @IBOutlet var titleDescription: UILabel!
    @IBOutlet var logoImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func btnTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.25) {
//          self.outletArchivedTap.forEach({$0.isSelected = (sender == $0)})
//          self.selectionIndicator.transform = CGAffineTransform(translationX:self.scrollView.bounds.width*0.33*CGFloat(sender.tag-1), y: 0)
//            self.scrollView.setContentOffset(CGPoint(x: self.scrollView.bounds.width*CGFloat(sender.tag-1), y: 0), animated: true)
            
        }
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
