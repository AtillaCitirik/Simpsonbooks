//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Atilla Çıtırık on 26.12.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var landMarkImages = [UIImage]()
    var landMarkNames = [String]()
    var mySimpsons = [Simpsons]()
    var chosenSimpson : Simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //Sİmpsons Object
        let homer = Simpsons(nameInit: "Hamer", jobInit: "Nuclear Safety", imageInit: UIImage(named:"Homer_Simpson")!)
        
        let marge = Simpsons(nameInit: "marge", jobInit: "HouseWife", imageInit: UIImage(named:"Marge_Simpson")!)
        
        let bart = Simpsons(nameInit: "bart", jobInit: "Student", imageInit: UIImage(named:"Bart_Simpson")!)
        
        let lisa = Simpsons(nameInit: "lisa", jobInit: "Student", imageInit: UIImage(named:"Lisa_Simpson")!)
        
        let maggie = Simpsons(nameInit: "Maggie", jobInit: "Baby", imageInit: UIImage(named:"Maggie_Simpson")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
        
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = mySimpsons[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedsimpson = chosenSimpson
        }
    }
    
}

