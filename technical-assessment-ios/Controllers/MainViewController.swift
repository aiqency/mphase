//
//  ViewController.swift
//  mphaseyann
//
//  Created by yannhuissoud on 10/4/20.
//  Copyright © 2020 yannhuissoud. All rights reserved.
//

import UIKit
import Kingfisher

class MainViewController: UITableViewController {
    
    
    var articles = Articles()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 44
        tableView.rowHeight = UITableView.automaticDimension
        fetchData()
    }
    
    func fetchData() {
        getArticles(onError: { [weak self] in self?.refreshControl?.endRefreshing() })
        { [weak self] (articles) in
            self?.articles = articles!
            self?.tableView?.reloadData()
            self?.refreshControl?.endRefreshing()
        }
    }
    
    @IBAction func onRefresh(_ sender: UIRefreshControl) {
        fetchData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        articles.count == 0 ? tableView.showAsEmpty() : tableView.undoEmptyState()
        return articles.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tbCell", for: indexPath) as! ArticleTableCell;
        let index = indexPath.row
        let article = articles[index]
        
        //title
        cell.title.text = article.title
        
        //tags
        cell.tagList.updateArticleTags(tags: article.tags)
   
        //date
        cell.date.text = article.publishedAt.fromISO8601ToString()
        
        //img
        cell.img.layer.masksToBounds = true
        cell.img.layer.cornerRadius = 4
        cell.img.setImage(with: "\(ApiUrls.base)\(article.thumbnail.url)")
    
        return cell
    }
}
