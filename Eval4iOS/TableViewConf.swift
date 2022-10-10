//
//  TableViewConf.swift
//  Eval4iOS
//
//  Created by Carmelo Arancio on 10/10/2022.
//

import Foundation
import UIKit
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.expensesCellIdentifier, for: indexPath) as? ExpensesTableViewCell else {
            fatalError("No Cell with identifier \(Constants.expensesCellIdentifier) found in xib")
        }
        
        let expense = expenses[indexPath.row]
        cell.nameExp.text = expense.name
        cell.valueExp.text = expense.value.description
        
        return cell
    }
    
    
}
