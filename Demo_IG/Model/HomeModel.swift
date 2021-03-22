//
//  HomeModel.swift
//  Demo_IG
//
//  Created by Anh Vu on 3/19/21.
//  Copyright © 2021 Anh Vu. All rights reserved.
//

import Foundation
import ObjectMapper
import IGListKit

enum TypeData {
    case homeNew
    case timeLine
}

class HomeModel: Mappable {
    var homeNews: HomeNews?
    var timeLine: TimeLine?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        homeNews <- map["HomeNewsPosition"]
        timeLine <- map["TimeLine"]
    }
    
}

class HomeNews: NSObject, Mappable {
    var type: TypeData = .homeNew
    var data: [DataModel]?
    
    required init?(map: Map) {}
    
    func mapping(map: Map) {
      data <- map["Data"]
    }
}

struct DataModel : Mappable {
    var id : Int = 0
    var zoneId : Int?
    var name : String = ""
    var title = ""
    var sapo = ""
    var zoneName : String = ""
    var zoneUrl : String?
    var description : String?
    var htmlCode : String?
    var avatar : String = ""
    var KeyVideoVideo : String?
    var pname : String?
    var views : Int?
    var distributionDate : String?
    var url : String?
    var sourceLink : String?
    var author : String?
    var videoRelation : String?
    var fileName : String?
    var duration : String?
    var size = 0
    var capacity : Int?
    var tags : String?
    var source : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {
        distributionDate <- map["DistributionDate"]
        id <- map["Id"]
        title <- map["Title"]
        zoneId <- map["ZoneId"]
        sapo <- map["Sapo"]
        name <- map["Name"]
        zoneName <- map["ZoneName"]
        zoneUrl <- map["ZoneUrl"]
        description <- map["Description"]
        htmlCode <- map["HtmlCode"]
        avatar <- map["Avatar"]
//        keyVideo <- map["KeyVideo"]
        pname <- map["Pname"]
        views <- map["Views"]
        url <- map["Url"]
        sourceLink <- map["SourceLink"]
        author <- map["Author"]
        videoRelation <- map["VideoRelation"]
        fileName <- map["FileName"]
        duration <- map["Duration"]
        size <- map["Size"]
        capacity <- map["Capacity"]
        tags <- map["Tags"]
        source <- map["Source"]
    }

}
