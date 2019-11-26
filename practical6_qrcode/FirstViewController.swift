//
//  FirstViewController.swift
//  practical6_qrcode
//
//  Created by MAD2_P01 on 26/11/19.
//  Copyright © 2019 Naomi. All rights reserved.
//

import UIKit
import QRCode

class FirstViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var txtValue: UITextField!
    @IBOutlet weak var imageViewQR: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtValue.resignFirstResponder()
        print(txtValue.text!)
        var qrcode = QRCode(txtValue.text!)
        qrcode?.color = CIColor(rgba: "880000")
        qrcode?.backgroundColor = CIColor(rgba : "ffffff")
        imageViewQR.image = qrcode?.image
        return true
    }

}

