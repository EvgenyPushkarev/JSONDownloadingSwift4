//
//  ViewController.swift
//  JSONDownloadingSwift4
//
//  Created by alekSANdr on 21/09/2018.
//  Copyright © 2018 alekSANdr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    final let url = URL(string: "http://api.stackexchange.com/2.2/questions?order=desc&sort=activity&tagged=ios&site=stackoverflow")

    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJson()
    }

    func downloadJson() {
        guard let downloadURL = url else { return }
        URLSession.shared.dataTask(with: downloadURL) { data, urlResponse, error in
            print("downloaded")
        }.resume()
    }

}

