//
//  UserTableViewCell.swift
//  ShaadiAssignment
//
//  Created by Sanjay Mali on 12/09/20.
//  Copyright © 2020 theappmaker. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelPhone: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelWebsite: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    var user:UserModel?{
        didSet{
            userDisplay()
        }
    }
    private func userDisplay(){
        labelName.text = "Name : \(user?.name ?? "")"
        labelEmail.text = "Email : \(user?.email ?? "")"
        labelPhone.text = "Phone : \(user?.phone ?? "")"
        labelWebsite.text = "Website : \(user?.website ?? "")"
    }
}
