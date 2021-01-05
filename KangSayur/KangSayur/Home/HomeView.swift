//
//  HomeView.swift
//  KangSayur
//
//  Created by Venus Dhammiko on 05/01/21.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchTerm: String = ""
    
    let names = ["Bayam Hijau","Kangkung","Brokoli","Bayam Merah","Tauge","Kailan","Seledri"]
    
    var body: some View {
        List {
            
            SearchBar(text: $searchTerm)
            //INI NANTI TINGGAL DI GANTI FOREACHNYA JADI FOREACH COLLECTION VIEW 
            ForEach(self.names.filter {
                self.searchTerm.isEmpty ? true :
                    
                    $0.localizedCaseInsensitiveContains(self.searchTerm)
            }, id: \.self) { name in
                Text(name)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
