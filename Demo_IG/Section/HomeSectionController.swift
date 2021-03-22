//
//  HomeSectionController.swift
//  Demo_IG
//
//  Created by Anh Vu on 3/19/21.
//  Copyright © 2021 Anh Vu. All rights reserved.
//

import Foundation
import UIKit
import IGListKit

class HomeSectionController: ListSectionController {
    
    private var listHomeNews: [DataModel] = []
    
    
    override init() {
        super.init()
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        if index == 0 {
            return CGSize(width: collectionContext!.containerSize.width, height: 350)
        }
        return CGSize(width: collectionContext!.containerSize.width, height: 180)
    }
    
    override func numberOfItems() -> Int {
        return listHomeNews.count
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        if index == 0 {
            let cell: TopHomeCollectionViewCell = collectionContext?.dequeueReusableCell(withNibName: "TopHomeCollectionViewCell", bundle: nil, for: self, at: index) as! TopHomeCollectionViewCell
            cell.bindData(obj: listHomeNews[index])
            return cell
            
        }
        let cell: HomeCollectionViewCell = collectionContext?.dequeueReusableCell(withNibName: "HomeCollectionViewCell", bundle: nil, for: self, at: index) as! HomeCollectionViewCell
        cell.bindData(obj: listHomeNews[index])
        return cell
        
    }
    
    override func didUpdate(to object: Any) {
        if let t = object as? HomeNews {
            listHomeNews = t.data ?? []
        }
    }
    
}
