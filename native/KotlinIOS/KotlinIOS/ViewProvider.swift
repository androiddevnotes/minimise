//
//  ViewProvider.swift
//  KotlinIOS
//
//  Created by Joe Birch on 26/04/2020.
//  Copyright © 2020 Joe Birch. All rights reserved.
//

import SwiftUI
import Swinject
import Dashboard
import Authentication
import Creation
import Common

class ViewProvider: ObservableObject, ScreenFactory {

    private let resolver: Resolver

    init(resolver: Resolver) {
        self.resolver = resolver
    }

    func makeDashboardView() -> AnyView {
        return self.resolver.resolve(DashboardViewFactory.self)!.make()
    }
    
    func makeAuthenticationView() -> AnyView {
        return self.resolver.resolve(AuthenticationViewFactory.self)!.make()
    }
    
    func makeCreationView() -> AnyView {
        return self.resolver.resolve(CreationViewFactory.self)!.make()
    }
}
