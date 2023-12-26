//
//  DetailsVC.swift
//  SimpsonBook
//
//  Created by Atilla Çıtırık on 26.12.2023.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblJob: UILabel!
    
    var selectedsimpson : Simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = selectedsimpson?.name
        lblJob.text = selectedsimpson?.job
        imgView.image = selectedsimpson?.image

    }
    

}
