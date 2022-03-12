//
//  StormDetailView.swift
//  Project1
//
//  Created by Gabriela Sillis on 12/03/22.
//

import UIKit

protocol StormDetailViewProtocol {
    func configure(with image: String)
}

final class DetailStormView: UIView {
    private var size: CGFloat = 200

    private lazy var detailImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureSubview()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configureSubview() {
        backgroundColor = .black
        addSubview(detailImage)
    }

    private func configureConstraints() {
        NSLayoutConstraint.activate([
            detailImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            detailImage.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            detailImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            detailImage.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor)
        ])
    }
}

extension DetailStormView: StormDetailViewProtocol {
    func configure(with image: String) {
        detailImage.image = UIImage(named: image)
    }
}
