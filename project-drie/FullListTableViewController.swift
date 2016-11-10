//
//  TableViewController.swift
//  project-drie
//
//  Created by Sjors Verhoef on 20-09-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import UIKit

class FullListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadJsonData()
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return autos.count
    }
    
    var autos = [Auto]()
    
    
    func loadJsonData()
    {
        let url = URL(string: "https://i335404.iris.fhict.nl/autos.json")
        let dataTask = URLSession.shared.dataTask(with: url!)
        {
            (data, response, error)
            in
            if error != nil {
                print(error)
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
                Auto(carName: item["autoType"] as! String
                    ,  userName: item["gebruikerNaam"] as! String
                    ,  ratingCount: item["shitBeoordeling"] as! String // Moet nog Int32 worden
                    //, ratingCount: (jsonDict["shitBeoordeling"] as! NSString).Int32value
                    ,  rating: item["kerenGezien"] as! String // Moet nog double worden
                    ,  imageName: item["afbeeldingnaamGroot"] as! String // haakje
                    ,  menuImageName: item["afbeeldingnaam"] as! String //toegevoegd
                    ,  discription: item["beschrijving"] as! String) //toegevoegd
            autos.append(auto)
        }
        self.tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FLCell", for: indexPath) as! FullListTableViewCell
        let currentRow = indexPath.row
        let currentAuto = self.autos[currentRow]
        let menuAfbeelding = currentAuto.afbeeldingNaamMenu
        cell.FLcarNameLabel?.text = currentAuto.autoNaam
        cell.FLuserNameLabel?.text = currentAuto.gebruikerNaam
        cell.FLratingLabel?.text = currentAuto.aantalBeoordeling //andersomdag
        cell.FLaantalRatingLabel?.text = currentAuto.beoordeling  //andersomdag
        cell.FLmenuAfbeeldingLabel?.image = UIImage(named: menuAfbeelding)
        return cell
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var selectedRow = self.tableView.indexPathForSelectedRow
        let selectedAuto = self.autos[selectedRow!.row]
        let controller = segue.destination as! DetailsViewController
        controller.selectedAuto = selectedAuto
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 80;//Choose your custom row height
    }
    
    
    
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


