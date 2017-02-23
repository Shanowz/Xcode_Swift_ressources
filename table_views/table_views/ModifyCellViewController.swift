//
//  ModifyCellViewController.swift
//  table_views
//
//  Created by student5302 on 23/02/17.
//  Copyright © 2017 student5302. All rights reserved.
//

import UIKit

protocol ModifyCellTitleDelegate {
    func willClose(modifyController:ModifyCellViewController, newName:String)
}

class ModifyCellViewController: UIViewController {
    var cellTitle:String?
    @IBOutlet weak var cellTitleMofify: UITextField!
    var delegate:ModifyCellTitleDelegate? //delegate to whom we will send the changement
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let cellEditText = cellTitleMofify, let title = cellTitle{
            cellEditText.placeholder = title
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func modifyAction(_ sender: Any) {
        if let deleg = delegate, let newTitle = cellTitleMofify.text{
            deleg.willClose(modifyController: self, newName: newTitle)
        }
    }
}
