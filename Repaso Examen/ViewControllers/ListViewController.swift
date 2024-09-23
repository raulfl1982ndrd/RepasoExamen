//
//  ViewController.swift
//  Repaso Examen
//
//  Created by Mañanas on 23/9/24.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource {

    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
  
    // MARK: Properties
    var recipeList: [Recipe] = []
    
    // MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        // Buscar recetas
        searchRecipes("")
    }
    // MARK: TableView DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RecipeViewCell
        let recipe = recipeList[indexPath.row]
        
        cell.render(recipe)
        
        return cell
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showDetail") {
            let detailViewController = segue.destination as! DetailViewController

            let indexPath = tableView.indexPathForSelectedRow!

            let recipe = recipeList[indexPath.row]
            
           detailViewController.recipe = recipe

        }
    }
    

    

  //MARK: API call
    func searchRecipes(_ query: String){
        Task{
            guard let url = URL(string: "https://dummyjson.com/recipes/search?q=\(query)") else {
                print("URL not valid")
                recipeList = []
                return
            }
            
            let (data, response) = try await URLSession.shared.data(from: url)
            
            let result = try JSONDecoder().decode(Recipes.self, from: data)
            
            recipeList = result.recipes
         
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }

        }
    }
    
}
