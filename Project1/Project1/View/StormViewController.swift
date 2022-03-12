//
//  ViewController.swift
//  Project1
//
//  Created by Gabriela Sillis on 22/02/22.
//

import UIKit

class StormViewController: UIViewController {
    
    private var viewInstance: StormTableView?
    private var viewModel: StormViewModelProtocol?
    
    init(viewModel: StormViewModelProtocol = StormViewModel()) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        viewInstance = StormTableView()
        view = viewInstance
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewInstance?.tableView(delegate: self, dataSource: self)
        viewModel?.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Storm viewer"
    }
}

extension StormViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.images.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: StormTableViewCell = tableView.dequeueReusableCell(withIdentifier: StormTableViewCell.identifier, for: indexPath) as? StormTableViewCell else {
            return UITableViewCell()
        }
        cell.configureImage(with: viewModel?.images[indexPath.row] ?? "")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}

