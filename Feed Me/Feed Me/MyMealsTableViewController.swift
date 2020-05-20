//
//  MyMealsTableViewController.swift
//  Feed Me
//
//  Created by student on 5/15/20.
//  Copyright © 2020 CSC509. All rights reserved.
//

import UIKit
import Foundation

class MyMealsTableViewController: UITableViewController {
    let defaults = UserDefaults.standard
    var restaurantList: [Restaurant] = [Restaurant(name: "Sal's South", location: "15 S Main St, Wallingford, VT 05773", details: "A chef-owned restaurant since 1977 that offers a truly memorable experience with Brooklyn-inspired Italian cuisine and a fun, casual dining atmosphere! Dine-in or take out. Sal's is a local gathering place and a favorite spot for hikers passsing through. Offering patio seating in warmer weather and a new private dining room with a fireplace for the winter months. The entire staff welcomes you!"), Restaurant(name: "The Victorian Inn", location: "5 N Main St, Wallingford, VT 05773", details: "This French second empire-style landmark today houses one of Vermont's most exceptional restaurants. Its unpretentious atmosphere reflects both the professional experience and warm, hospitable personalities of the Schönbächler family. Three dining rooms situate the first floor and are as quaint and charming as they come. Our newest addition: “The Inn Pub” is a great place for meeting friends, while enjoying lighter, pub-style food & local brews. There’s also a large banquet hall, as well as an eclectic Wine Cellar located downstairs. The restaurant is open year-round every Tuesday thru Saturday from 5:30 pm, except for the two weeks preceding Thanksgiving. On Sundays a gourmet brunch is served from 10 am. In an unique style, guests are encouraged to venture into the kitchen to personally supervise their meal and emerge with tailor-made, hot sumptuous dishes loaded with eggs, pancakes, bacon, potatoes and the like. Also an accompaniment of dozens of cold specialties, such as salads, lentils, pastas, curried rice and local farm fresh vegetables. And of course two tables covered with warm breads, country cheeses, fresh fruit, cakes & pastries. Bon Appétit!"), Restaurant(name: "Doreenn's Drive In", location: "723 N Main St Wallingford, Vermont 05773", details: "Drive in Restaurant and Ice Cream Bar!")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurantList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MyMealsTableViewCell
        let restaurant = restaurantList[indexPath.row]
        cell.nameLabel?.text = restaurant.name
        cell.detailsLabel?.text = restaurant.details
        cell.locationLabel?.text = restaurant.location
        return cell
    }

    // Section titles
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return  "My Restaurants"
    }
    
    // Cell selected
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // VC instantialiation
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let selectedVC = storyboard.instantiateViewController(identifier: "DetailVC") as! DetailViewController
       
       let slcRestaurant: [String] = ["\(restaurantList[indexPath.row].name)", "\(restaurantList[indexPath.row].location)","\(restaurantList[indexPath.row].details)"]
        defaults.set(slcRestaurant, forKey: "slcRestaurant" )
        navigationController?.pushViewController(selectedVC, animated: true)
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

class Restaurant {
    let name: String
    let location: String
    let details: String
    
    init(name: String, location: String, details: String){
        self.name = name
        self.location = location
        self.details = details
    }
}
