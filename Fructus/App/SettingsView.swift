//
//  SettingsView.swift
//  Fructus
//
//  Created by Damien K. Sedgwick on 17/06/2021.
//

import SwiftUI

struct SettingsView: View {

    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider()
                            .padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(8)
                            
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Customisation", labelImage: "paintbrush")
                    ) {
                        Divider()
                            .padding(.vertical, 4)
                        
                        Text("If you wish, you can reset the application but toggling the switch in this box. That way, it starts the onboarding process and you will the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "SwiftUI", content: "v2.0")
                        SettingsRowView(name: "Version", content: "v1.1.0")
                        SettingsRowView(name: "Developer", content: "Damien Sedgwick")
                        SettingsRowView(name: "Website", linkLabel: "damiensedgwick.com", linkDestination: "damiensedgwick.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@damiensedgwick", linkDestination: "twitter.com/damiensedgwick")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                    }
                    
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
