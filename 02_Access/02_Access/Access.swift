//
//  Access.swift
//  02_Access
//
//  Created by 정건휘 on 20/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import Foundation

open class OpenClass {
   func doSomethingImplicitly() { }
   open func doSomethingExplicitly() { }
   public func doNothing() { }
}

public class PublicClass {
   func doSomethingImplicitly() { }
   public func doSomethingExplicitly() { }
}

internal class InternalClass {
   func doSomethingImplicitly() { }
   internal func doSomethingExplicitly() { }
}

class ImplicitClass {
   func doSomethingImplicitly() { }
   internal func doSomethingExplicitly() { }
}

fileprivate class FilePrivateClass {
   func doSomethingImplicitly() { }
   fileprivate func doSomethingExplicitly() { }
}

private class PrivateClass {
   func doSomethingImplicitly() { }
   private func doSomethingExplicitly() { }
   fileprivate func doSomethingElse() { }
}

func accessStuff() {
   
   let myOpen = OpenClass()
   myOpen.doSomethingImplicitly()
   myOpen.doSomethingExplicitly()
   
   let myPublic = PublicClass()
   myPublic.doSomethingImplicitly()
   myPublic.doSomethingExplicitly()
   
   let myInternal = InternalClass()
   myInternal.doSomethingImplicitly()
   myInternal.doSomethingExplicitly()
   
   let myImplicit = ImplicitClass()
   myImplicit.doSomethingImplicitly()
   myImplicit.doSomethingExplicitly()
   
   let myfilePrivate = FilePrivateClass()
   myfilePrivate.doSomethingImplicitly()
   myfilePrivate.doSomethingExplicitly()
   
   let myPrivate = PrivateClass()
   // myPrivate.doSomethingExplicitly()
   myPrivate.doSomethingElse()
   
}

// 오직 클래스와, 오버라이드할 수있는 class의 멤버만 open으로 선언될 수 있다!
public struct something { }

private protocol blahblah { }

fileprivate enum boohoo { }
