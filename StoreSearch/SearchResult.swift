//
//  SearchResult.swift
//  StoreSearch
//
//  Created by Urisito on 3/29/16.
//  Copyright © 2016 Urisito. All rights reserved.
//

import Foundation

class SearchResult {
    
    var name = ""
    var artistName = ""
    var artworkURL60 = ""
    var artworkURL100 = ""
    var storeURL = ""
    var kind = ""
    var currency = ""
    var price = 0.0
    var genre = ""
    
    
    
}

func < (lhs: SearchResult, rhs: SearchResult) -> Bool {
    return lhs.name.localizedStandardCompare(rhs.name) == .OrderedAscending
}

