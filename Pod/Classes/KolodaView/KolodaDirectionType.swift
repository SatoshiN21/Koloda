//
//  KolodaDirectionType.swift
//  Koloda
//
//  Created by Satoshi Nagasaka on 2017/12/21.
//  Copyright © 2017年 Yalantis. All rights reserved.
//

import Foundation

/**
 ActionLogなどで"ボタンか、Swipeか、何のアクション経由でスワイプされたか?"
 を取得する為のprotocol
 このprotocolに適合した型をKolodaView#swipe(_:)に渡す.

 ```swift
 func koloda(_ koloda: KolodaView, convertManualSwipeDirectionTypeCardAt index: Int, in direction: SwipeResultDirection) -> KolodaDirectionType
 ```
 こちらのDelegateを使ってカードを実際にスワイプしたときのDirectionTypeに変換する.
 できればKolodaViewのassociatedtypeを使って型制御したかったが、delegateの存在の為に断念...

 自前のCardView作成をしたい
 */
public protocol KolodaDirectionType {

    var direction: SwipeResultDirection { get }

}
