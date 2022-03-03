//
//  ViewController.swift
//  Project1
//
//  Created by Gabriela Sillis on 22/02/22.
//

import UIKit

class ViewController: UIViewController {

    private var viewInstance: TableView?
    
    override func loadView() {
        super.loadView()
        viewInstance = TableView()
        view = viewInstance
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewInstance?.tableViewDelegate(delegate: self, dataSource: self)
        navigationController?.title = "teste"
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: CustomCellTableViewCell = tableView.dequeueReusableCell(withIdentifier: CustomCellTableViewCell.identifier, for: indexPath) as? CustomCellTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 100
       }
}

