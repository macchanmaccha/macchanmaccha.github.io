//
//  ContentView.swift
//  MyJanken_may_3
//
//  Created by apple on 2023/02/01.
//

import SwiftUI

struct ContentView: View {
    // じゃんけんの結果を格納する変数（0＝初期画面、1＝グー、2＝チョキ、3＝パー）
    @State var answerNumber: Int = 0
    var body: some View {
        VStack {
            // スペースを追加
            Spacer()
            // じゃんけんの数字が0だったら
            if answerNumber == 0 {
                // 初期画面のテキストを表示
                Text("これからじゃんけんをします！")
                    .padding(.bottom)
            } else if answerNumber == 1 {
                // じゃんけんの数字が1だったら、グー画像を指定
                // グー画像
                Image("gu")
                // 画面をリサイズする
                    .resizable()
                // アスペクト比の調整
                    .scaledToFit()
                // スペース
                Spacer()
                // じゃんけんの種類を指定
                Text("グー")
                // 下辺に余白を設定
                    .padding(.bottom)
            } else if answerNumber == 2 {
                // じゃんけんの数字が2だったら、チョキ画像を指定
                // チョキ画像
                Image("choki")
                // 画面をリサイズする
                    .resizable()
                // アスペクト比の調整
                    .scaledToFit()
                // スペース
                Spacer()
                // じゃんけんの種類を指
                Text("チョキ")
                // 下辺に余白を設定
                    .padding(.bottom)
            } else {
                // じゃんけんの数字が3だったら、パー画像を指定
                // パー画像
                Image("pa")
                // 画面をリサイズする
                    .resizable()
                // アスペクト比の調整
                    .scaledToFit()
                // スペース
                Spacer()
                // じゃんけんの種類を指定
                Text("パー")
                // 下辺に余白を設定
                    .padding(.bottom)
            } // ifここまで
            // ボタン
            Button {
                // 新しいじゃんけんの結果を一時的に格納する変数を設ける
                var newAnswerNumber = 0
                // ランダムに結果を出すが、前回の結果と異なる場合のみ採用
                // repeatは繰り返しを意味する
                repeat {
                    // 123の数値をランダムに算出（乱数）
                    newAnswerNumber = Int.random(in: 1...3)
                } while answerNumber == newAnswerNumber
                // 新しいじゃんけんの結果を格納
                answerNumber = newAnswerNumber
            } label: {
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            } // ボタンここまで
        } // VStackここまで
    } // bodyここまで
} // ContentViewここまで

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
