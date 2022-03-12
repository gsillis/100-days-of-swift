//
//  StormDetailViewController.swift
//  Project1
//
//  Created by Gabriela Sillis on 12/03/22.
//

import UIKit

class DetailStormViewController: UIViewController {
    private var viewInstance: DetailStormView?
    private var image: String

    init(image: String) {
        self.image = image
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        viewInstance = DetailStormView()
        view = viewInstance
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewInstance?.configure(with: image)
    }
}
