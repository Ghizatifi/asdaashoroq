import Foundation

public enum Environment {
    enum Keys {
        enum Plist {
            static let googleApiKeyIos = "AIzaSyCXXI_tfhC7h8kVjBApr0A1_b6ykoUpITU"
        }
    }
    
    private static let infoDictionary: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("Plist file not found")
        }
        return dict
    }()
    
    static let googleApiKeyIos: String = {
        guard let apiKey = Environment.infoDictionary[Keys.Plist.googleApiKeyIos] as? String else {
            return "AIzaSyCXXI_tfhC7h8kVjBApr0A1_b6ykoUpITU"
        }
        return apiKey
    }()
}
