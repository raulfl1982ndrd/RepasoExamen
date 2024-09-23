//
//  DetailViewController.swift
//  Repaso Examen
//
//  Created by Mañanas on 23/9/24.
//

import UIKit
class DetailViewController: UIViewController {
    
    @IBOutlet weak var recipeImageView: UIImageView!
    
    var recipe: Recipe?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // Unwrap usando if
        if let recipe = recipe {
            self.navigationItem.title = recipe.name
            recipeImageView.loadFrom(url: recipe.imageUrl)
            
            self.navigationItem.title = recipe.name
        } else {
            print("Error: No encuentro ninguna receta")
        }
        
        // Unwrap usando guard
        /*guard let recipe = recipe else {
         print("Error: No encuentro ninguna receta")
         return
         }
         recipeImageView.loadFrom(url: recipe.imageUrl)
         
         self.navigationItem.title = recipe.name*/
    }
 /*
    // share text
    @IBAction func shareTextButton(_ sender: UIButton) {
        
        // text to share
        let text = recipe!.name
        
        // set up activity view controller
        let textToShare = [ text ]
        let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash
        
        // exclude some activity types from the list (optional)
        activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook ]
        
        // present the view controller
        self.present(activityViewController, animated: true, completion: nil)
        
    }
    
    // share image
    @IBAction func shareImageButton(_ sender: UIButton) {
        
        // image to share
        let image = recipeImageView.image
        
        // set up activity view controller
        let imageToShare = [ image! ]
        let activityViewController = UIActivityViewController(activityItems: imageToShare, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash
        
        // exclude some activity types from the list (optional)
        activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook ]
        
        // present the view controller
        self.present(activityViewController, animated: true, completion: nil)
    }
  
  */
}
