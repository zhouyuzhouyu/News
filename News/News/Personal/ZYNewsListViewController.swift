//
//  ZYNewsListViewController.swift
//  News
//
//  Created by 周玉 on 15/8/13.
//  Copyright (c) 2015年 周玉. All rights reserved.
//

import UIKit
import SDWebImage

let kCellIdentifierNews = "NewsCell"

class ZYNewsListViewController: UIViewController
{
    @IBOutlet weak var tableView: UITableView!
    var theTable:TableData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        self.fetchData()
    }
    
    func fetchData() {
        
    }
    
    func generateTableData() {
        
    }

//    MARK: - tableView delegate
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = theTable?.objectAtIndex(section)?.count() {
            return count
        }
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier(kCellIdentifierNews, forIndexPath: indexPath) as! UITableViewCell
        var label:UILabel = cell.contentView.viewWithTag(1001) as! UILabel
        label.text = indexPath.description
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
