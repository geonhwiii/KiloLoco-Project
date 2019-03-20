//
//  ViewController.swift
//  01_JSON Parser
//
//  Created by 정건휘 on 20/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // usersAPI.txt 경로 설정
      guard let path = Bundle.main.path(forResource: "usersAPI", ofType: "txt") else { return }
      let url = URL(fileURLWithPath: path)
      
      do {
         let data = try Data(contentsOf: url)
         let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
         //print(json)
         guard let array = json as? [Any] else { return }
         
         for user in array {
            guard let userDict = user as? [String: Any] else { return }
            guard let userId = userDict["id"] as? Int,
                  let userName = userDict["username"] as? String,
                  let company = userDict["company"] as? [String: Any],
                  let companyName = company["name"] as? String else { return }
            
            print(userId)
            print(userName)
            print(companyName)
            print("---------------------")
         }
      } catch {
         print(error.localizedDescription)
      }
   }
   
   
}











/*
guard let path = Bundle.main.path(forResource: "usersAPI", ofType: "txt") else  { return }
let url = URL(fileURLWithPath: path)

do {
   let data = try Data(contentsOf: url)
   //print(data) // 4506 bytes
   let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
   //print(json)
   
   guard let array = json as? [Any] else { return }
   
   for user in array {
      guard let userDict = user as? [String: Any] else { return }
      guard let userId = userDict["id"] as? Int else {
         print("Invalid type(Int)")
         return
      }
      guard let name = userDict["name"] as? String else { return }
      guard let company = userDict["company"] as? [String: String] else { return }
      guard let companyName = company["name"] else { return }
      
      print(userId)
      print(name)
      //print(company)
      print(companyName)
      print("  ")
      
   }
} catch {
   print(error.localizedDescription)
}
*/
