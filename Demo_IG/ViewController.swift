//
//  ViewController.swift
//  Demo_IG
//
//  Created by Anh Vu on 3/19/21.
//  Copyright © 2021 Anh Vu. All rights reserved.
//

import UIKit
import IGListKit
import Alamofire
import AlamofireObjectMapper

extension NSObject: ListDiffable {
    
    public func diffIdentifier() -> NSObjectProtocol {
        return self
    }
    
    public func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return isEqual(object)
    }
}

class testmodel : NSObject {
    var listNews : [DataModel] = []
    var listTimeLine: [DataModel] = []
}

class ViewController: UIViewController, ListAdapterDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
//    let request: DataRequest? = nil
    var listHomeNews: HomeNews? = nil
    var listTimeLine: TimeLine? = nil
    
    var sectionArray: [ListDiffable] = []
    let inset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    let customInsets = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
   lazy var adapter: ListAdapter = {
       return ListAdapter(updater: ListAdapterUpdater(), viewController: self, workingRangeSize: 1)
   }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adapter.collectionView = collectionView
        adapter.dataSource = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        requestData { (data) in
            if let homeNew = data?.homeNews {
                self.listHomeNews = homeNew
                self.sectionArray.append(homeNew)
            }
            if let timeLine = data?.timeLine {
                self.listTimeLine = timeLine
                self.sectionArray.append(timeLine)
            }
            
            self.adapter.performUpdates(animated: true)
        }
    }
    
    func requestData(completed: @escaping(HomeModel?) -> ()) {
        let url = "https://p2.cnnd.vn/kenh14-api/app/home"
        let param = ["secret_key": "FcSLmHfbgnLVWUVw%$#@A9DkKnqAJsHv"]
        let request = Alamofire.request(url, method: .post, parameters: param, encoding: URLEncoding.default)
        request.responseObject { (response: DataResponse<HomeModel>) in
            switch response.result {
            case .success:
                DispatchQueue.main.async {
                    completed(response.result.value)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return self.sectionArray
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        if object is HomeNews {
            let section = HomeSectionController()
            section.inset = inset
            return section
        } else {
            let section = TimeLineSectionController()
            section.inset = customInsets
            return section
        }
        
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }

}

