//
//  ViewController.swift
//  Core Data Demo
//
//  Created by David Sanchez on 28/9/24.
//

import UIKit
enum Section{
    case main
}

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    typealias DataSource = UITableViewDiffableDataSource<Section, NoteModel>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, NoteModel>
    
    private var notes = [NoteModel]()
    let controller = MainController()
    
    private lazy var dataSource: DataSource = {
        let dataSource = DataSource(tableView: tableView) { tableView, indexPath, itemIdentifier in
            let cell = tableView.dequeueReusableCell(withIdentifier: "NoteTableViewCell", for: indexPath) as! NoteTableViewCell
            
            cell.noteLabel.text = itemIdentifier.note
            cell.dateLabel.text = itemIdentifier.updatedAt?.formatted(date: .long, time: .shortened)
            return cell
        }
        return dataSource
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My Notes"
        buttonConfiguration()
        
    }
    
    
    private func cellRegistration(){
        tableView.register(UINib(nibName: "NoteTableViewCell", bundle: nil), forCellReuseIdentifier: "NoteTableViewCell")
    }

    func buttonConfiguration(){
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(addNote))
    }
    
    func applySnapshot(){
        var snapshot = Snapshot()
        
        snapshot.appendSections([.main])
        snapshot.appendItems(notes)
        
        dataSource.apply(snapshot, animatingDifferences: true)
    }
    
    @objc func addNote(){
        controller.saveNote(note: "Texting Note 2")
        getData()
    }
    
    func getData(){
        notes = controller.getNotes()
        applySnapshot()
    }
}

