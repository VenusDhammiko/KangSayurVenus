//
//  AccountChevron.swift
//  KangSayur
//
//  Created by Venus Dhammiko on 04/01/21.
//

import SwiftUI

struct AccountChevron: View {
    var title:String
    
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .fill(Color.white)
            
            HStack {
                Text("\(title)")
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding()
        }
    }
}

struct AccountChevron_Previews: PreviewProvider {
    static var previews: some View {
        AccountChevron(title: "View and edit profile")
    }
}
