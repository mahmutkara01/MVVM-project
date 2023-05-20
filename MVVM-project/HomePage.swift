//
//  ContentView.swift
//  MVVM-project
//
//  Created by mahmut kara on 20.05.2023.
//

import SwiftUI

struct HomePage: View {
    @State private var num1 = ""
    @State private var num2 = ""
    
    @ObservedObject private var viewModel = HomePageViewModel()
    
    var body: some View {
        VStack(spacing: 50) {
            Text(viewModel.sonuc)
                .font(.system(size: 50))
            HStack {
                TextField("Sayı 1",text: $num1)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Sayı 2",text: $num2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding(.horizontal,30)
            VStack {
                HStack(spacing: 20){
                    Button("Toplama"){
                        viewModel.toplamaYap(alinanSayi1: num1, alinanSayi2: num2)
                    }.frame(width: 100, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    Button("Çıkarma"){
                        viewModel.cikarmaYap(alinanSayi1: num1, alinanSayi2: num2)
                    }.frame(width: 100, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                HStack(spacing: 20){
                    Button("Çarpma"){
                        viewModel.carpmaYap(alinanSayi1: num1, alinanSayi2: num2)
                    }.frame(width: 100, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    Button("Bölme"){
                        viewModel.bolmeYap(alinanSayi1: num1, alinanSayi2: num2)
                    }.frame(width: 100, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
