//
//  ExpensesTableViewCell.swift
//  Eval4iOS
//
//  Created by Carmelo Arancio on 10/10/2022.
//

import UIKit

class ExpensesTableViewCell: UITableViewCell {

    @IBOutlet var nameExp: UILabel!
    @IBOutlet var valueExp: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
