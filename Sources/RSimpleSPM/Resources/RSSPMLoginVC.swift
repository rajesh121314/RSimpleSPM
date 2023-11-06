//
//  RSSPMLoginVC.swift
//  
//
//  Created by vrinsoft on 06/11/23.
//

import UIKit
import SDWebImage

public class RSSPMLoginVC: UIViewController {
    
    @IBOutlet weak var imgTopImage: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func signIn(_ sender: Any) {
        print("username \(emailTextField.text ?? "") password \(passwordTextField.text ?? "")")
    }
    
    public init() {
       // let bundle = Bundle(for: LoginVC.self)
      //  let bundleId = bundle.bundleIdentifier
        super.init(nibName: "RSSPMLoginVC", bundle: Bundle.module)
       // super.init(nibName: "LoginVC", bundle: Bundle(for: LoginVC.self))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        guard let url = URL(string: "https://picsum.photos/200/300") else { return  }
        imgTopImage.sd_setImage(with: url)
    }


}
