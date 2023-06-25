//
//  HomeViewModel.swift
//  artishow-poc
//
//  Created by Victor Castro on 21/06/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var characters: [CharacterResponse]?
    @Published var error: ErrorHandler?
    
    @MainActor
    func fetchCharacters() async throws {
        do {
            let apiManager = ApiManager()
            let response: ApiResponse<BaseResponse> = try await apiManager.request(endpoint: .characaters, method: .get)
            self.characters = response.result.results
        } catch {
            throw APIErrors.dataError
            // ErrorHandler.shared.handle(error: error)
        }
    }
}
