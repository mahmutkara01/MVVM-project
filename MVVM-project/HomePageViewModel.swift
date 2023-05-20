//
//  HomePageViewModel.swift
//  MVVM-project
//
//  Created by mahmut kara on 20.05.2023.
//

import Foundation

class HomePageViewModel : ObservableObject {
    @Published var sonuc = "0"
    
    func toplamaYap(alinanSayi1: String,alinanSayi2: String){
        if let sayi1 = Int(alinanSayi1),let sayi2 = Int(alinanSayi2){
            let toplam = sayi1 + sayi2
            sonuc = String(toplam)
        }
    }
    func carpmaYap(alinanSayi1: String,alinanSayi2: String){
        if let sayi1 = Int(alinanSayi1),let sayi2 = Int(alinanSayi2){
            let carpma = sayi1 * sayi2
            sonuc = String(carpma)
        }
    }
    func cikarmaYap(alinanSayi1: String,alinanSayi2: String){
        if let sayi1 = Int(alinanSayi1),let sayi2 = Int(alinanSayi2){
            let cikarma = sayi1 - sayi2
            sonuc = String(cikarma)
        }
    }
    func bolmeYap(alinanSayi1: String,alinanSayi2: String){
        if let sayi1 = Int(alinanSayi1),let sayi2 = Int(alinanSayi2){
            let bolme = sayi1 / sayi2
            sonuc = String(bolme)
        }
    }
}
