//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Vladimir Dvornikov on 21.06.2022.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = [
        "Camorra", "Dodo", "Propaganda", "TGI FRIDAYS",
        "Black Swan pub&shop", "Bambule", "Meat point",
        "Lucky Noodles", "Лора Крафт", "Старик и море",
        "Рамен Изакая бар"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = restaurantNames[indexPath.row]
        content.image = UIImage(named: restaurantNames[indexPath.row])
        
        cell.contentConfiguration = content
        return cell
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
