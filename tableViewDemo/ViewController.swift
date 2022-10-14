//
//  ViewController.swift
//  tableViewDemo
//
//  Created by Jebin Ignatious on 14/10/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let names = ["orange","banana","mint"]
    let images = [UIImage(named: "Orange"),
                  UIImage(named:"Banana"),
                  UIImage(named:"Mint")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
     }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableDemo.dequeueReusableCell(withIdentifier: "lastCell", for: indexPath) as! TableViewCelldesign
        
        cell.labelForText.text = names[indexPath.row]
        cell.img.image=images[indexPath.row]
        return cell
    }
    

    @IBOutlet weak var tableDemo: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableDemo.delegate=self
        tableDemo.dataSource=self
        let nib = UINib(nibName: "TableViewCelldesign",bundle: nil)
        
        tableDemo.register(nib , forCellReuseIdentifier: "lastCell")
    }


}

