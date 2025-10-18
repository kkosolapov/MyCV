import SwiftUI

struct ContentView: View {
    @State private var isExperienceExpanded = true
    @State private var isCourseExpanded = true
    @State private var isSkillsExpanded = true
    @State private var isEducationExpanded = true
    @State private var isLanguageExpanded = true
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    
                    headerSection
                    
                    DisclosureSection(
                        isExpanded: $isExperienceExpanded,
                        title: "Experience",
                        systemImage: "briefcase.fill",
                        items: MyCVData.experience
                    ) { item in
                        ExperienceRow(item: item)
                            .cardStyle()
                    }
                    
                    DisclosureSection(
                        isExpanded: $isCourseExpanded,
                        title: "Courses",
                        systemImage: "book",
                        items: MyCVData.courses
                    ) { item in
                        CourseRow(item: item)
                            .cardStyle()
                    }
                    
                    DisclosureSection(
                        isExpanded: $isSkillsExpanded,
                        title: "Skills",
                        systemImage: "hammer",
                        items: MyCVData.skills
                    ) { item in
                        SkillRow(item: item)
                            .cardStyle()
                    }
                    
                    DisclosureSection(
                        isExpanded: $isEducationExpanded,
                        title: "Education",
                        systemImage: "graduationcap",
                        items: MyCVData.education
                    ) { item in
                        EducationRow(item: item)
                            .cardStyle()
                    }
                    
                    DisclosureSection(
                        isExpanded: $isLanguageExpanded,
                        title: "Languages",
                        systemImage: "globe",
                        items: MyCVData.language
                    ) { item in
                        LanguageRow(item: item)
                            .cardStyle()
                    }
                    
                }
                .padding()
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("My CV")
        }
    }
    
    private var headerSection: some View {
        HStack(alignment: .center, spacing: 16) {
            ZStack {
                Circle()
                    .fill(LinearGradient(colors: [.blue.opacity(0.8), .purple.opacity(0.8)], startPoint: .topLeading, endPoint: .bottomTrailing))
                Text("K")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundStyle(.white)
            }
            .frame(width: 72, height: 72)
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Avatar with initial K")
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Kostiantyn Kosolapov")
                    .font(.title2).bold()
                
                HStack(spacing: 8) {
                    Image(systemName: "envelope.fill")
                    Link("kkosolapov@gmail.com", destination: URL(string: "mailto:kkosolapov@gmail.com")!)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .accessibilityElement(children: .combine)
                .accessibilityLabel("Email: kkosolapov at gmail dot com")
            }
            Spacer()
        }
        .cardStyle()
    }
}

private struct DisclosureSection<Item: Identifiable, Row: View>: View {
    @Binding var isExpanded: Bool
    let title: String
    let systemImage: String
    let items: [Item]
    @ViewBuilder var row: (Item) -> Row
    
    var body: some View {
        DisclosureGroup(isExpanded: $isExpanded) {
            LazyVStack(spacing: 12) {
                ForEach(items) { item in
                    row(item)
                }
            }
            .padding(.top, 8)
        } label: {
            SectionHeader(title: title, systemImage: systemImage)
        }
    }
}

private extension View {
    func cardStyle() -> some View {
        self
            .padding(14)
            .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 14, style: .continuous))
    }
}

#Preview {
    ContentView()
}
