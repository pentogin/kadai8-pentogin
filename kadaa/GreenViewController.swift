//
//  GreenViewController.swift
//  kadaa
//
//  Created by 小竹啓太 on 2021/07/03.
//

import UIKit

class GreenViewController: UIViewController {
    
    @IBOutlet  private weak var label: UILabel!
    @IBOutlet  private weak var slider: UISlider!
    private let delegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label.text = String(delegate.value)
        slider.value = delegate.value
    }
    @IBAction func sliderAction(_ sender: UISlider) {
        delegate.value = sender.value
        label.text = String(delegate.value)
    }
}
