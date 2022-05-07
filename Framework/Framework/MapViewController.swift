import UIKit
import GoogleMaps

public class MapViewController: UIViewController {

    let apiKey = "[INSERT]"


    public init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    var mapView: GMSMapView!

    public override func viewDidLoad() {
        super.viewDidLoad()

        GMSServices.provideAPIKey(apiKey)

        mapView = GMSMapView()
        view.addSubview(mapView)
        mapView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mapView.topAnchor.constraint(equalTo: view.topAnchor),
            mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
