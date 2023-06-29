//
//  ChattingData.swift
//  NavigationStudy
//
//  Created by 박서연 on 2023/06/29.
//
import Foundation
import SwiftUI

// identifiable 프로토콜, 개별적으로 구분되어 겹치지 않는 값으로 Id라는 프로퍼티들을 강제로 요구함
struct SetData: Identifiable, Hashable {
    var id: UUID = UUID() // 이렇게 Id 만들면 Identifiable를 따른다고 설정할 수 있음
    var iconImage: String
    var title: String
    var description: String
    var initColor: Color
}

let firstData: [SetData] = [
//    SetData(iconImage: "airplane", title: "에어플레인모드", description: "비행기모드", initColor: .orange),
//    SetData(iconImage: "wifi", title: "Wi-Fi", description: "와이파이", initColor: .blue),
    SetData(iconImage: "point.3.connected.trianglepath.dotted", title: "Bluetooth", description: "블루투스", initColor: .blue),
    SetData(iconImage: "antenna.radiowaves.left.and.right", title: "셀룰러", description: "셀룰러", initColor: .green),
    SetData(iconImage: "personalhotspot", title: "개인용 핫스팟", description: "핫스팟", initColor: .green)
]

let secondData: [SetData] = [
    SetData(iconImage: "bell.badge.fill", title: "알림", description: "알림", initColor: .pink),
    SetData(iconImage: "speaker.wave.3", title: "사운드 및 햅틱", description: "사운드 및 햅틱", initColor: .pink),
    SetData(iconImage: "moon.fill", title: "집중모드", description: "집중모드", initColor: .purple),
    SetData(iconImage: "hourglass", title: "스크린 타임", description: "스크린 타임", initColor: .purple)
]

let thirdData: [SetData] = [
    SetData(iconImage: "gear", title: "일반", description: "일반", initColor: .gray),
    SetData(iconImage: "checklist.unchecked", title: "제어 센터", description: "제어 센터", initColor: .gray),
    SetData(iconImage: "textformat.size", title: "디스플레이 및 밝기", description: "디스플레이 및 밝기", initColor: .blue),
    SetData(iconImage: "circle.grid.3x3", title: "홈 화면", description: "홈 화면", initColor: .blue),
    SetData(iconImage: "figure.wave.circle", title: "손쉬운 사용", description: "손쉬운 사용", initColor: .blue),
    SetData(iconImage: "circle.hexagongrid", title: "배경화면", description: "배경화면", initColor: .cyan),
    SetData(iconImage: "magnifyingglass.circle.fill", title: "Siri 및 검색", description: "Siri 및 검색", initColor: .black),
    SetData(iconImage: "faceid", title: "Face ID 및 암호", description: "Face ID 및 암호", initColor: .green),
    SetData(iconImage: "sos.circle.fill", title: "긴급 구조 요청", description: "긴급 구조 요청", initColor: .red),
    SetData(iconImage: "microbe.fill", title: "노출 알림", description: "노출 알림", initColor: .red),
    SetData(iconImage: "battery.100", title: "배터리", description: "배터리", initColor: .green),
    SetData(iconImage: "hand.raised.fill", title: "개인정보 보호 및 보안", description: "개인정보 보호 및 보안", initColor: .blue)
]

