import Playgrounds
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {

            //背景宣紙
            Image("paper")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            //徽宗的龍袍
            Circle()
                .trim(from: 0.5, to: 1)
                .frame(width: 500, height: 500)
                .scaleEffect(x: 1.0, y: 1.35)
                .foregroundStyle(Color(red: 0.65, green: 0.15, blue: 0.15))
                .offset(x: 0, y: 450)

            //徽宗左衣領
            Ellipse()
                .foregroundStyle(Color(red: 0.92, green: 0.88, blue: 0.75))
                .frame(width: 80, height: 120)
                .rotationEffect(.degrees(-60))
                .offset(x: -60, y: 180)

            //徽宗右衣領
            Ellipse()
                .foregroundStyle(Color(red: 0.92, green: 0.88, blue: 0.75))
                .frame(width: 80, height: 120)
                .rotationEffect(.degrees(60))
                .offset(x: 60, y: 180)

            //徽宗帽長條
            Rectangle()
                .frame(width: 500, height: 40)
                .foregroundColor(.black)
                .offset(x: 0, y: -50)

            //徽宗脖子
            Ellipse()
                .foregroundStyle(Color(red: 0.93, green: 0.78, blue: 0.60))
                .frame(width: 60, height: 80)
                .rotationEffect(.degrees(0))
                .offset(x: 0, y: 170)

            //徽宗的臉
            Capsule()
                .frame(width: 100, height: 300)
                .scaleEffect(x: 2.2, y: 1.25)
                .foregroundStyle(Color(red: 0.93, green: 0.78, blue: 0.60))
                .offset(x: 0, y: 0)

            //徽宗帽子下端
            Path { path in
                path.move(to: CGPoint(x: -65, y: -100))  // 左上角
                path.addLine(to: CGPoint(x: -38, y: 40))  // 左下角
                path.addLine(to: CGPoint(x: 180, y: 40))  // 右下角
                path.addLine(to: CGPoint(x: 200, y: -90))  // 右上角
                path.closeSubpath()
            }
            .fill(Color(red: 0.05, green: 0.05, blue: 0.05))  // 深墨色
            .frame(width: 140, height: 60)
            .offset(y: -130)

            //徽宗帽子上端
            Path { path in
                path.move(to: CGPoint(x: 80, y: -155))  // 左上角
                path.addLine(to: CGPoint(x: 80, y: -80))  // 左下角
                path.addLine(to: CGPoint(x: 200, y: -90))  // 右下角
                path.addLine(to: CGPoint(x: 210, y: -135))  // 右上下角
                path.addLine(to: CGPoint(x: 200, y: -150))  // 右上上角
                path.closeSubpath()
            }
            .fill(Color(red: 0.05, green: 0.05, blue: 0.05))
            .frame(width: 140, height: 60)
            .offset(y: -130)

            //徽宗左眉毛
            ZStack {
                Capsule()
                    .fill(Color(red: 0.2, green: 0.15, blue: 0.1))
                    .frame(width: 35, height: 5)
                    .rotationEffect(.degrees(-7))
                    .offset(x: -40, y: -65)
                Capsule()
                    .fill(Color(red: 0.2, green: 0.15, blue: 0.1))
                    .frame(width: 15, height: 5)
                    .rotationEffect(.degrees(-40))
                    .offset(x: -60, y: -60)
            }

            //徽宗右眉毛
            ZStack {
                Capsule()
                    .fill(Color(red: 0.2, green: 0.15, blue: 0.1))
                    .frame(width: 35, height: 5)
                    .rotationEffect(.degrees(7))
                    .offset(x: 40, y: -65)
                Capsule()
                    .fill(Color(red: 0.2, green: 0.15, blue: 0.1))
                    .frame(width: 15, height: 5)
                    .rotationEffect(.degrees(40))
                    .offset(x: 60, y: -60)
            }

            //徽宗左眼
            ZStack {
                //極左尾
                Ellipse()
                    .fill(Color(red: 0.95, green: 0.93, blue: 0.88))
                    .frame(width: 12, height: 7)
                    .rotationEffect(.degrees(0))
                    .offset(x: -52, y: -32)
                //左中下
                Ellipse()
                    .fill(Color(red: 0.95, green: 0.93, blue: 0.88))
                    .frame(width: 12, height: 7)
                    .rotationEffect(.degrees(0))
                    .offset(x: -45, y: -32)
                //左中上
                Ellipse()
                    .fill(Color(red: 0.95, green: 0.93, blue: 0.88))
                    .frame(width: 12, height: 7)
                    .rotationEffect(.degrees(-45))
                    .offset(x: -50, y: -35)
                //左主眼白
                Ellipse()
                    .fill(Color(red: 0.95, green: 0.93, blue: 0.88))
                    .frame(width: 32, height: 15)
                    .rotationEffect(.degrees(0))
                    .offset(x: -35, y: -35)
                //左瞳孔
                Ellipse()
                    .fill(Color(red: 0.05, green: 0.05, blue: 0.05))
                    .frame(width: 18, height: 15)
                    .rotationEffect(.degrees(0))
                    .offset(x: -35, y: -35)
            }

            //徽宗右眼
            ZStack {
                //極左尾
                Ellipse()
                    .fill(Color(red: 0.95, green: 0.93, blue: 0.88))
                    .frame(width: 12, height: 7)
                    .rotationEffect(.degrees(0))
                    .offset(x: 52, y: -32)
                //左中下
                Ellipse()
                    .fill(Color(red: 0.95, green: 0.93, blue: 0.88))
                    .frame(width: 12, height: 7)
                    .rotationEffect(.degrees(0))
                    .offset(x: 45, y: -32)
                //左中上
                Ellipse()
                    .fill(Color(red: 0.95, green: 0.93, blue: 0.88))
                    .frame(width: 12, height: 7)
                    .rotationEffect(.degrees(45))
                    .offset(x: 50, y: -35)
                //左主眼白
                Ellipse()
                    .fill(Color(red: 0.95, green: 0.93, blue: 0.88))
                    .frame(width: 32, height: 15)
                    .rotationEffect(.degrees(0))
                    .offset(x: 35, y: -35)
                //右瞳孔
                Ellipse()
                    .fill(Color(red: 0.05, green: 0.05, blue: 0.05))
                    .frame(width: 18, height: 15)
                    .rotationEffect(.degrees(0))
                    .offset(x: 35, y: -35)
            }

            //徽宗鼻子
            Path { path in
                path.move(to: CGPoint(x: 150, y: 120))
                path.addLine(to: CGPoint(x: 140, y: 170))
                path.addLine(to: CGPoint(x: 145, y: 175))
                path.addLine(to: CGPoint(x: 158, y: 170))
                path.addLine(to: CGPoint(x: 164, y: 173))
                path.addLine(to: CGPoint(x: 167, y: 167))
                path.addLine(to: CGPoint(x: 160, y: 160))

            }
            .stroke(
                Color(red: 0.8, green: 0.7, blue: 0.6),
                style: StrokeStyle(
                    lineWidth: 3,
                    lineCap: .round,
                    lineJoin: .round
                )
            )
            .opacity(0.7)
            .offset(x: 140, y: 250)

            //徽宗嘴巴組合
            ZStack {

                //徽宗嘴唇
                Path { path in
                    // 從左嘴角起點
                    path.move(to: CGPoint(x: 135, y: 195))
                    // 上唇中央
                    path.addLine(to: CGPoint(x: 150, y: 193))
                    // 右嘴角
                    path.addLine(to: CGPoint(x: 165, y: 195))
                    // 下唇右側
                    path.addLine(to: CGPoint(x: 160, y: 203))
                    // 下唇中央
                    path.addLine(to: CGPoint(x: 150, y: 205))
                    // 下唇左側
                    path.addLine(to: CGPoint(x: 140, y: 203))
                    path.closeSubpath()
                }
                .fill(Color(red: 0.5, green: 0.25, blue: 0.2))

                //徽宗唇縫
                Path { path in
                    path.move(to: CGPoint(x: 137, y: 199))
                    path.addLine(to: CGPoint(x: 163, y: 199))
                }
                .stroke(Color(red: 0.3, green: 0.15, blue: 0.1), lineWidth: 1)

                //徽宗左鬍鬚
                Path { path in
                    path.move(to: CGPoint(x: 175, y: 200))
                    path.addLine(to: CGPoint(x: 168, y: 192))
                    path.addLine(to: CGPoint(x: 160, y: 190))
                }
                .stroke(
                    Color(red: 0.15, green: 0.1, blue: 0.1),
                    style: StrokeStyle(lineWidth: 2, lineCap: .round)
                )

                //徽宗右鬍鬚
                Path { path in
                    path.move(to: CGPoint(x: 125, y: 200))
                    path.addLine(to: CGPoint(x: 132, y: 192))
                    path.addLine(to: CGPoint(x: 140, y: 190))
                }
                .stroke(
                    Color(red: 0.15, green: 0.1, blue: 0.1),
                    style: StrokeStyle(lineWidth: 2, lineCap: .round)
                )

                //徽宗下鬍鬚
                Path { path in
                    path.move(to: CGPoint(x: 150, y: 210))
                    path.addLine(to: CGPoint(x: 150, y: 220))
                }
                .stroke(
                    Color(red: 0.15, green: 0.1, blue: 0.1),
                    style: StrokeStyle(lineWidth: 2, lineCap: .round)
                )

            }
            .opacity(0.5)
            .offset(x: 140, y: 270)

            //徽宗鬍子

            //

        }
        .modifier(HuizongMotionModifier())
    }
}

