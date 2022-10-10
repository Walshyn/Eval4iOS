//
//  CDconf.swift
//  Eval4iOS
//
//  Created by Carmelo Arancio on 10/10/2022.
//

import Foundation
import CoreData

extension ViewController {
    func loadFromCoreData() {
        let request = Expenses.fetchRequest()
        
        let orderByValue = NSSortDescriptor(key: "value", ascending: true)
        let orderByName =  NSSortDescriptor(key: "name", ascending: true)
        request.sortDescriptors = [orderByName, orderByValue]
        
        do {
            expenses = try context.fetch(request)
        }catch{
            print("Can't fetch from Core Data!")
        }
    }
    func commitData() {
        do{
            try context.save()
        }catch{
            print("Can't save to Core Data!")
            context.rollback()
        }
    }
}
