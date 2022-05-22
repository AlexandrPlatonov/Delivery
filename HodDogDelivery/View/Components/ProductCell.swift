

import SwiftUI

struct ProductCell: View {
    var product: Product
    var body: some View {
        VStack (spacing: 6){
            Image("HotDog Mexica")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: screen.width * 0.45)
                .clipped()
            HStack{
                Text(product.title)
                    .font(.custom("AvenirNext-bold", size: 12))
                Spacer()
                Text("\(product.price) ₽")
                    .font(.custom("AvenirNext-bold", size: 12))
            }
            .padding(.horizontal, 55)
        } .frame(width: screen.width * 0.65 , height: screen.width * 0.45)
            .padding(.trailing, -38)
            .padding(.leading, -38)
            .background(.white)
            .cornerRadius(16)
            .shadow(radius: 4)
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(product: Product(id: "1",
                                     title: "Мексиканский",
                                     imageUrl: "not found",
                                     price: 230,
                                     descript: "Действительно острый!"))
    }
}
