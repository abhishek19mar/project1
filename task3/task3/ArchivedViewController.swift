//
//  ClassArchived.swift
//  task3
//
//  Created by Abhishek Goel on 13/07/22.
//

import UIKit

class ArchivedViewController: ParentClassViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetch.fetchData({result in
            self.companyList = result!.companiesList
            self.setup(tableView: self.tableView, showLikeBar: true)
        }, json: "ArchivedDataJson")
       
        
        
        
    }


//    var companyDetails : [Company] = [
//        Company(image: "download 5", imagemoreDescription: "vector", companyName: "Canva", companyInfo: "With thousands of professional templates, images and quality content to choose from, get a headstart on bringing your best ideas and work to life.", lastEdited: " ", showLikesViews: true, itemPhoto : "Frame 197", itemPhoto2: "Frame 197"),
//        Company(image: "atlassian", imagemoreDescription: "vector", companyName: "Atlassian", companyInfo: "G’day, we’re Atlassian. We make tools like Jira and Trello that are used by thousands of teams worldwide. And we’re serious about creating amazing products, practices, and open work for all teams.", lastEdited: " ", showLikesViews: true, itemPhoto : "Frame 197", itemPhoto2: "Frame 197")
//    ]
//
   
}



