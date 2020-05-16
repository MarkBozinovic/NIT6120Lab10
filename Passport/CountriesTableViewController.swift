//
//  CountriesTableViewController.swift
//  Passport
//
//  Created by user172965 on 5/15/20.
//  Copyright © 2020 user172965. All rights reserved.
//

import UIKit

class CountriesTableViewController: UITableViewController
{
    var countries = ["Singapore", "Vietnam", "Hong Kong", "Former Yugoslav Republics", "Alot of Europe"]
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return 3
    }

    func tableView(tableView: UITableView, cellForRowAtindexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath as IndexPath) as UITableViewCell
        let country = countries[indexPath.row]
        cell.textLabel?.text = country
        
        return cell
    }
    /*tableView(tableView:UITableView,cellForRowAtIndexPath indexPath: NSIndexPath)-> UITableViewCell
    {
        
    }*/
    

}
