//
//  HomeView.swift
//  Persona Book
//
//  Created by peo on 2022/03/27.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: MainVM
    @State var search = ""
    @State var isAppStart = false
    @State var showPersonaViewModal = false
    let columns = [
            GridItem(.flexible(), spacing: 25),
            GridItem(.flexible(), spacing: 25),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: self.columns,  spacing: 25) {
                    ForEach(0..<16, id: \.self) { personalityNumber in
                        NavigationLink(destination: PersonalityView(personality: personalityNumber.personality)) {
                            PersonalityItem(personality: personalityNumber.personality)
                        }
                        .foregroundColor(.primary)
                    }
                }
                .padding(.vertical, 15)
                .padding(.horizontal, 25)
            }
            .navigationTitle("Home".localized())
            .navigationBarTitleDisplayMode(.inline)            .background(Color(UIColor.systemGroupedBackground))
        }
        .searchable(text: self.$search, prompt: "InputPersonaName".localized()) {
            ForEach(self.viewModel.personas, id: \.self) { personaList in
                ForEach(personaList) { persona in
                    HStack {
                        Text(persona.name)
                            .foregroundColor(.primary)
                        Spacer()
                        Text(persona.personality.title)
                            .foregroundColor(.secondary)
                    }
                }
            }
        }
        .task {
            if !self.isAppStart {
                self.viewModel.personas = await Persona.all
                
                self.viewModel.personas.forEach { personaList in
                    self.viewModel.numberOfPersonas += personaList.count
                }
                self.isAppStart = true
            }
        }
    }
}
