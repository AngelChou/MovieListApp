//
//  Movie.swift
//  MovieListApp
//
//  Created by Shun-Ching, Chou on 2019/4/8.
//  Copyright © 2019 Shun-Ching, Chou. All rights reserved.
//

import Foundation

enum MovieType {
    case MOVIE
    case DRAMA
}

struct Movie {
    var name: String
    var image: String
    var year: String
    var type: MovieType
}
