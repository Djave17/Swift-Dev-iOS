//
//  ViewController.swift
//  Lista de contactos
//
//  Created by David Sanchez on 3/10/24.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as! AppDelegate
class ViewController: UIViewController {

    
    let context = appDelegate.persistentContainer.viewContext
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var contactTableView: UITableView!
    
    var usersList = [Users]()
    var search = false
    var searchField: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "Mis Contactos"
        contactTableView.dataSource = self
        contactTableView.delegate = self
        searchBar.delegate = self
        
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        if search {
            getSearch(user_name: searchField!)
        } else {
            allUsersGet()

        }
        contactTableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let indeks = sender as? Int
        
        if segue.identifier == "toDetail" {
            
            let targetVC = segue.destination as! DetailContactViewController
            targetVC.user = usersList[indeks!]
            
        }
        
        if segue.identifier == "toUpdate" {
            
            let targetVC = segue.destination as! UpdateContactViewController
            targetVC.user = usersList[indeks!]
            
        }
        
    }
    
    func allUsersGet(){
        do {
            usersList = try context.fetch(Users.fetchRequest())
        } catch  {
            print("Error!")
        }
    }
    


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let user = usersList[indexPath.row]
        
        let cell = contactTableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath) as! ContactTableViewCell
        cell.contactLabel.text = "\(user.user_name!) - \(user.user_phone!)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDetail", sender: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete", handler: {
            (contextualAction, view, boolValue) in
            print("Delete tapped: \(self.usersList[indexPath.row])")
            
            let user = self.usersList[indexPath.row]
            
            self.context.delete(user)
            appDelegate.saveContext()
            
            self.allUsersGet()
            self.contactTableView.reloadData()
            
            
            
        })
        
        let updateAction = UIContextualAction(style: .normal, title: "Update", handler: {
            (contextualAction, view, boolValue) in
            print("Update tapped: \(self.usersList[indexPath.row])")
            self.performSegue(withIdentifier: "toUpdate", sender: indexPath.row)
        })
        
        return UISwipeActionsConfiguration(actions: [deleteAction,updateAction])
        
    }
    
    func getSearch(user_name:String){
        
        let fetchRequest: NSFetchRequest<Users> = Users.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "user_name CONTAINS %@", user_name)
        
        do {
            usersList = try context.fetch(fetchRequest)
        } catch  {
            print("Error!")
        }
    }

    
}


extension ViewController:UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Search Result : \(searchText)")
        
        searchField = searchText
        
        
        if searchText == "" {
            search = false
            allUsersGet()
        } else {
            search = true
            getSearch(user_name: searchField!)

        }
        contactTableView.reloadData()
        
        
        
    }
    
}

