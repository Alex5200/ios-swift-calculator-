//
//  ShowAlert.swift
//  calculator
//
//  Created by Александр Ляхов on 09.09.2021.
//

import UIKit
class ShowAlert: ViewController {
   public func showSimpleAlert() {
        let alert = UIAlertController(title: "Sign out?", message: "You can always access your content by signing back in",         preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { _ in
                //Cancel Action
            }))
            alert.addAction(UIAlertAction(title: "Sign out",
                                          style: UIAlertAction.Style.default,
                                          handler: {(_: UIAlertAction!) in
                                            //Sign out action
            }))
            self.present(alert, animated: true, completion: nil)
    }
}
