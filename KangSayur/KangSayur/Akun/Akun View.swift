//
//  Akun View.swift
//  KangSayur
//
//  Created by Venus Dhammiko on 04/01/21.
//

import SwiftUI

struct Akun_View: View {
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    NavigationLink(
                        destination: DataDiriView())
                    {
                        AccountChevron(title: "Data Diri")
                            .padding(.horizontal)
                    }
                    
                    NavigationLink(
                        destination: DataAlamatView())
                    {
                        AccountChevron(title: "Data Alamat")
                            .padding(.horizontal)
                    }
                    
                    NavigationLink(
                        destination: UbahEmailView())
                    {
                        AccountChevron(title: "Ubah Email")
                            .padding(.horizontal)
                    }
                    
                    NavigationLink(
                        destination: UbahKataSandiView())
                    {
                        AccountChevron(title: "Ubah Kata Sandi")
                            .padding(.horizontal)
                    }
                    
                    NavigationLink(
                        destination: RiwayatView())
                    {
                        AccountChevron(title: "Lihat Riwayat Pemesanan")
                            .padding(.horizontal)
                    }
                    
                    
                    Spacer()
                    
                }
                .padding(.top, 108)
            }
        }
    }
}


struct Akun_View_Previews: PreviewProvider {
    static var previews: some View {
        Akun_View()
    }
}
