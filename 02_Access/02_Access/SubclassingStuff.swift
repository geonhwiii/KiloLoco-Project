//
//  SubclassingStuff.swift
//  02_Access
//
//  Created by 정건휘 on 20/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import Foundation
import ExternalAccess

class subExternalOpen: ExternalOpenClass {
   override func doSomethingExplicitly() {
      print("DO SOMETHING ELSE")
   }
   
   
   
//   override func doNothing() {
//
//   }
}

// 아래는 서브클래싱이 안 되어서 주석처리.

// openClass가 아니면 모듈 밖에서 상속할 수 없다!
//class subExternalPublic: ExternalPublicClass {
//
//}

