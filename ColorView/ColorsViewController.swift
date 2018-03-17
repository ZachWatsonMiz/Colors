//
//  ColorsViewController.swift
//  ColorView
//
//  Created by Zach on 3/16/18.
//  Copyright © 2018 tech innovator. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var colors = [Colors(name: "red", uiColor: UIColor.red),
                  Colors(name: "orange", uiColor: UIColor.orange),
                  Colors(name: "yellow", uiColor: UIColor.yellow),
                  Colors(name: "green", uiColor: UIColor.green),
                  Colors(name: "blue", uiColor: UIColor.blue),
                  Colors(name: "purple", uiColor: UIColor.purple),
                  Colors(name: "brown", uiColor: UIColor.brown)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        let color = colors[indexPath.row]
        cell.textLabel?.text = color.name
        cell.backgroundColor = color.uiColor
        
        return cell
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