// MARK: - 徽宗動態修飾符（以附加程式碼方式實現動畫，不更動原繪製代碼）
struct HuizongMotionModifier: ViewModifier {
    // 點擊切換：開始動 <-> 停止動
    @State private var isMoving = false

    // 身體動態：呼吸與搖曳
    @State private var breathPhase = false
    @State private var swayPhase = false

    // 面部表情動態：眼神轉向、眉毛挑動、自然眨眼
    @State private var eyeLookOffset: CGFloat = 0
    @State private var eyebrowLift: CGFloat = 0
    @State private var isBlinking = false

    func body(content: Content) -> some View {
        content
            // 附加動態面部表情（覆蓋於原始五官上方，動態時生動呈現，停止時完全還原）
            .overlay(
                HuizongFaceOverlay(
                    isMoving: isMoving,
                    isBlinking: isBlinking,
                    eyeLookOffset: eyeLookOffset,
                    eyebrowLift: eyebrowLift,
                    breathPhase: breathPhase
                )
            )
            // 身體呼吸起伏與微縮放
            .scaleEffect(isMoving && breathPhase ? 1.03 : 1.0)
            .offset(y: isMoving && breathPhase ? -12 : 0)
            // 長翅幞頭隨風微動（左右輕晃）
            .rotationEffect(.degrees(isMoving && swayPhase ? -1.8 : 1.8), anchor: .bottom)
            // 呼吸循環動畫（停止時平滑回歸靜止）
            .animation(
                isMoving
                    ? .easeInOut(duration: 2.2).repeatForever(autoreverses: true)
                    : .easeInOut(duration: 0.5),
                value: breathPhase
            )
            // 搖曳循環動畫（停止時平滑回歸靜止）
            .animation(
                isMoving
                    ? .easeInOut(duration: 3.2).repeatForever(autoreverses: true)
                    : .easeInOut(duration: 0.5),
                value: swayPhase
            )
            // 畫面下方提供優雅的狀態操作提示
            .overlay(alignment: .bottom) {
                HStack(spacing: 8) {
                    Image(systemName: isMoving ? "pause.fill" : "play.fill")
                        .font(.system(size: 13, weight: .bold))
                    Text(isMoving ? "宋徽宗活動中（點擊畫面停止）" : "宋徽宗已靜止（點擊畫面動起來）")
                        .font(.system(size: 14, weight: .medium, design: .serif))
                }
                .foregroundStyle(Color(red: 0.2, green: 0.15, blue: 0.1))
                .padding(.horizontal, 16)
                .padding(.vertical, 9)
                .background(
                    Capsule()
                        .fill(Color(red: 0.95, green: 0.92, blue: 0.85).opacity(0.92))
                        .shadow(color: Color.black.opacity(0.15), radius: 6, x: 0, y: 3)
                )
                .padding(.bottom, 28)
                .animation(.easeInOut(duration: 0.3), value: isMoving)
            }
            .contentShape(Rectangle())
            // 點擊切換：點一下開始動，再點一下停止動
            .onTapGesture {
                toggleMotion()
            }
            // 異步任務：靈活眼神與挑眉微動
            .task(id: isMoving) {
                guard isMoving else {
                    eyeLookOffset = 0
                    eyebrowLift = 0
                    return
                }
                while !Task.isCancelled && isMoving {
                    try? await Task.sleep(nanoseconds: 1_800_000_000)
                    guard isMoving && !Task.isCancelled else { break }
                    withAnimation(.easeInOut(duration: 0.75)) {
                        eyeLookOffset = CGFloat.random(in: -3.5...3.5)
                        eyebrowLift = CGFloat.random(in: -3.5...4.5)
                    }
                }
            }
            // 異步任務：自然眨眼週期
            .task(id: isMoving) {
                guard isMoving else {
                    isBlinking = false
                    return
                }
                while !Task.isCancelled && isMoving {
                    let delay = UInt64.random(in: 2_200_000_000...3_500_000_000)
                    try? await Task.sleep(nanoseconds: delay)
                    guard isMoving && !Task.isCancelled else { break }

                    withAnimation(.easeIn(duration: 0.10)) {
                        isBlinking = true
                    }
                    try? await Task.sleep(nanoseconds: 140_000_000)
                    guard isMoving && !Task.isCancelled else {
                        isBlinking = false
                        break
                    }
                    withAnimation(.easeOut(duration: 0.12)) {
                        isBlinking = false
                    }
                }
            }
    }

