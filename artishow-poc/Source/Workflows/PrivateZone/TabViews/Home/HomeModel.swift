//
//  HomeModel.swift
//  artishow-poc
//
//  Created by Victor Castro on 24/06/23.
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
