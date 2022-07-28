//
//  File.swift
//  task3
//
//  Created by Abhishek Goel on 18/07/22.
//

import Foundation
import UIKit


struct Company{
    var image: String
    var imagemoreDescription : String
    var companyName: String
    var companyInfo: String
    var lastEdited: String
    var showLikesViews: Bool
    var itemPhoto : String
    var itemPhoto2 : String
}
struct Color{
    static let tabunselected = UIColor(named: "unselectedColor")
    static let tabselected = UIColor(named: "selectedColor")
    static let selectionIndicator = UIColor(named: "selectionIndicatorcolor")
    
}

struct ManageLikesandViews{
    var likes = 0
    var views = 0
    
    mutating func managelikes(isSelected : Bool)->Int{
        likes = (isSelected) ? (likes+1) : ( likes > 0 ? likes-1 : likes )
        return likes
    }
}

struct CompaniesList : Codable{
    var companiesList : [CompaniesDetails]
}
struct CompaniesDetails: Codable {
    var id : String
    var name : String
    var description : String
    var imageId: Int?
    var imageUrl: String
    var createdBy: Int
    var status: String
    var createdAt: String
    var attachmentDetail: [AttachmentDetail]?
    var isInvestor, isBookmarked, isLiked, isArchived: Bool
    var totalLikes, totalViews, targetAmount: Int
    var expiryDate: String
    var totalInvestment: Int
    var totalInvestors: Int?
    var remainingAmount: Int
    var updateProfileRequest: Int?
    var totalCount: Int

}

struct AttachmentDetail: Codable {
    var attachmentId: Int
    var type, attachmentName: String
    var attachmentUrl: String
    var thumbnailUrl: String

    
}


