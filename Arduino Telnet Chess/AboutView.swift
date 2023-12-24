//
//  AboutView.swift
//  Arduino Telent chess
//
//  Created by Enrico Miglino on 29/11/23.
//

import SwiftUI
import CoreData

struct AboutView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    // BODY OF THE GAME VIEW
    var body: some View {
        NavigationView {
            ZStack {
                // Background color
                appColors["background"]
                    .ignoresSafeArea()
                // --------------------- Page title
                TitleViewPortrait(title: "About")

                // --------------------- Game board

                
            } // ZStack
        } // Navigation view
    } // View
} // Main content view

#Preview {
    AboutView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
