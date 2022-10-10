//
//  ViewController.swift
//  Eval4iOS
//
//  Created by Carmelo Arancio on 10/10/2022.
//

import UIKit


class ViewController: UIViewController {
    @IBAction func addExpenses() {
        let adding = storyboard?.instantiateViewController(identifier: "adding")
        
        adding?.modalPresentationStyle = .fullScreen
        present(adding!, animated: true, completion: nil)
    }
    @IBOutlet var titleLbl: UILabel!
    @IBOutlet var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.register(UINib(nibName: Constants.expensesCellNibName, bundle: nil),
                               forCellReuseIdentifier: Constants.expensesCellIdentifier)
        }
    }
    
    let context = AppDelegate.shared.persistentContainer.viewContext
    var expenses: [Expenses] = [Expenses]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadFromCoreData()
    }


}



enum Constants {
    static let expensesCellIdentifier = "ExpensesCell"
    static let expensesCellNibName = "ExpensesTableViewCell"
}
