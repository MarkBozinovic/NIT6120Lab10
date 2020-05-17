//
//  CountriesTableViewController.swift
//  Passport1
//
//  Created by user172965 on 5/16/20.
//  Copyright © 2020 user172965. All rights reserved.
//

import UIKit

class CountriesTableViewController: UITableViewController
{
    var countries = ["Singapore","Vietnam","Hong Kong"]
    // MARK: - Table view data source
    

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)-> UITableViewCell
    // https://stackoverflow.com/questions/24471954/how-to-use-dequeuereusablecellwithidentifier-in-swift/24493429
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath as IndexPath) as UITableViewCell
        
        let country = countries[indexPath.row]
        
        cell.textLabel?.text=country
    
        tableView.dataSource = self
        tableView.delegate = self
        
        return cell
        
    }
    
    
}
