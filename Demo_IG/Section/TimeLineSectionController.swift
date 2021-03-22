//
//  TimeLineSectionController.swift
//  Demo_IG
//
//  Created by Anh Vu on 3/20/21.
//  Copyright © 2021 Anh Vu. All rights reserved.
//

import Foundation
import UIKit
import IGListKit

class TimeLineSectionController: ListSectionController {
    var listTimeLine: [DataModel] = []
    
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: collectionContext!.containerSize.width, height: 200)
    }
    
    override func numberOfItems() -> Int {
        listTimeLine.count
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell: TimeLineCollectionViewCell = collectionContext?.dequeueReusableCell(withNibName: "TimeLineCollectionViewCell", bundle: nil, for: self, at: index) as! TimeLineCollectionViewCell
        cell.bindData(obj: listTimeLine[index])
        return cell
    }
    
    override func didUpdate(to object: Any) {
        if let obj = object as? TimeLine {
            self.listTimeLine = obj.data ?? []
        }
    }
}
