//
//  WifiView.swift
//  NavigationStudy
//
//  Created by 박서연 on 2023/06/29.
//

import SwiftUI

struct WifiView: View {
    @State private var setWifiMode = false
    var body: some View {
        NavigationStack {
            Form {
                // MARK: - wifi 설정
                Section {
                    HStack {
                        Image(systemName: "checkmark")
                            .frame(width: 30, height: 30)
                            .foregroundColor(.blue)
                            .font(.system(size: 22, weight: .semibold))
                            .cornerRadius(5)
                            .padding(.trailing, 6)
                        
                        Toggle("airplaonmode", isOn: $setWifiMode)
                            .toggleStyle(SwitchToggleStyle(tint: .green))
                    }
                    
                }
                
                // MARK: - 나의 네트워크
                Section("나의 네트워크") {
                    HStack {
                        Image(systemName: " ")
                            .frame(width: 30, height: 30)
                            .foregroundColor(.blue)
                            .font(.system(size: 22, weight: .semibold))
                            .cornerRadius(5)
                            .padding(.trailing, 6)
                        
                        Text("SK_WiFiGIGAA2E8_2.4G")
                            .font(.system(size: 15))
                        Spacer()
                        Image(systemName: "lock.fill")
                            .font(.system(size: 14))
                        Image(systemName: "wifi")
                            .font(.system(size: 14))
                    
                        Button {
                            Text("")
                        } label: {
                            Image(systemName: "i.circle")
                        }
                    }
                    
                }
                
                // MARK: - 다른 네트워크
                Section("다른 네트워크") {
                    HStack {
                        Image(systemName: "checkmark")
                            .frame(width: 30, height: 30)
                            .foregroundColor(.blue)
                            .font(.system(size: 22, weight: .semibold))
                            .cornerRadius(5)
                            .padding(.trailing, 6)
                        
                        Text("mimi")
                    }
                    HStack {
                        Image(systemName: "")
                            .frame(width: 30, height: 30)
                            .foregroundColor(.blue)
                            .font(.system(size: 22, weight: .semibold))
                            .cornerRadius(5)
                            .padding(.trailing, 6)
                        
                        Text("기타...")
                    }
                }
                
                // 네트워크 연결 요청 섹션
                Section {
                    NavigationLink {
                        Text("네트워크 연결 요청 뷰를 넣어주세요")
                    } label: {
                        HStack {
                            Text("네트워크 연결 요청")
                            Spacer()
                            Text("알림")
                                .foregroundColor(.gray)
                                .font(.system(size: 15))
                        }
                    }
                } footer: {
                    Text("알고 있는 네트워크에 자동으로 연결됩니다. 사용 가능한 알고 있는 네트워크가 없다면, 사용할 수 있는 네크워크를 알려줍니다.")
                        .font(.system(size: 11))
                }
                
                // 핫스팟 자동 연결 섹션
                Section {
                    NavigationLink {
                        Text("핫스팟 자동 연결 뷰를 넣어주세요")
                    } label: {
                        HStack {
                            Text("핫스팟 자동 연결")
                            Spacer()
                            Text("연결 요청")
                                .foregroundColor(.gray)
                                .font(.system(size: 15))
                        }
                    }
                } footer: {
                    Text("사용 가능한 Wi-Fi 네트워크가 없을 때 이 기기가 자동으로 근처 개인용 핫스팟을 찾도록 허용합니다.")
                        .font(.system(size: 11))
                }
            }
        }
    }
}

struct WifiView_Previews: PreviewProvider {
    static var previews: some View {
        WifiView()
    }
}
