//
//  ViewController.swift
//  AKToastViewExample
//
//  Created by Andriy Kramar on 8/22/17.
//  Copyright © 2017 ONIX. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showToastAction(_ sender: Any) {
        showToast()
        perform(#selector(hideToast), with: nil, afterDelay:3)
    }
    
    func showToast() {
        AKToastView.show("Loading...")
    }
    
    func hideToast() {
        AKToastView.hide(completion: nil)
    }
    
    //MARK: - TableView
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "Cell #\(indexPath.row)"
        
        return cell
    }
}

