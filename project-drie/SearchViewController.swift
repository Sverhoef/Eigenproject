//
//  SearchViewController.swift
//  project-drie
//
//  Created by Sjors Verhoef on 08-11-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBAction func searchLabel(_ sender: Any) {
        let resultscontroller = UITableViewController(style: .plain)
        let searchController = UISearchController(searchResultsController: resultscontroller)
        self.present(searchController, animated: true, completion: nil)
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
