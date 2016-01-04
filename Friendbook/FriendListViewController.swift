//
//  FriendListViewController.swift
//  Friendbook
//
//  Created by Tai Nguyen Bui on 04/01/16.
//  Copyright © 2016 Tai Nguyen Bui. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let myFriends = ["Ritesh", "Alessandro", "George", "Xavi", "Tasha", "Cam", "Tai"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myFriends.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        if(indexPath.row % 2 == 0)
        {
            cell.backgroundColor = UIColor.darkGrayColor()
        }
        else
        {
            cell.backgroundColor = UIColor.grayColor()
        }
        
        cell.textLabel!.text = myFriends[indexPath.row]
        
        cell.textLabel?.textColor = UIColor.whiteColor()
        
        return cell
    }
}
