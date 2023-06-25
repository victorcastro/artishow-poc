//
//  ErrorHanlder.swift
//  artishow-poc
//
//  Created by Victor Castro on 24/06/23.
//

import Foundation

enum APIErrors: Error {
    case invalidURL
    case requestFailed
    case invalidResponse
    case jsonParsingFailed
    case dataError
    case lostInternet
}

struct ErrorViewHandlerModel {
    var show: Bool
    let title: String
    let description: String
}

class ErrorHandler {
    static let shared = ErrorHandler()
    
    private init() {}
    
    func handle(error: Error) {
        if let apiError = error as? APIErrors {
            switch apiError {
            case .invalidURL:
                print("Error: URL inválida")

            case .invalidResponse:
                print("Error: Respuesta inválida")

            case .jsonParsingFailed:
                print("Error: Análisis JSON fallido")

            case .requestFailed:
                print("Error: requestFailed")
                
            case .dataError:
                print("Error: dataError")
                
            case .lostInternet:
                print("Error: lostInternet")
            }
        } else {
            print("Error desconocido: \(error)")
        }
    }
}
