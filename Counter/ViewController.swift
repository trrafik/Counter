//
//  ViewController.swift
//  Counter
//
//  Created by trrafik on 07.12.2024.
//

import UIKit

class ViewController: UIViewController {
    private var counter: Int = 0
    @IBOutlet weak var counterLabelView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func countButtonDidTap(_ sender: Any) {
        counter += 1
        counterLabelView.text = String(counter)

    }
}

