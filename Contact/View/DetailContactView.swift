//
//  DetailContactView.swift
//  Contact
//
//  Created by Cédric Evrard on 29/04/2021.
//

import SwiftUI

struct DetailContactView: View {
	
	let contact: Contact
	
    var body: some View {
		VStack {
			Image(contact.imageName)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: 150, height: 150)
				.clipped()
				.cornerRadius(150)
				.shadow(radius: 3)
			Text(contact.name)
				.font(.title)
				.fontWeight(.medium)
			Form {
				Section {
					HStack {
						Text("Phone")
						Spacer()
						Text(contact.phone)
							.foregroundColor(.gray)
							.font(.callout)
					}
					HStack {
						Text("Email")
						Spacer()
						Text(contact.email)
							.foregroundColor(.gray)
							.font(.callout)
					}
					HStack {
						Text("Address")
						Spacer()
						Text(contact.address)
							.foregroundColor(.gray)
							.font(.callout)
					}
				}
				Section {
					Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
						Text("Send message")
					})
					Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
						Text("Call")
					})
				}
			}
			
		}
    }
}

struct DetailContactView_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactView(contact: contacts[0])
    }
}
