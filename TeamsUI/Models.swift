//
//  Models.swift
//  TeamsUI
//
//  Created by Carlos Cabanero on 1/27/24.
//

import Foundation

struct UserProfileModel {
    var id: UUID
    var name: String
    var firstName: String
    var lastName: String
    var created: Date
    var updated: Date
    var email: String
    var org: UserOrgMemberInfo
    var sessions: [UserSessionDisplay]
    
    // let delegate: UserProfileInteractions
}

struct UserOrgMemberInfo {
    var name: String
    var orgId: UUID
    var state: UserState
    var role: OrgRole
}

enum OrgRole: String {
    // Only one user can be billable admin, and is not an option to be changed
    // inside the app. Only displayed.
    case billableAdmin = "billable_admin"
    case admin = "admin"
    case directMember = "direct_member"
}

enum UserState: String {
    case invited
    case active
    case inactive
    case suspended
}

struct OrgProfileModel {
    var name: String
    var created: Date
    var updated: Date
    
    // let delegate: OrgProfileInteractions
}

struct OrgMemberProfileModel {
    var role: OrgRole
    var state: UserState
    var id: UUID
    var name: String
    var firstName: String
    var lastName: String
    var created: Date
    var updated: Date
    var email: String
}

struct UserSessionDisplay {
    var platform: String
    var lastSeen: String // "X days ago..."
    var name: String
}

struct UserSessionsList {
    var sessions: [UserSessionDisplay]
}

struct OrgMembersList {
    var members: [OrgMemberProfileModel]
}

class DataPreview {
    static var acme = OrgProfileModel(name: "Acme, Inc", created: date("2023-01-01T12:00:00Z"), updated: date("2023-12-31T18:30:00Z"))
    
    static var eva = UserProfileModel(id: UUID(),
                                       name: "Eva Chen",
                                       firstName: "Eva",
                                       lastName: "Chen",
                                       created: date("2023-06-15T13:20:00Z"),
                                       updated: date("2023-12-10T16:05:00Z"),
                                       email: "eva.chen@acme.com", org: UserOrgMemberInfo(name: "Acme, Inc.", orgId: UUID(), state: .active, role: .admin),
                                      sessions: eva_sessions.sessions)
    
    static var eva_sessions = UserSessionsList(sessions:  [UserSessionDisplay(platform: "iOS", lastSeen: "Now", name: "iPad")])
    
    static func date(_ dateString: String) -> Date {
        ISO8601DateFormatter().date(from: dateString)!
    }
}
