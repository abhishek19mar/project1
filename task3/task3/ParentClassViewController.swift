//
//  ChildClassViewController.swift
//  task3
//
//  Created by Abhishek Goel on 20/07/22.
//

import Foundation
import UIKit

class ParentClassViewController : UIViewController, UITableViewDataSource{
    
  
    var companyList : [CompaniesDetails] = []

    var fetch = Fetch()
    var likeViewBar = false
    func setup(tableView: UITableView,showLikeBar: Bool){
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CompanyDataXib", bundle: nil), forCellReuseIdentifier: "CompanyDataXib")
        likeViewBar = showLikeBar


    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companyList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CompanyDataXib", for: indexPath) as! CompanyDataXib
        cell.configure(cmpanyDetails: companyList[indexPath.row], likeView: likeViewBar)
        return cell
    }
    
    
}
