//
//  ViewController.swift
//  ShaadiAssignment
//
//  Created by Sanjay Mali on 11/09/20.
//  Copyright © 2020 theappmaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    var viewModelUser = UserViewModel()
    @IBOutlet weak var tableView:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Users"
        viewModelUser.vc = self
        viewModelUser.getAllUser()
        tableView.register(UINib(nibName: "UserTableViewCell", bundle: nil), forCellReuseIdentifier: "UserCell")
    }
}
extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as! UserTableViewCell
        let user  = viewModelUser.allUsers[indexPath.row]
        cell.user = user
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModelUser.allUsers.count
    }
}

extension ViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "DetailVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "DetailVC"){
            guard let selectedPath = tableView.indexPathForSelectedRow else { return }
            if let vc  = segue.destination as? DetailedViewController {
            vc.userdetails = viewModelUser.allUsers[selectedPath.row]
          }
        }
    }
 }
