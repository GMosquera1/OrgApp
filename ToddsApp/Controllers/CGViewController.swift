//
//  ViewController.swift
//  ToddsApp
//
//  Created by Genesis Mosquera on 11/28/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class CGViewController: UIViewController {
    

    @IBOutlet weak var CGTableView: UITableView!
    @IBOutlet weak var CGSearch: UISearchBar!

    var commsData = CommsData.getData() {
        didSet {
            CGTableView.reloadData()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CGTableView.dataSource = self
        CGSearch.delegate = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
       guard let indexPath = CGTableView.indexPathForSelectedRow,
        let CGDetailViewController = segue.destination as? CGDetailViewController else { return }
        let commsDataInfo = commsData[indexPath.row]
        CGDetailViewController.commsDataInfo = commsDataInfo
    }
}

extension CGViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return commsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CGCell", for: indexPath)
        let commsDataInfo = commsData[indexPath.row]
  cell.imageView?.image = commsDataInfo.image

        cell.textLabel?.text = (commsDataInfo.firstName + " " + commsDataInfo.lastName)
        cell.detailTextLabel?.text = commsDataInfo.location
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete
        {
            commsData.remove(at: indexPath.row)
            CGTableView.reloadData()
        }
    }
}

extension CGViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if searchBar.text == "" || searchBar.text == " " {
            commsData = CommsData.getData()
            return

        }
        // how do I include the last name

        commsData = commsData.filter(){
            
            for l in searchBar.text! {
                
                if $0.firstName.lowercased().contains(l) {
                    return true
                }
            }
            
            return false
        }
        //
        if commsData.isEmpty { }
        //add alert -
        
//            $0.firstName.lowercased() == searchBar.text?.lowercased() || $0.lastName.lowercased() == searchBar.text?.lowercased() || }
        searchBar.resignFirstResponder()
        searchBar.text = ""
    }
}
