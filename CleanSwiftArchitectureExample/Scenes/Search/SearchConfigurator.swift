//
//  SearchConfigurator.swift
//  CleanSwiftArchitectureExample
//
//  Created by Evgeniy Antonov on 7/26/18.
//  Copyright © 2018 Evgeniy Antonov. All rights reserved.
//

import UIKit

class SearchConfigurator: NSObject {
    static let shared = SearchConfigurator()
    
    private override init() {}
    
    func configure(_ viewController: SearchViewController) {
        let interactor = SearchInteractor()
        let presenter = SearchPresenter()
        let router = SearchRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
}
