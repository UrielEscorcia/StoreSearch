//
//  DimmingPresentationController.swift
//  StoreSearch
//
//  Created by Urisito on 4/5/16.
//  Copyright © 2016 Urisito. All rights reserved.
//

import UIKit

class DimmingPresentationController: UIPresentationController {
    override func shouldRemovePresentersView() -> Bool {
        return false
    }
}
