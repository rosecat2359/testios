import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 0.96, green: 0.97, blue: 1.0),
                    Color(red: 0.89, green: 0.93, blue: 1.0)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 20) {
                Image(systemName: "sparkles")
                    .font(.system(size: 44, weight: .semibold))
                    .foregroundStyle(.blue)
                    .padding(18)
                    .background(.white.opacity(0.9), in: Circle())
                    .shadow(color: .black.opacity(0.08), radius: 20, x: 0, y: 10)

                Text("iOS 示例应用")
                    .font(.system(size: 34, weight: .bold, design: .rounded))
                    .foregroundStyle(.primary)

                Text("这是一个无功能的展示型 App，用来演示基础布局、卡片、按钮和列表样式。")
                    .font(.system(size: 16, weight: .regular, design: .rounded))
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)

                VStack(spacing: 14) {
                    InfoCard(title: "首页", subtitle: "静态展示区域", icon: "house.fill")
                    InfoCard(title: "发现", subtitle: "示例内容面板", icon: "safari.fill")
                    InfoCard(title: "我的", subtitle: "预留用户区域", icon: "person.fill")
                }
                .padding(.horizontal, 20)

                HStack(spacing: 12) {
                    ActionPill(title: "按钮一")
                    ActionPill(title: "按钮二")
                }
                .padding(.top, 4)
            }
            .padding(.vertical, 40)
        }
    }
}

private struct InfoCard: View {
    let title: String
    let subtitle: String
    let icon: String

    var body: some View {
        HStack(spacing: 14) {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(.white)
                .frame(width: 44, height: 44)
                .background(.blue, in: RoundedRectangle(cornerRadius: 14, style: .continuous))

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.system(size: 17, weight: .semibold, design: .rounded))
                Text(subtitle)
                    .font(.system(size: 13, weight: .regular, design: .rounded))
                    .foregroundStyle(.secondary)
            }

            Spacer()
        }
        .padding(16)
        .background(.white.opacity(0.92), in: RoundedRectangle(cornerRadius: 22, style: .continuous))
        .shadow(color: .black.opacity(0.06), radius: 16, x: 0, y: 8)
    }
}

private struct ActionPill: View {
    let title: String

    var body: some View {
        Text(title)
            .font(.system(size: 14, weight: .semibold, design: .rounded))
            .foregroundStyle(.white)
            .padding(.horizontal, 18)
            .padding(.vertical, 12)
            .background(.black.opacity(0.8), in: Capsule())
    }
}

#Preview {
    ContentView()
}
