
import Foundation

struct UserDefault: Identifiable {
    
    var id: String = UUID().uuidString
    var name: String
    var phone: Int
    var adress : String
    
    var representation: [String: Any] {
        var repres = [String: Any]()
        repres["id"] = self.id
        repres["name"] = self.name
        repres["phone"] = self.phone
        repres["adress"] = self.adress
        return repres
    }
    
}
