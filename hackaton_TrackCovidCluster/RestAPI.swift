//
//  RestAPI.swift
//  hackaton_TrackCovidCluster
//
//  Created by Dominik Gorczyca on 26.03.20.
//  Copyright © 2020 All rights reserved.
//

import Foundation

class RestAPI {
    let apiUrl = "https://api.trackcovidcluster.de:12345/json"
    func dupa() {
        print("dupa aufgerufen")
        sendJsonAsPost {(status) in print(status) }
    }
    
    func sendJsonAsPost(completion: @escaping (Any) -> ()) {
        let url = URL(string: apiUrl)!
        print("sendJsonAsPost azfgerufen")
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        let json = [
         "Command": "StatePoll",
         "UUID": "CJnw5cqBJ153OTIka2tqDKWoOvBKqis2M+7zEj07WTM="
        ]
        

        if let jsonData = try? JSONSerialization.data(withJSONObject: json, options: []) {
            URLSession.shared.uploadTask(with: request, from: jsonData) {
                data, response, error in
                print("some action")
                //if let httpResponse = response as? HTTPURLResponse {
                //        completion(data)
                //}
                
                if let data = data {
                    do{
                        let jsonResponse = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions())
                        print ("data = \(jsonResponse)")
                    } catch _ {
                        print ("OOps not good JSON formatted response")
                    }
                }
            }.resume()
        }
    }
    
    /*
    func getJson(completion: @escaping (Response) -> ()) {
        if let url = URL(string: apiUrl)
        {
            URLSession.shared.dataTask(with: url) { data, res, err in
                if let data = data {
                    let decoder = JSONDecoder()
                    if let json = try? decoder.decode(Response.self, from: data) {
                        completion(data)
                    }
                }
            }
        }
    }
    */
}

