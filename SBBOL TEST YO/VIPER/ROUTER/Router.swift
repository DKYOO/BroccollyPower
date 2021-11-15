//
//  Router.swift
//  SBBOL TEST YO
//
//  Created by Dmitry Kaveshnikov on 11/10/21.
//

import Foundation
import UIKit

class Router: RouterProtocol {
    // MARK: - Properties
    weak var viewController: UIViewController?
    
    // MARK: - Initializer
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
//    func routeToKart(model: Model) {
//        let kartView = AssembeKart.createModule()
//        view?.present(kartView)
//    }
}
