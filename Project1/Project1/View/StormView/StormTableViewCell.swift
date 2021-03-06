//
//  CustomCellTableViewCell.swift
//  Project1
//
//  Created by Gabriela Sillis on 03/03/22.
//

import UIKit

protocol StormTableViewCellProtocol {
    func configureImage(with image: String)
}

final class StormTableViewCell: UITableViewCell {
    
    static var identifier: String {
        return String(describing: StormTableViewCell.self)
    }
    
    private lazy var customImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .blue
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureCell()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureCell() {
        addSubview(customImage)
        backgroundColor = .black
        selectionStyle = .none
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            customImage.topAnchor.constraint(equalTo: self.topAnchor, constant: -5),
            customImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            customImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            customImage.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }
}

extension StormTableViewCell: StormTableViewCellProtocol {
    func configureImage(with image: String) {
        customImage.image = UIImage(named: image)
    }
}
