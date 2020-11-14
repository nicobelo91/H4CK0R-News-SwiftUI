//
//  DetailView.swift
//  hackernews
//
//  Created by user183145 on 11/14/20.
//  Copyright © 2020 Nico Cobelo. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
