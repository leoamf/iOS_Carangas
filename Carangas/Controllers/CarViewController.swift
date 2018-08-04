//
//  CarViewController.swift
//  Carangas
//
//  Created by Eric Brito on 21/10/17.
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class CarViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var lbBrand: UILabel!
    @IBOutlet weak var lbGasType: UILabel!
    @IBOutlet weak var lbPrice: UILabel!

    var car:Car? = nil
    
    // MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        lbBrand.text = car!.brand
        lbGasType.text = "\(car!.gas)"
        lbPrice.text = "\(car!.price)"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? AddEditViewController
        vc?.car = car
    }

}
