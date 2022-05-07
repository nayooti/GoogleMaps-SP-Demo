import UIKit
import Framework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        let mapController = MapViewController()
        mapController.modalPresentationStyle = .fullScreen
        present(mapController, animated: false)
    }


}

