//
//  MainControllor.swift
//  Core Data Demo
//
//  Created by David Sanchez on 28/9/24.
//

import Foundation

final class MainController {
    private let coreDataStack = CoreDataStack(modelName: "CoreDataDemo")
    
    func getNotes() -> [NoteModel] {
        let fetchRequest = NoteModel.fetchRequest()
        
        do{
            let notes = try coreDataStack.context.fetch(fetchRequest)
            return notes
        }catch{
            print("Error fetching notes: \(error.localizedDescription)")
            
        }
        return[]
        
    }
    func saveNote(note: String){
        let newNote = NoteModel(context: coreDataStack.context)
        newNote.id = UUID().uuidString
        newNote.note = note
        newNote.updatedAt = Date()
        coreDataStack.save()
    }
}
