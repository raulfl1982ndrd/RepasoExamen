//
//  RecipeViewCell.swift
//  Repaso Examen
//
//  Created by Mañanas on 23/9/24.
//

import UIKit

class RecipeViewCell: UITableViewCell {
    @IBOutlet weak var recipeImageView: UIImageView!
    @IBOutlet weak var recipeNameLabel: UILabel!
    
    func render(_ recipe : Recipe){
        recipeImageView.loadFrom(url: recipe.imageUrl)
        recipeNameLabel.text = recipe.name

    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    
}
