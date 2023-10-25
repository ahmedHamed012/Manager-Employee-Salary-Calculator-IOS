//
//  ViewController.swift
//  Manager-Employee App
//
//  Created by Ahmed Hamed on 25/10/2023.
//

import UIKit

class Person {
    var salary: Int?
}
protocol salary{
    func getSalary(netSalary: Int)-> Int
}
class Employee: Person{}
class Manager: Person{}
extension Employee : salary {
    func getSalary(netSalary: Int) -> Int {
        return netSalary*2
    }
}
extension Manager : salary {
    func getSalary(netSalary: Int) -> Int {
        return netSalary*4
    }
}
class ViewController: UIViewController {
    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var rsltText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        rsltText.text = ""
    }
    @IBAction func employeeSalary(_ sender: Any) {
        var sal = txtField.text ?? ""
        var numSal = Int(sal) ?? 0
        var emp = Employee()
        rsltText.text = "The Employee Salary : \(String(emp.getSalary(netSalary: numSal)))"
    }
    @IBAction func managerSalary(_ sender: Any) {
        var sal = txtField.text ?? ""
        var numSal = Int(sal) ?? 0
        var mng = Manager()
        rsltText.text = "The Manager Salary  : \(String(mng.getSalary(netSalary: numSal)))"
    }
}

