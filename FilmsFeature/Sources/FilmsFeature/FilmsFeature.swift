import swift_dependency_injector

public struct FilmsFeature {
    public static func setup() {
        let injector = Injector.global
        
        injector.register(FilmsRepositoryProtocol.self, implementation: FilmsRepository.instance)
        injector.register(GetFilmsUseCaseProtocol.self, implementation: GetFilmsUseCase.instance)
    }
}
