//
//  DetailedViewController.swift
//  ShaadiAssignment
//
//  Created by Sanjay Mali on 12/09/20.
//  Copyright © 2020 theappmaker. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelUserName: UILabel!
    @IBOutlet weak var labelPhone: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelCompany: UILabel!
    @IBOutlet weak var labelAddress: UILabel!
    var userdetails:UserModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        userDetails()
    }
    private func userDetails(){
        self.labelName.text = "Name : \(userdetails?.name ?? "")"
        self.labelUserName.text = "UserName :\(userdetails?.username ?? "")"
        self.labelAddress.text = "Street :\(userdetails?.address?.city ?? ""), Suite :\(userdetails?.address?.suite ?? ""), City : \(userdetails?.address?.city ?? ""), Zipcode :\(userdetails?.address?.zipcode ?? "") "
        self.labelCompany.text = "Name :\(userdetails?.company?.name ?? ""), CatchPhrase :\(userdetails?.company?.catchPhrase ?? ""), Bs : \(userdetails?.company?.bs ?? "")"
        self.labelPhone.text = " Phone :\(userdetails?.phone ?? "" ), Website :\(userdetails?.website ?? "")"
    }
    
    @IBAction func contact(_ sender: Any) {
        if let phoneCallURL = URL(string: "telprompt://\(userdetails?.phone ?? "")") {

            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                if #available(iOS 10.0, *) {
                    application.open(phoneCallURL, options: [:], completionHandler: nil)
                } else {
                    // Fallback on earlier versions
                     application.openURL(phoneCallURL as URL)

                }
            }
        }
    }
}
