//
//  cellArchived.swift
//  task3
//
//  Created by Abhishek Goel on 13/07/22.
//

import UIKit
import SDWebImage
class CompanyDataXib: UITableViewCell {
    
    @IBOutlet var selectionIndicator: UIView!
    var manageLikesandViews = ManageLikesandViews()
    @IBOutlet var title: UILabel!
    @IBOutlet var titleImage: UIImageView!
    @IBOutlet var outletLogoImg: UIImageView!
    @IBOutlet var lastEdited: UILabel!
    @IBOutlet var ImageAtView1: UIImageView!
    @IBOutlet var ImageAtView2: UIImageView!
    @IBOutlet var descriptionOfTitle: UILabel!
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var likesAndViews: UIView!
    @IBOutlet var buttonArray: [UIButton]!
    @IBOutlet var arrView : [UIView]!
    @IBOutlet var countOfViews: UILabel!
    @IBOutlet var countOfLikes: UILabel!
    @IBOutlet var likesandViewsHeight: NSLayoutConstraint!
    
    var LikesAndViews = ManageLikesandViews()
    var AttachmentList : [AttachmentDetail] = []
    var partition = 0.0

    
    @IBAction func likeButtonTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        let likes = LikesAndViews.managelikes(isSelected : sender.isSelected)
        countOfLikes.text = "\(likes) likes"
    }
    
    @IBAction func btnTappedArchived(_ sender: UIButton) {
        
        partition = 1.0 / Double(AttachmentList.count + 1)

        UIView.animate(withDuration: 0.25) {
//          self.outletArchivedTap.forEach({$0.isSelected = (sender == $0)})
            self.selectionIndicator.transform = CGAffineTransform(translationX: self.scrollView.bounds.width * self.partition * CGFloat(sender.tag-(3-self.AttachmentList.count)), y: 0)
            self.scrollView.setContentOffset(CGPoint(x: self.scrollView.bounds.width*CGFloat(sender.tag-(3 - self.AttachmentList.count)), y: 0), animated: true)
            self.buttonArray.forEach({$0.tintColor = (sender == $0) ? Color.tabselected: Color.tabunselected})

        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.buttonArray.forEach({ btn in btn.tintColor = Color.tabunselected })
        buttonArray[2 - AttachmentList.count].tintColor = Color.tabselected

    }
    
    func configure(cmpanyDetails: CompaniesDetails, likeView: Bool){

        if likeView
        {
            lastEdited.text = " "
        }
        else{
            likesandViewsHeight.constant = 0
            lastEdited.text = "Last Edited at : \(fetchDate(a: cmpanyDetails.createdAt))"
        }
        
        title.text = cmpanyDetails.name
        titleImage.sd_setImage(with: URL(string: cmpanyDetails.imageUrl))
        descriptionOfTitle.text = cmpanyDetails.description
        LikesAndViews.likes = cmpanyDetails.totalLikes
        LikesAndViews.views = cmpanyDetails.totalViews
        countOfLikes.text = "\(LikesAndViews.likes) likes"
        countOfViews.text = "\(LikesAndViews.views) views"

        AttachmentList = cmpanyDetails.attachmentDetail ?? []
        photoAndButtonFetch(AttachmentList)
        
    }
    
    func fetchDate(a :String) -> String{
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "yyy-MM-dd'T'HH:mm:ss.SSSSSSZ"
        let dateStr = dateformatter.date(from: a)
        dateformatter.dateFormat = "MM dd, yyyy"
        let dateToStr = dateformatter.string(from: dateStr!)
        return dateToStr
    }
    
    func photoAndButtonFetch(_: [AttachmentDetail]){
        for i in 0..<(buttonArray.count){
        buttonArray[i].isHidden = true
            arrView[i].isHidden = true
        }
        
        for i in 0...(AttachmentList.count){
        
            buttonArray[2 - i].isHidden = false
            arrView[2 - i].isHidden = false
            
            if(AttachmentList.count==1 && i==1){
            ImageAtView2.sd_setImage(with: URL(string: AttachmentList[i-1].attachmentUrl))
                
            }
            if(AttachmentList.count==2 && i==2){
                ImageAtView1.sd_setImage(with: URL(string: AttachmentList[2-i].thumbnailUrl))
                ImageAtView2.sd_setImage(with: URL(string: AttachmentList[3-i].attachmentUrl))
          
        }
        }
        
    }
}
        
//        if (AttachmentList.count == 1){
//
//            outletArchivedTap[1].isHidden = false
//            outletArchivedTap[2].isHidden = false
//
//            outletofItempic2.sd_setImage(with: URL(string: AttachmentList[0].attachmentUrl))
//            arrView[1].isHidden = false
//            arrView[2].isHidden = false
//
//        }
//        {
//            outletofItempic.sd_setImage(with: URL(string: AttachmentList[0].thumbnailUrl))
//            outletofItempic2.sd_setImage(with: URL(string: AttachmentList[1].attachmentUrl))
//            outletArchivedTap[0].isHidden = false
//            outletArchivedTap[1].isHidden = false
//            outletArchivedTap[2].isHidden = false
//            
//            arrView[0].isHidden = false
//            arrView[1].isHidden = false
//            arrView[2].isHidden = false
//        }
