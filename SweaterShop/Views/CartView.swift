//
//  CartView.swift
//  SweaterShop
//
//  Created by user224010 on 9/5/22.
//

import SwiftUI



struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    @State var showingPopup = false // 1
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id){
                    product in
                    ProductRow(product: product	)
                }
                HStack{
                    Text("Your Cart Total is ")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()

                }
                .padding()
                ZStack {
//                            Color.red.opacity(0.2)
                            Button("Check Out") {
                                showingPopup = true // 2
                            }
                            .accentColor(.red)
                            .buttonStyle(.bordered)
                            .frame(width: 200, height: 50)
                    

                        }
                        .popover(isPresented: $showingPopup) { // 3
                            ZStack { // 4
//                                    Color.blue.frame(width: 200, height: 100)
                                Text("Order Processed!")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding()
                                    .padding(.horizontal, 20)
                                    .background(Color.blue
                                        .cornerRadius(10)
                                        .shadow(radius: 10)
                                    )
                            }
                        }
            }else{
                Text("Your Cart Is Empty")
            }
            
            
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
