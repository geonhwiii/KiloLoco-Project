//
//  ViewController.swift
//  02_Access
//
//  Created by 정건휘 on 20/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit
import ExternalAccess

class ViewController: UIViewController {
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      let myOpen = OpenClass()
      myOpen.doSomethingImplicitly()
      
      let myPublic = PublicClass()
      myPublic.doSomethingImplicitly()
      
      let myInternal = InternalClass()
      myInternal.doSomethingImplicitly()
      
      let myImplicit = ImplicitClass()
      myImplicit.doSomethingImplicitly()
      
      // let myfilePrivate = FilePrivateClass()
      
      // let myPrivate = PrivateClass()
      
      let myExOpen = ExternalOpenClass()
      // myExOpen.doSomethingImplicitly()
      myExOpen.doSomethingExplicitly()
      
      let myExPublic = ExternalPublicClass()
      // myExPublic.doSomethingImplicitly()
      myExPublic.doSomethingExplicitly()
      
      // let myExInternal = ExternalInternalClass()
      // let myExImplicit = ExternalImplicitClass()
      
   }


}

