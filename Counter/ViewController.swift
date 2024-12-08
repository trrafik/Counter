//
//  ViewController.swift
//  Counter
//
//  Created by trrafik on 07.12.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    private var counter: Int = 0
    @IBOutlet private weak var counterLabelView: UILabel!
    @IBOutlet private weak var historyTextView: UITextView!
    
    private func createDateTimeString() -> String {
        let currentDateTime = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm"
        let currentDateTimeString = formatter.string(from: currentDateTime)
        return currentDateTimeString
    }
    
    @IBAction private func plusButtonDidTap(_ sender: Any) {
        counter += 1
        counterLabelView.text = String(counter)
        historyTextView.text += "\n[\(createDateTimeString())]: значение изменено на +1"
    }
    
    @IBAction private func minusButtonDidTap(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            counterLabelView.text = String(counter)
            historyTextView.text += "\n[\(createDateTimeString())]: значение изменено на -1"
        }
        else {
            historyTextView.text += "\n[\(createDateTimeString())]: попытка уменьшить значение счётчика ниже 0"
        }
    }
    
    @IBAction private func resetButtonDidTap(_ sender: Any) {
        counter = 0
        counterLabelView.text = String(counter)
        historyTextView.text += "\n[\(createDateTimeString())]: значение сброшено"
    }
}
