import SwiftUI

struct SectionHeader: View {
    let title: String
    let systemImage: String
    
    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: systemImage)
                .foregroundColor(.accentColor)
            Text(title)
                .font(.title2).bold()
            Spacer()
        }
        .padding(.horizontal, 4)
        .padding(.top, 4)
        .accessibilityAddTraits(.isHeader)
    }
}

struct ExperienceRow: View {
    let item: ExperienceItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .firstTextBaseline) {
                Text(item.role).font(.headline)
                Spacer()
                Text("\(item.startDate) – \(String(describing: item.endDate))")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Text(item.company)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
    }
}

struct CourseRow: View {
    let item: CourseItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .firstTextBaseline) {
                Text(item.name).font(.headline)
                Spacer()
                Text("\(item.startDate) – \(item.endDate)")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Text(item.company)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
    }
}

struct SkillRow: View {
    let item: SkillItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .firstTextBaseline) {
                Text(item.name).font(.headline)
                Spacer()
            }
        }
    }
}

struct EducationRow: View {
    let item: EducationItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .firstTextBaseline) {
                Text(item.specialization).font(.headline)
                Spacer()
                Text("\(item.startDate) – \(item.endDate)")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Text(item.university)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
    }
}

struct LanguageRow: View {
    let item: LanguageItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .firstTextBaseline) {
                Text(item.name).font(.headline)
                Spacer()
                Text("\(item.level)")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
            }
        }
    }
}