    private func toggleMotion() {
        withAnimation(.easeInOut(duration: 0.5)) {
            isMoving.toggle()
            if isMoving {
                breathPhase = true
                swayPhase = true
            } else {
                breathPhase = false
                swayPhase = false
                eyeLookOffset = 0
                eyebrowLift = 0
                isBlinking = false
            }
        }
    }
}

// MARK: - 徽宗動態面部表情圖層
struct HuizongFaceOverlay: View {
    let isMoving: Bool
    let isBlinking: Bool
    let eyeLookOffset: CGFloat
    let eyebrowLift: CGFloat
    let breathPhase: Bool

    // 與原始繪製相同之色系定義
    private let skinColor = Color(red: 0.93, green: 0.78, blue: 0.60)
    private let browColor = Color(red: 0.2, green: 0.15, blue: 0.1)
    private let eyeWhiteColor = Color(red: 0.95, green: 0.93, blue: 0.88)
    private let pupilColor = Color(red: 0.05, green: 0.05, blue: 0.05)

    var body: some View {
        ZStack {
            // 臉頰紅暈（隨呼吸微顯帝王氣色）
            ZStack {
                Circle()
                    .fill(Color(red: 0.95, green: 0.45, blue: 0.45).opacity(0.24))
                    .frame(width: 48, height: 26)
                    .blur(radius: 6)
                    .offset(x: -45, y: 15)

                Circle()
                    .fill(Color(red: 0.95, green: 0.45, blue: 0.45).opacity(0.24))
                    .frame(width: 48, height: 26)
                    .blur(radius: 6)
                    .offset(x: 45, y: 15)
            }
            .scaleEffect(breathPhase ? 1.08 : 0.95)

            // 動態眉毛（覆蓋原眉毛並展現挑眉、揚眉、微蹙等生動表情）
            ZStack {
                // 遮蔽底層原靜態眉毛之底色區塊
                Capsule()
                    .fill(skinColor)
                    .frame(width: 58, height: 24)
                    .rotationEffect(.degrees(-8))
                    .offset(x: -44, y: -64)

                Capsule()
                    .fill(skinColor)
                    .frame(width: 58, height: 24)
                    .rotationEffect(.degrees(8))
                    .offset(x: 44, y: -64)

                // 左動態眉毛
                ZStack {
                    Capsule()
                        .fill(browColor)
                        .frame(width: 35, height: 5)
                        .rotationEffect(.degrees(-7 + (eyebrowLift * 1.5)))
                        .offset(x: -40, y: -65 + eyebrowLift)
                    Capsule()
                        .fill(browColor)
                        .frame(width: 15, height: 5)
                        .rotationEffect(.degrees(-40 + (eyebrowLift * 2.0)))
                        .offset(x: -60, y: -60 + eyebrowLift)
                }

                // 右動態眉毛（微不對稱挑動，靈動生動）
                ZStack {
                    Capsule()
                        .fill(browColor)
                        .frame(width: 35, height: 5)
                        .rotationEffect(.degrees(7 - (eyebrowLift * 1.2)))
                        .offset(x: 40, y: -65 + (eyebrowLift * 0.7))
                    Capsule()
                        .fill(browColor)
                        .frame(width: 15, height: 5)
                        .rotationEffect(.degrees(40 - (eyebrowLift * 1.8)))
                        .offset(x: 60, y: -60 + (eyebrowLift * 0.7))
                }
            }

            // 動態眼神與眨眼
            ZStack {
                // 遮蔽底層原靜態眼睛之底色區塊
                Capsule()
                    .fill(skinColor)
                    .frame(width: 52, height: 28)
                    .offset(x: -38, y: -34)

                Capsule()
                    .fill(skinColor)
                    .frame(width: 52, height: 28)
                    .offset(x: 38, y: -34)

                if isBlinking {
                    // 眨眼閉眼線條（自然微彎眼線）
                    Capsule()
                        .fill(browColor)
                        .frame(width: 26, height: 3)
                        .rotationEffect(.degrees(-4))
                        .offset(x: -36, y: -33)

                    Capsule()
                        .fill(browColor)
                        .frame(width: 26, height: 3)
                        .rotationEffect(.degrees(4))
                        .offset(x: 36, y: -33)
                } else {
                    // 左眼（眼白 + 靈活轉動瞳孔 + 瞳孔高光）
                    ZStack {
                        Ellipse()
                            .fill(eyeWhiteColor)
                            .frame(width: 12, height: 7)
                            .offset(x: -52, y: -32)
                        Ellipse()
                            .fill(eyeWhiteColor)
                            .frame(width: 12, height: 7)
                            .offset(x: -45, y: -32)
                        Ellipse()
                            .fill(eyeWhiteColor)
                            .frame(width: 12, height: 7)
                            .rotationEffect(.degrees(-45))
                            .offset(x: -50, y: -35)
                        Ellipse()
                            .fill(eyeWhiteColor)
                            .frame(width: 32, height: 15)
                            .offset(x: -35, y: -35)

                        // 左眼珠靈動轉向
                        Ellipse()
                            .fill(pupilColor)
                            .frame(width: 18, height: 15)
                            .offset(x: -35 + eyeLookOffset, y: -35)

                        // 靈動高光光點
                        Circle()
                            .fill(Color.white.opacity(0.85))
                            .frame(width: 3.5, height: 3.5)
                            .offset(x: -37 + eyeLookOffset, y: -37)
                    }

                    // 右眼（眼白 + 靈活轉動瞳孔 + 瞳孔高光）
                    ZStack {
                        Ellipse()
                            .fill(eyeWhiteColor)
                            .frame(width: 12, height: 7)
                            .offset(x: 52, y: -32)
                        Ellipse()
                            .fill(eyeWhiteColor)
                            .frame(width: 12, height: 7)
                            .offset(x: 45, y: -32)
                        Ellipse()
                            .fill(eyeWhiteColor)
                            .frame(width: 12, height: 7)
                            .rotationEffect(.degrees(45))
                            .offset(x: 50, y: -35)
                        Ellipse()
                            .fill(eyeWhiteColor)
                            .frame(width: 32, height: 15)
                            .offset(x: 35, y: -35)

                        // 右眼珠靈動轉向
                        Ellipse()
                            .fill(pupilColor)
                            .frame(width: 18, height: 15)
                            .offset(x: 35 + eyeLookOffset, y: -35)

                        // 靈動高光光點
                        Circle()
                            .fill(Color.white.opacity(0.85))
                            .frame(width: 3.5, height: 3.5)
                            .offset(x: 33 + eyeLookOffset, y: -37)
                    }
                }
            }
        }
        // 停止時漸隱，無縫還原原始靜態畫作
        .opacity(isMoving ? 1.0 : 0.0)
        .animation(.easeInOut(duration: 0.4), value: isMoving)
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
