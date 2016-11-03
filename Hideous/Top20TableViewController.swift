//
//  Top20TableViewController.swift
//  Hideous
//
//  Created by Sjors Verhoef on 11-10-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import UIKit

class Top20TableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadJsonData()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        //self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

   /* override func numberOfSections(in tableView: UITableView) -> Int {
        return andereautos.count;

    }*/

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //return autos.count
        return andereautos.count
    }
    
    
    var autos = [Auto]()
    
    var andereautos = ["Opel Astra","Nissan skyline","Honda Civic","subaru BRZ","De raceauto van Sjon","Knakentuning", "Ford GT 2013", "Tupperware Temper","Lada","Miata"]
    var anderegebruikers = ["-_-Tuning-_-", "PietJan", "SanderSalamander","VW Marco","JDM4life","Maarten","Hans Teeuwen","De directeur","pjotter","Maria"]
    var andereboordeling = ["4,5", "5", "2,5","2","2","1,5","1","0,5","0,5","0,5","0,5"]
    var gezien = ["212", "193", "111","100","94","88","80","55","40","34"]
    var afbeeldingnamen = [#imageLiteral(resourceName: "image-1"), #imageLiteral(resourceName: "image-2"), #imageLiteral(resourceName: "image-3"),#imageLiteral(resourceName: "brz"), #imageLiteral(resourceName: "racecar"), #imageLiteral(resourceName: "bodykit"),#imageLiteral(resourceName: "gt"), #imageLiteral(resourceName: "tupperware"), #imageLiteral(resourceName: "lada"), #imageLiteral(resourceName: "miata"),]
    
    func loadJsonData()
    {
        let url = URL(string: "https://i335404.iris.fhict.nl/AutoFile.json")
        let dataTask = URLSession.shared.dataTask(with: url!)
        {
            (data, response, error)
            in
            if error != nil {
                print(error!) // !
            }   else{
                do {
                    let jsonObject = try JSONSerialization.jsonObject(with: data!, options: .allowFragments)
                    self.parseJsonData(_jsonObject: jsonObject as! Array<AnyObject>)
                }
                catch let error as NSError {print("Error parsing JSON: \(error)")}
            }
            
        }
        dataTask.resume()
    }

    func parseJsonData(_jsonObject: Array<AnyObject>) {
        for item in _jsonObject {
            let auto =
                Auto(carName: item["autoNaam"] as! String
                    ,  userName: item["gebruikersNaam"] as! String
                    ,  rating: item["beoordeling"] as! Double
                    ,  ratingCount: item["aantalBeoordelingen"] as! Int32)
            autos.append(auto)
        }
        self.tableView.reloadData()
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Top20Cell
        //cell.setAutoData(auto: autos[indexPath.row])
        cell.autoNaamLabel.text = andereautos[indexPath.row]
        cell.gebruikerNaamLabel.text = anderegebruikers[indexPath.row]
        cell.beoordelingLabel.text = andereboordeling[indexPath.row]
        cell.aantalBeoordelingenLabel.text = gezien[indexPath.row]
        cell.afbeelding.image = afbeeldingnamen[indexPath.row]
        
        
        
        return cell
 
    }
    
    /*
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var selectedRow = self.tableView.indexPathForSelectedRow
        let selectedAuto = self.autos[selectedRow!.row]
        let controller = segue.destination as! Top20Cell
        controller.selectedAuto = selectedAuto
    }
 
    */
    
    
    
    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
