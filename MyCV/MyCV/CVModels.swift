import Foundation

struct ExperienceItem: Identifiable {
    let id = UUID()
    let role: String
    let company: String
    let startDate: String
    let endDate: String
}

struct CourseItem: Identifiable {
    let id = UUID()
    let name: String
    let company: String
    let startDate: String
    let endDate: String
}

struct SkillItem: Identifiable {
    let id = UUID()
    let name: String
}

struct EducationItem: Identifiable {
    let id = UUID()
    let specialization: String
    let university: String
    let startDate: String
    let endDate: String
}

struct LanguageItem: Identifiable {
    let id = UUID()
    let name: String
    let level: String
}

enum MyCVData {
    static let experience: [ExperienceItem] = [
        ExperienceItem(
            role: "Administrator",
            company: "City Multiprofile Hospital 18",
            startDate: "09.25",
            endDate: "11.25"
        ),
        ExperienceItem(
            role: "Medical Statistician,",
            company: "City Multiprofile Hospital 18",
            startDate: "06.25",
            endDate: "08.25"
        ),
        ExperienceItem(
            role: "Computer Typing Operator",
            company: "City Multiprofile Hospital 18",
            startDate: "09.24",
            endDate: "05.25"
        ),
        ExperienceItem(
            role: "Lead Computer Software Engineer",
            company: "North-Eastern Regional Center of the Documentation Insurance Fund",
            startDate: "01.23",
            endDate: "08.23"
        ),
        ExperienceItem(
            role: "Freelance iOS Developer",
            company: "Meduzzen",
            startDate: "08.22",
            endDate: "08.22"
        ),
        ExperienceItem(
            role: "Junior Geodata Technician",
            company: "Intetics",
            startDate: "11.21",
            endDate: "12.21"
        ),
        ExperienceItem(
            role: "User Interface Tester",
            company: "Uitrial",
            startDate: "07.21",
            endDate: "12.21"
        )
    ]
    
    static let courses: [CourseItem] = [
        CourseItem(
            name: "Data Quality Engineering",
            company: "EPAM",
            startDate: "03.25",
            endDate: "06.25"
        ),
        CourseItem(
            name: "DB.PL/SQL",
            company: "Unity-Bars",
            startDate: "10.23",
            endDate: "11.23"
        ),
        CourseItem(
            name: "iOS",
            company: "Web Academy",
            startDate: "04.23",
            endDate: "07.23"
        ),
        CourseItem(
            name: "DB",
            company: "Distributed Lab",
            startDate: "09.22",
            endDate: "12.22"
        )
    ]
    
    static let skills: [SkillItem] = [
        SkillItem(name: "Swift"),
        SkillItem(name: "Foundation"),
        SkillItem(name: "UIKit"),
        SkillItem(name: "SwiftUI"),
        SkillItem(name: "SQL"),
        SkillItem(name: "Postman"),
        SkillItem(name: "Jira"),
        SkillItem(name: "Confluence")
    ]
    
    static let education: [EducationItem] = [
        EducationItem(
            specialization: "Master's degree, artificial intelligence systems",
            university: "NURE",
            startDate:"2018",
            endDate: "2020"
        ),
        EducationItem(
            specialization: "Bachelor's degree, computer science",
            university: "NURE",
            startDate:"2014",
            endDate: "2018"
        )
    ]
    
    static let language: [LanguageItem] = [
        LanguageItem(
            name: "English",
            level: "intermediate"
        ),
        LanguageItem(
            name: "Ukrainian",
            level: "native"
        )
    ]
}
