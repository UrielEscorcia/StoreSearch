//
//  UIImageView+DownloadImage.swift
//  StoreSearch
//
//  Created by Urisito on 4/4/16.
//  Copyright © 2016 Urisito. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func loadImageWithURL(url: NSURL) -> NSURLSessionDownloadTask {
        let session = NSURLSession.sharedSession()
        
        let downloadTask = session.downloadTaskWithURL(url) { [weak self] (url, response, error) in
            
            if error == nil, let url = url, data = NSData(contentsOfURL: url), image = UIImage(data: data) {
                dispatch_async(dispatch_get_main_queue()) {
                    if let stringSelf = self {
                        stringSelf.image = image
                    }
                }
            }
        }
        
        downloadTask.resume()
        
        return downloadTask
    }
    
    
    
}
