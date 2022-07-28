//
//  ClassDrafted.swift
//  task3
//
//  Created by Abhishek Goel on 13/07/22.
//

import UIKit

class DraftedViewController: ParentClassViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetch.fetchData({result in
            self.companyList = result!.companiesList
            self.setup(tableView: self.tableView, showLikeBar: true)
        }, json: "DraftedDataJson")
    }

 
    
//    var companyDetails : [Company] = [
//        Company(image: "dots3", imagemoreDescription: "vector", companyName: "TemplateWarehouse", companyInfo: "With thousands of professional templates, images ... draft company intro text here", lastEdited: "Last edited Jan 21, 2022", showLikesViews: false, itemPhoto : "Frame 197", itemPhoto2: "Frame 197")]

}

