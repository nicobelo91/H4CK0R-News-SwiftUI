//
//  NetworkManager.swift
//  hackernews
//
//  Created by user183145 on 11/14/20.
//  Copyright © 2020 Nico Cobelo. All rights reserved.
//

import Foundation

class NetworkManager {
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                        } catch {
                        print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
