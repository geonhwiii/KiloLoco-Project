//
//  ExternalAccess.swift
//  ExternalAccess
//
//  Created by 정건휘 on 20/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import Foundation

open class ExternalOpenClass {
   
   public init() {}
   
   func doSomethingImplicitly() { }
   open func doSomethingExplicitly() { }
}

public class ExternalPublicClass {
   
   public init() {}
   
   func doSomethingImplicitly() { }
   public func doSomethingExplicitly() { }
}


// 아래는 프레임워크 밖에서 사용할 수 없음.
internal class ExternalInternalClass {
   
   public init() {}
   
   func doSomethingImplicitly() { }
   internal func doSomethingExplicitly() { }
}

class ExternalImplicitClass {
   
   public init() {}
   
   func doSomethingImplicitly() { }
   internal func doSomethingExplicitly() { }
}
