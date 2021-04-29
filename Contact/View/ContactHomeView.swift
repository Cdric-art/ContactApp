//
//  ContentView.swift
//  Contact
//
//  Created by Cédric Evrard on 29/04/2021.
//

import SwiftUI

struct ContactHomeView: View {
    var body: some View {
		NavigationView {
			List(contacts) { contact in
				NavigationLink(destination: DetailContactView(contact: contact)) {
					ContactRaw(contact: contact)
				}
			}
			.navigationTitle("Contacts")
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContactHomeView()
    }
}

struct ContactRaw: View {
	
	var contact: Contact
	
	var body: some View {
		HStack {
			Image(contact.imageName)
				.resizable()
				.aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
				.frame(width: 60, height: 60)
				.clipped()
				.cornerRadius(50)
			VStack(alignment: .leading) {
				Text(contact.name)
					.font(.system(size: 21, weight: .medium, design: .default))
				Text(contact.phone)
			}
		}
	}
}
