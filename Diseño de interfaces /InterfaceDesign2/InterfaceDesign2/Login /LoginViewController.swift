
import UIKit

class LoginViewController: UIViewController {
    
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func pushLoginButton(_ sender: Any) {
        
        let homeViewController = HomeViewController(nibName: "HomeViewController", bundle: nil) // se realiza una instancia de la pestana a la que llevara el boton
        
        self.navigationController?.pushViewController(homeViewController, animated: true
                                                      
        )
    }
    
   

}
