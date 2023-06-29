//
//  ChattingView.swift
//  NavigationStudy
//
//  Created by 박서연 on 2023/06/29.
//

import SwiftUI

struct ChattingView: View {
    @State private var setAirplaneMode = false
    var connectionData: [SetData] = firstData
    var alarmData: [SetData] = secondData
    var humanData: [SetData] = thirdData
    
    
    var body: some View {
        
        NavigationStack {
            Form {
                Section(" ") {
                    HStack {
                        Image(systemName: "airplane")
                            .frame(width: 30, height: 30)
                            .background(.orange)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                            .padding(.trailing, 6)
                        
                        Toggle("airplaonmode", isOn: $setAirplaneMode)
                            .toggleStyle(SwitchToggleStyle(tint: .green))
                    }
                    
                    NavigationStack {
                        NavigationLink {
                            WifiView()
                        } label: {
                            HStack {
                                Image(systemName: "wifi")
                                    .frame(width: 30, height: 30)
                                    .background(.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(5)
                                    .padding(.trailing, 6)
                                Text("Wi-Fi")
                            }
                        }
                    }
                   
                    ForEach(connectionData) { index in
                        NavigationLink(value: index) {
                            Label {
                                Text("\(index.title)")
                            } icon: {
                                Image(systemName: index.iconImage)
                                    .frame(width: 30, height: 30)
                                    .background(index.initColor)
                                    .foregroundColor(.white)
                                    .cornerRadius(5)
                            }
                        }
                        .navigationDestination(for: SetData.self) { index in
                            Text(index.description)
                        }
                    }
                }
                // 섹션2
                Section {
                    ForEach(alarmData) { index in
                        NavigationLink(value: index) {
                            Label {
                                Text("\(index.title)")
                            } icon: {
                                Image(systemName: index.iconImage)
                                    .frame(width: 30, height: 30)
                                    .background(index.initColor)
                                    .foregroundColor(.white)
                                    .cornerRadius(5)
                            }
                        }
                        .navigationDestination(for: SetData.self) { index in
                            Text(index.description)
                        }
                    }
                    
                }
                // 섹션3
                Section {
                    ForEach(humanData, id: \.id) { index in
                        NavigationLink(value: index) {
                            Label {
                                Text("\(index.title)")
                            } icon: {
                                Image(systemName: index.iconImage)
                                    .frame(width: 30, height: 30)
                                    .background(index.initColor)
                                    .foregroundColor(.white)
                                    .cornerRadius(5)
                            }
                        }
                        .navigationDestination(for: SetData.self) { index in
                            Text(index.description)
                        }
                    }
                }
            }.navigationTitle("설정")
        }
    }
}

struct ChattingView_Previews: PreviewProvider {
    static var previews: some View {
        ChattingView()
    }
}
