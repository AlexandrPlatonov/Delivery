

import Foundation

class ProductDetailViewModel: ObservableObject {
    
    @Published var product: Product
    @Published var rollType = ["Детский", "Женский", "Мужской"]
    @Published var count = 0
    
    init (product: Product) {
        self.product = product
    }
    func getPrice(rollType: String) -> Int {
        
        switch rollType {
        case "Детский": return product.price
        case "Женский": return Int(Double(product.price) * 1.25)
        case "Мужской": return Int(Double(product.price) * 1.5)
        default: return 0
        }
    }
}
