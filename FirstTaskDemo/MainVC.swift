//
//  ViewController.swift
//  FirstTaskDemo
//
//  Created by Ahmed on 7/12/17.
//  Copyright © 2017 Ahmed. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var dataArr = [Data]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tableView.register(UINib.init(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: IDs.NewsCell)
//        tableView.register(UINib.init(nibName: "AdsTableViewCell", bundle: nil), forCellReuseIdentifier: IDs.AdsCell)
        tableView.register(_nibFiles: NewsTableViewCell.self)
        tableView.register(_nibFiles: AdsTableViewCell.self)
        tableView.dataSource = self
        tableView.delegate = self
        loadData()
    }

    
    func loadData() {
        let data1 = Data(typeID: 0, title: "Political News", image: "1.jpg")
        let data2 = Data(typeID: 0, title: "Sports News", image: "2.jpg")
        let data3 = Data(typeID: 1, title: "Bumber Ads", image: "3.jpg")
        dataArr = [data1, data2, data3, data2, data2, data1, data3]
    }
}

extension MainVC: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if dataArr[indexPath.row].type == Types.News, let cell = tableView.dequeueReusableCell(withIdentifier: IDs.NewsCell, for: indexPath) as? NewsTableViewCell {
            cell.configureCell(data: dataArr[indexPath.row])
            return cell
        } else if dataArr[indexPath.row].type == Types.Ads, let cell = tableView.dequeueReusableCell(withIdentifier: IDs.AdsCell, for: indexPath) as? AdsTableViewCell {
            cell.configureCell(data: dataArr[indexPath.row])
            return cell
        }
        
    return UITableViewCell()
        
 
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if dataArr[indexPath.row].type == Types.Ads {
            return 200
        } else {
            return 100
        }
    }
}

