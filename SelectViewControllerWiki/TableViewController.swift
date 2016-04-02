//
//  TableViewController.swift
//  SelectViewControllerWiki
//
//  Created by 矢野史洋 on 2016/04/02.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//


import UIKit

class TableViewController: UITableViewController {
    
    var namesArray : [String] = ["ViewController1", "ViewController2", "ViewController3", "viewController4", "ViewController5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "TableView"
        self.tableView.registerNib(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Num: \(indexPath.row)")
        print("Value: \(namesArray[indexPath.row])")
        let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let testViewControllerHandler = TestViewControllerHandler(type: TestTableIndexType(rawValue: indexPath.row)!)
        let viewController = testViewControllerHandler.getViewController()
        appDelegate.navigationController!.pushViewController(viewController, animated: true)
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return namesArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : TableViewCell = tableView.dequeueReusableCellWithIdentifier("TableViewCell") as! TableViewCell
        
        // Configure the cell...
        cell.nameLabel.text = namesArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 64.0
    }
}