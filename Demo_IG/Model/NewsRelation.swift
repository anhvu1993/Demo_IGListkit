/* 
Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
import ObjectMapper

struct NewsRelation : Mappable {
	var newsId : String?
	var encryptId : String?
	var zoneId : Int?
	var type : Int?
	var title : String?
	var url : String?
	var avatar : String?
	var avatar1 : String?
	var avatar2 : String?
	var avatar3 : String?
	var avatar4 : String?
	var avatar5 : String?
	var distributionDate : String?
	var displayStyle : Int?
	var newsRelationType : Int?
	var objectType : Int?
	var avatarPreload : String?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

		newsId <- map["NewsId"]
		encryptId <- map["EncryptId"]
		zoneId <- map["ZoneId"]
		type <- map["Type"]
		title <- map["Title"]
		url <- map["Url"]
		avatar <- map["Avatar"]
		avatar1 <- map["Avatar1"]
		avatar2 <- map["Avatar2"]
		avatar3 <- map["Avatar3"]
		avatar4 <- map["Avatar4"]
		avatar5 <- map["Avatar5"]
		distributionDate <- map["DistributionDate"]
		displayStyle <- map["DisplayStyle"]
		newsRelationType <- map["NewsRelationType"]
		objectType <- map["ObjectType"]
		avatarPreload <- map["AvatarPreload"]
	}

}