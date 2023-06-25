//
//  ApiManager.swift
//  artishow-poc
//
//  Created by Victor Castro on 21/06/23.
//

import Foundation

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
}

struct ApiResponse<T: Codable> {
    let result: T
}

enum EnviromentDomain: String {
    case develop = "https://rickandmortyapi.com/api"
}

enum Endpoints: String {
    case characaters = "/character"
}

class ApiManager {
    func request<T: Codable>(endpoint: Endpoints, method: HTTPMethod) async throws -> ApiResponse<T> {
        guard let url = URL(string: EnviromentDomain.develop.rawValue + endpoint.rawValue) else {
            throw APIErrors.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        
        let (data, response) = try await URLSession.shared.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse,
              (200...299).contains(httpResponse.statusCode) else {
            throw APIErrors.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            let result = try decoder.decode(T.self, from: data)
            let apiResponse = ApiResponse(result: result)
            return apiResponse
        } catch {
            throw APIErrors.jsonParsingFailed
        }
    }
}
