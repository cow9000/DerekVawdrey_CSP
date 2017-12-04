//
//  InternetController.swift
//  DerekVawdrey_CSP
//
//  Created by Vawdrey, Derek on 10/26/17.
//  Copyright © 2017 Vawdrey, Derek. All rights reserved.
//

import UIKit

class InternetMasterViewController: UITableViewController {
    
    private (set) lazy var internetTopics : [String] =
    {
       return [
            "Definitions",
            "CSP",
            "CTEC",
            "Canyons",
            "Twitter",
            "Swift Guide"
        ]
    }()
    
    private lazy var addresses : [String] = []
    
    private var detailViewController : InternetDetailViewController?
    
    private func setup() -> Void{
        
        addresses = [
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com"
        ]
        
        if let splitView = splitViewController
        {
            let currentControllers = splitView.viewControllers
            detailViewController = currentControllers[0] as?
                InternetDetailViewController
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view.
        self.clearsSelectionOnViewWillAppear = false
    }
    
    // MARK: - Table view data source
    override public func numberOfSections(in tableView: UITableView) -> Int{
        // #warning Incomplete - return the number of sections
        return 1
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return internetTopics.count
    }
    
    //MARK: Handle the internal transfer
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier! == "showDetail"{
            if let indexPath = self.tableView.indexPathForSelectedRow{
                let urlString = addresses[indexPath.row]
                let pageText : String
                
                if indexPath.row == 0{
                    //TODO: Replace with your definitions - great time to use the """ operator
                    pageText = """
                    This
                    a
                    a
                    a
                    a
                    a
                    """
                    
                    
                }else{
                    pageText = internetTopics[indexPath.row]
                }
                
                let controller = segue.destination as!
                    InternetDetailViewController
                
                controller.detailAddress = urlString
                controller.detailText = pageText
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
                
            }
        }
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
