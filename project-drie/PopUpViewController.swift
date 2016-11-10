//
//  PopUpViewController.swift
//  project-drie
//
//  Created by Sjors Verhoef on 07-11-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import UIKit
import CoreMotion
import AVFoundation

class PopUpViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer() //SOUND
    let manager = CMMotionManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        
        self.showAnimate()
        
        //Check for sensors avaliability
        if manager.isDeviceMotionAvailable {
            
            manager.deviceMotionUpdateInterval = 0.1 //0.00001
            
            manager.startDeviceMotionUpdates(to: OperationQueue.main, withHandler: { (data: CMDeviceMotion?, error: Error?) in
                
                print("Acceleration x \(data!.userAcceleration.x)")
                //print("Rotation x \(data!.rotationRate.x)")
                //print("Gravity z \(data!.gravity.z)")
                
                if (data?.userAcceleration.x as Double!)  < -0.1 {
                    self.graphtest.text = "Links"
                    } else if (data?.userAcceleration.x as Double!) > 0.1 {
                    self.graphtest.text = "Rechts"
                }
            })
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closePopUp(_ sender: Any) {
        //self.view.removeFromSuperview() <deze als je hem zonder animatie wilt gebruiken
        self.removeAnimate()
    }
    
    func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
    func removeAnimate()
    {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.view.removeFromSuperview()
            }
        });
    
    }
    
    func geluid(bestand: String) -> Bool {
        //sound
        // Set the sound file name & extension
        let alertSound = URL(fileURLWithPath: Bundle.main.path(forResource: bestand, ofType: "mp3")!)
        
        do {
            // Preperation
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        } catch _ {
        }
        do {
            try AVAudioSession.sharedInstance().setActive(true)
        } catch _ {
        }
        
        // Play the sound
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: alertSound)
        } catch _{
        }
        
        audioPlayer.prepareToPlay()
        return audioPlayer.play()
        //sound
    }
    
    
    @IBAction func oneShit(_ sender: Any) {
        _=geluid(bestand: "Fart1")
        self.removeAnimate()
    }
    @IBAction func twoShit(_ sender: Any) {
        _=geluid(bestand: "Fart2")
        self.removeAnimate()
    }
    @IBAction func threeShit(_ sender: Any) {
        _=geluid(bestand: "Fart3")
        self.removeAnimate()
    }
    @IBAction func fourShit(_ sender: Any) {
        _=geluid(bestand: "Fart4")
        self.removeAnimate()
    }
    @IBAction func fiveShit(_ sender: Any) {
        _=geluid(bestand: "Fart5")
        self.removeAnimate()
    }
    
    
    @IBOutlet weak var graphtest: UILabel! // voor de rotatie
    

 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

    */
    }


