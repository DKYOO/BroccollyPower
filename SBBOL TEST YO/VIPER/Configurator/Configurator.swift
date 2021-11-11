//
//  Configurator.swift
//  SBBOL TEST YO
//
//  Created by Dmitry Kaveshnikov on 11/10/21.
//

import Foundation
import UIKit

class Configurator: ConfiguratorProtocol {
    func configure(with viewController: ViewOne) {
        let presenter = Presenter(view: viewController)
        let interactor = Interactor(presenter: presenter)
        let router = Router(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}

enum AssemleMain {
    func createModule() -> UIViewController {
        let viewController = ViewOne()
        let presenter = Presenter(view: viewController)
        let interactor = Interactor(presenter: presenter)
        let router = Router(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
        return viewController
    }
}
