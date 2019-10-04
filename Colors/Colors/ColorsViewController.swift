//
//  ColorsViewController.swift
//  Colors
//
//  Created by Ian Anderson on 10/4/19.
//  Copyright © 2019 Ian Anderson. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var colorsTableView: UITableView!
    
    var colors = ["red","orange","yellow","green","blue","purple","brown"]
    var colorsDictionary : [String:UIColor] = [
    "red" : UIColor.red,
    "orange" : UIColor.orange,
    "yellow" : UIColor.yellow,
    "green" : UIColor.green,
    "blue" : UIColor.blue,
    "purple" : UIColor.purple,
    "brown" : UIColor.brown
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorsTableView.dataSource = self
        colorsTableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row]
        
        cell.backgroundColor = colorsDictionary[colors[indexPath.row]]
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
