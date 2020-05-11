//
//  RainbowTableViewController.swift
//  Rainbow
//
//  Created by Jason Hoover on 5/11/20.
//  Copyright © 2020 Jason Hoover. All rights reserved.
//

import UIKit

class RainbowTableViewController: UITableViewController {
    
    // MARK: - Data source for the table view
    var colors: [MyColor] = [MyColor(name: "Red", color: .red),
                             MyColor(name: "Orange", color: .orange),
                             MyColor(name: "Yellow", color: .yellow),
                             MyColor(name: "Green", color: .green),
                             MyColor(name: "Blue", color: .blue),
                             MyColor(name: "Cyan", color: .cyan),
                             MyColor(name: "Purple", color: .purple)]
    
    
    
    // MARK: - Table view data source
    
    //In each section, how many cells should there be?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return colors.count
    }
    
    //What should each cell look like?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        let color = colors[indexPath.row]
        
        cell.textLabel?.text = color.name
        
        return cell
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Check the segue identifier
        if segue.identifier == "ShowColorDetail" {
            
            // Get the new view controller ("Where" are you going?)
            let colorDetailVC = segue.destination as? ColorDetailViewController
            //Get the object you want to pass ("WHAT" are you giving to the "WHERE"?)
            if let indexPath = tableView.indexPathForSelectedRow {
                let cellColor = colors[indexPath.row]
                
                //Pass the object
                colorDetailVC?.cellColor = cellColor
            }
        }
    }
}
