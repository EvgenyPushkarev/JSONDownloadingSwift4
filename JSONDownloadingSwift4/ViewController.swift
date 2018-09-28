//
//  ViewController.swift
//  JSONDownloadingSwift4
//
//  Created by alekSANdr on 21/09/2018.
//  Copyright © 2018 alekSANdr. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    final let url = URL(string: "http://api.stackexchange.com/2.2/questions?order=desc&sort=activity&tagged=ios&site=stackoverflow")
    private var questions = [Question]()
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJson()
    }

    func downloadJson() {
        guard let downloadURL = url else { return }
        URLSession.shared.dataTask(with: downloadURL) { data, urlResponse, error in
            guard let data = data, error == nil, urlResponse != nil else {
                print ("something is wrong")
                return
            }
            print("downloaded")
            do
            {
                let decoder = JSONDecoder()
                let downloadedQuestions = try decoder.decode(Questions.self, from: data)
                self.questions = downloadedQuestions.items
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch {
                print("something's wrong after downloading")
            }
            
        }.resume()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell") as? QuestionCell else { return UITableViewCell() }
        
        cell.titleLabel.text = questions[indexPath.row].title
        return cell
        
    }

}

