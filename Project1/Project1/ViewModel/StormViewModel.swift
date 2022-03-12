//
//  StormViewModel.swift
//  Project1
//
//  Created by Gabriela Sillis on 03/03/22.
//

import Foundation

final class StormViewModel {
    private var picture = [String]()
    
    var images: [String] {
        return picture
    }
    
    private func getImages() {
        let fm = FileManager.default
        guard let path = Bundle.main.resourcePath else { return }
        
        do {
            let items = try fm.contentsOfDirectory(atPath: path)
            appendImage(items: items)
        } catch let error {
            print(error)
        }
    }
    
    private func appendImage(items: [String]) {
        for item in items  {
            if item.hasPrefix("nssl") {
                picture.append(item)
            }
        }
    }
    
    func viewDidLoad() {
        getImages()
    }
}

extension StormViewModel: StormViewModelProtocol {}
