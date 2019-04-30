//
//  ViewController.swift
//  Table
//
//  Created by dit000 on 2019. 4. 30..
//  Copyright © 2019년 DIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
   
    

    @IBOutlet weak var mytableview: UITableView!
    var animals = ["cat","dog","pig","bird","whale","cow"]
    var detailAnimals = ["고양이","강아지","돼지","새","고래","소"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mytableview.dataSource = self
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return animals.count

}

    //cell  만듬
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        //cell 재활용
        let cell = mytableview.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = animals[row]
        cell.detailTextLabel?.text=detailAnimals[row]
        
       cell.imageView?.image = UIImage(named: animals[row])
        
        
        return cell
        
        
        
}
}
