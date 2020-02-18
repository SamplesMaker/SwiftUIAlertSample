//
//  ContentView.swift
//  AlertSample
//
//  Created by MakeItSimple on 2020/02/18.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAlert = false
    
    var alert: Alert {
      Alert(title: Text("안내"), message: Text("테스트성공?"), dismissButton: .default(Text("확인")))
    }
    
    var body: some View {
        Button(action: { self.showAlert.toggle() }) {
            Text("Show Alert")
        }.alert(isPresented: $showAlert, content: { self.alert })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
