//
//  ViewController.swift
//  MultipleTableViewWithoutSegament
//
//  Created by trainee on 12/09/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tblVwTeam: UITableView!
    @IBOutlet weak var tblVwPlayer: UITableView!
    
    var teamName = ["India","Australia","Pakistan"]
    var  indPlayer = ["Sachin","Sehwag","Sourav","Rahul"]
    var  ausPlayer = ["Ponting","Symond","Gill Christ","Bret Lee"]
     var  pakPlayer = ["Wasim","Younis","Sohaib","Inzmam"]
    var nameReference = "India"
    override func viewDidLoad() {
        super.viewDidLoad()
       self.tblVwTeam.tableFooterView = UIView()
        self.tblVwPlayer.tableFooterView = UIView()
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (tableView == self.tblVwTeam) {
           
            return teamName.count
        } else if (nameReference == "India") {
            return indPlayer.count
        } else if (nameReference == "Australia") {
            return ausPlayer.count
        } else if (nameReference == "Pakistan") {
            return pakPlayer.count
        }
    
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (tableView == self.tblVwTeam) {
            let cell = tblVwTeam.dequeueReusableCell(withIdentifier: "MultipleTableViewCell1") as! MultipleTableViewCell
            cell.backgroundColor = UIColor.orange
            cell.lblTeam.text = teamName[indexPath.row]
            return cell
        } else if tableView == self.tblVwPlayer {
           let cell = tblVwPlayer.dequeueReusableCell(withIdentifier: "MultipleTableViewCell2") as! MultipleTableViewCell
            if (nameReference == "India") {
                cell.backgroundColor = UIColor.lightGray
                cell.lblPlayer.text = indPlayer[indexPath.row]
            } else if (nameReference == "Australia") {
                cell.lblPlayer.text = ausPlayer[indexPath.row]
            } else if (nameReference == "Pakistan") {
                cell.lblPlayer.text = pakPlayer[indexPath.row]
            }
            return cell
        }

        return UITableViewCell()
      
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        if (tableView == tblVwTeam)
        {
            nameReference = teamName[indexPath.row]

        }
        
       
        tblVwPlayer.reloadData()
    }
    
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
        
    }

