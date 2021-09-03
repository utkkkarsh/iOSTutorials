//
//  SecondViewController.swift
//  TableViewDemo
//
//  Created by Utkarsh Kumar Mishra on 03/09/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var backNavButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear of SecondViewController")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear of SecondViewController")
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear of SecondViewController")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear of SecondViewController")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func myBackbuttonClicked() {
        self.dismiss(animated: true) {
         print("Sec VC Dismissed")
        }
        
        
//        self.navigationController?.popToRootViewController(animated: true)
//        self.navigationController?.viewControllers
//        self.navigationController?.popToViewController(self.navigationController?.viewControllers[4], animated: true)
        
        
    }
    
    deinit {
        print(" deinit of ViewController")
    }

    
    

}
