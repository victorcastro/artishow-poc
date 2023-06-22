//
//  HomeViewModel.swift
//  artishow-poc
//
//  Created by Victor Castro on 21/06/23.
//

import Foundation




struct BaseResponse: Codable {
    let info: InfoResponse
    let results: [CharacterResponse]
}

struct InfoResponse: Codable {
    let count: Int
    let pages: Int
}

struct CharacterResponse: Codable {
    let id: Int
    let name: String
    let image: String
}

class HomeViewModel: ObservableObject {
    @Published var characters: [CharacterResponse]?
        
    func fetchCharacters() async {
        do {
            let apiManager = ApiManager()
            let response: ApiResponse<BaseResponse> = try await apiManager.request(endpoint: .characaters, method: .get)
            print(response.result)
            self.characters = response.result.results
        } catch {
            print("Error: \(error)")
        }
    }
}
