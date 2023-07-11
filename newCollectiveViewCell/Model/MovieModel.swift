//
//  MovieModel.swift
//  newCollectiveViewCell
//
//  Created by Sultanbai Almaz on 9/7/23.
//

import UIKit

struct MovieModel {
    var imageMovie: UIImage
    var titleName: String
    var descriptionName: String
    
}
struct MovieData {
    
    let movies = [
        MovieModel(
            imageMovie: UIImage(named: "madmax")!,
            titleName: "Mad Max",
            descriptionName: "action"
        ),
        MovieModel(
            imageMovie: UIImage(named: "movie5")!,
            titleName: "Capitan America",
            descriptionName: "action"
        ),
        MovieModel(
            imageMovie: UIImage(named: "movie1")!,
            titleName: "Guardians of Galaxy",
            descriptionName: "action"
        ),
        MovieModel(
            imageMovie: UIImage(named: "movie4")!,
            titleName: "Hocus Pocus",
            descriptionName: "action"
        ),
        MovieModel(
            imageMovie: UIImage(named: "movie7")!,
            titleName: "Black Demon",
            descriptionName: "action"
        ),
        MovieModel(
            imageMovie: UIImage(named: "movie8")!,
            titleName: "Flash",
            descriptionName: "action"
        ),
        MovieModel(
            imageMovie: UIImage(named: "movie9")!,
            titleName: "Black Widow",
            descriptionName: "action"
        ),
        MovieModel(
            imageMovie: UIImage(named: "movie10")!,
            titleName: "Avatar",
            descriptionName: "action"
        )
    ]
    
    
    let cartoons: [MovieModel] = [ MovieModel(imageMovie: UIImage(named: "sing")!, titleName: "Spirited", descriptionName: "comedy"),
    MovieModel(imageMovie: UIImage(named: "cat")!, titleName: "cat marsel", descriptionName: "cartoon"),
    MovieModel(imageMovie: UIImage(named: "boy")!, titleName: "mistery boy", descriptionName: "cartoon"),
    MovieModel(imageMovie: UIImage(named: "panda")!, titleName: "kug fu Panda", descriptionName: "cartoon"),
    MovieModel(imageMovie: UIImage(named: "dumbo")!, titleName: "Dumbo", descriptionName: "cartoon"),
    MovieModel(imageMovie: UIImage(named: "monster")!, titleName: "Monster", descriptionName: "cartoon"),]
    
    let comedy: [MovieModel] = [
        MovieModel(imageMovie: UIImage(named: "comedy1")!, titleName: "Spirited", descriptionName: "comedy"),
        MovieModel(imageMovie: UIImage(named: "comedy2")!, titleName: "Free Guy", descriptionName: "comedy"),
        MovieModel(imageMovie: UIImage(named: "hang")!, titleName: "Hangover", descriptionName: "comedy"),
        MovieModel(imageMovie: UIImage(named: "comedy4")!, titleName: "Naked Gun", descriptionName: "comedy"),
        MovieModel(imageMovie: UIImage(named: "comedy5")!, titleName: "Travel Comedy", descriptionName: "comedy"),
        MovieModel(imageMovie: UIImage(named: "comedy6")!, titleName: "Summer", descriptionName: "comedy")
    ]
                                  
}
