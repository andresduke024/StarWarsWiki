//
//  FilmsObservableObject.swift
//  
//
//  Created by Andres Duque on 4/08/23.
//

import Foundation
import Domain
import swift_dependency_injector

class FilmsObservableObject: ObservableObject {
    
    @Injectable
    private var getFilmsUseCase: GetFilmsUseCaseProtocol?
    
    private var films: [Film] = [] {
        didSet { data = films }
    }
    
    @Published var data: [any ViewRepresentableModel] = []
    
    func fetch() {
        guard let getFilmsUseCase else { return }
        
        Task {
            do {
                let data = try await getFilmsUseCase.invoke()
                await update(with: data)
            } catch {
                await handleError()
            }
        }
    }
    
    @MainActor
    private func update(with films: [Film]) {
        self.data = films
    }
    
    @MainActor
    private func handleError() {
        // TODO: Handle errors
    }
}
