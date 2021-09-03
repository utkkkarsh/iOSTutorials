//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Utkarsh Kumar Mishra on 02/09/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var myTableView: UITableView!
//    myLabel
    
    let myCellIDentifier = "MYCELL"
    let myCustomCellIDentifier = "MyCustumTableViewCell"
    
    var myTableItemArray: [Any] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        initializeData()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear of VC")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear of VC")
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear of VC")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear of VC")
    }
    
    
    func initializeData() {
        let myCountryList = [["title": "Ind1", "details": "+911"], ["title": "Ind", "details": "+91"], ["title": "Pak", "details": "+92"], ["title": "US", "details": "+1"], ["title": "UK", "details": "+2"]]
        let myModelObj1 = MyCellModel(myImageNameString: "iTunesArtwork", titleString: "My Title 1")
        let myModelObj2 = MyCellModel(myImageNameString: "iTunesArtwork", titleString: "My Title 2")
        let myModelObj3 = MyCellModel(myImageNameString: "iTunesArtwork", titleString: "My Title 3")
        let myItemList: [MyCellModel] = [myModelObj1, myModelObj2, myModelObj3]
        myTableItemArray = [myCountryList, myItemList]
    }

    ///*  UITableViewDataSource   - Protocol Mathds
    func numberOfSections(in tableView: UITableView) -> Int {
        return myTableItemArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (myTableItemArray[section] as AnyObject).count
    }
//        if section == 0{
//            return 10
//        } else if section == 1{
//            return 5
//        }
//        return 0
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let getItemArray = myTableItemArray[indexPath.section]
        if indexPath.section == 0, let myArray = getItemArray as? [[String:String]]{
            let dictItem = myArray[indexPath.row]
            if let cell = tableView.dequeueReusableCell(withIdentifier: myCellIDentifier) {
                cell.textLabel?.text = dictItem["title"]
                cell.detailTextLabel?.text = dictItem["details"]
                
                cell.accessoryType = .disclosureIndicator
                return cell
            }
        } else if let myArray = getItemArray as? [MyCellModel] {
            let cellModel = myArray[indexPath.row]
            if let cell = tableView.dequeueReusableCell(withIdentifier: myCustomCellIDentifier) as? MyCustumTableViewCell {
                cell.config(obj: cellModel)
                return cell
            }
        }
        return UITableViewCell()
    }
    
    ///*  UITableViewDelegate   - Protocol Mathds
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vcObj = mainStoryboard.instantiateViewController(identifier: "SecondViewController") as? SecondViewController else {
            return
        }

        if indexPath.section == 0 {
            self.present( vcObj, animated: true) {
                print("I am presented")
            }
        }else if indexPath.section == 1 {
            
            self.navigationController?.pushViewController(vcObj, animated: true)

        }
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "My Footer"
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "My Header"
    }
    
    

    
    
    deinit {
        print(" deinit of ViewController")
    }
    
    
    


}

