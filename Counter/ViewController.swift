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
    @IBOutlet weak var historyTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    private func createDateTimeString() -> String {
        let currentDateTime = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm"
        let currentDateTimeString = formatter.string(from: currentDateTime)
        return currentDateTimeString
    }

    @IBAction func plusButtonDidTap(_ sender: Any) {
        counter += 1
        counterLabelView.text = String(counter)
        historyTextView.text += "\n[\(createDateTimeString())]: значение изменено на +1"
    }
    @IBAction func minusButtonDidTap(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            counterLabelView.text = String(counter)
            historyTextView.text += "\n[\(createDateTimeString())]: значение изменено на -1"
        }
        else {
            historyTextView.text += "\n[\(createDateTimeString())]: попытка уменьшить значение счётчика ниже 0"
        }
    }
    @IBAction func resetButtonDidTap(_ sender: Any) {
        counter = 0
        counterLabelView.text = String(counter)
        historyTextView.text += "\n[\(createDateTimeString())]: значение сброшено"
    }
    
}

