//
//  DetailsViewController.swift
//  project-drie
//
//  Created by Sjors Verhoef on 20-09-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var selectedAuto: Auto?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lifeLabel: UILabel!
    @IBOutlet weak var activeYearsLabel: UILabel!
    @IBOutlet weak var countryOfBirthLabel: UILabel!
    @IBOutlet weak var commentsLabel: UITextView!
    @IBOutlet weak var imageLabel: UIImageView!
    
    @IBAction func showPopUp(_ sender: Any) {
        
        let popOverVC = UIStoryboard(name:"Main", bundle: nil).instantiateViewController(withIdentifier: "sbPopUpID") as! PopUpViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.nameLabel.text = self.selectedAuto?.autoNaam
        self.lifeLabel.text = self.selectedAuto?.gebruikerNaam
        self.activeYearsLabel.text = self.selectedAuto?.aantalBeoordeling
        self.countryOfBirthLabel.text = self.selectedAuto?.beoordeling
        self.commentsLabel.text = self.selectedAuto?.beschrijving
        let locatie = self.selectedAuto?.afbeeldingNaam
        //self.imageLabel.image = locatie
        imageLabel.image = UIImage(named: locatie!)



        
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
