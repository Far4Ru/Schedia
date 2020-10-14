//
//  ContentView.swift
//  Schedia
//
//  Created by Александр Панин on 05.10.2020.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView{
            List(tasks){ tasks in
                HStack {
                    Text(tasks.time)
                    Text(tasks.name)
                    Text(tasks.values)
                    Text(tasks.period)
                }
            }
            .navigationBarTitle("Schedia")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Task: Identifiable{
    let id: String
    let time: String
    let name: String
    let values: String
    let period: String
}

let tasks = [
    Task(id: "1", time: "21:25", name: "ЗадачаОдин", values: "10/10", period: "День")
]
