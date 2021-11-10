//
//  Router.swift
//  SBBOL TEST YO
//
//  Created by Dmitry Kaveshnikov on 11/10/21.
//

import Foundation

class Router: RouterProtocol {
    // MARK: - Properties
    weak var viewController: ViewOne!
    
    // MARK: - Initializer
    init(viewController: ViewOne) {
        self.viewController = viewController
    }
}
