//
//  Personality.swift
//  Persona Book
//
//  Created by peo on 2022/04/11.
//

import Foundation

enum Personality: Int, CaseIterable, Codable {
    case ISTP
    case ISFP
    case INTP
    case INFP
    case ISTJ
    case INTJ
    case ISFJ
    case INFJ
    case ESTP
    case ESFP
    case ENTP
    case ENFP
    case ESTJ
    case ENTJ
    case ESFJ
    case ENFJ
    
    var title: String {
        switch self {
        case .ISTP:
            return "ISTP-A/T"
        case .ISFP:
            return "ISFP-A/T"
        case .INTP:
            return "INTP-A/T"
        case .INFP:
            return "INFP-A/T"
        case .ISTJ:
            return "ISTJ-A/T"
        case .INTJ:
            return "INTJ-A/T"
        case .ISFJ:
            return "ISFJ-A/T"
        case .INFJ:
            return "INFJ-A/T"
        case .ESTP:
            return "ESTP-A/T"
        case .ESFP:
            return "ESFP-A/T"
        case .ENTP:
            return "ENTP-A/T"
        case .ENFP:
            return "ENFP-A/T"
        case .ESTJ:
            return "ESTJ-A/T"
        case .ENTJ:
            return "ENTJ-A/T"
        case .ESFJ:
            return "ESFJ-A/T"
        default:
            return "ENFJ-A/T"
        }
    }
    
    var soulMate: [Personality] {
        switch self {
        case .ISTP:
            return [.ESFJ, .ESTJ]
        case .ISFP:
            return [.ENFJ, .ESFJ, .ESTJ]
        case .INTP:
            return [.ENTJ, .ESTJ]
        case .INFP:
            return [.ENFJ, .ENTJ]
        case .ISTJ:
            return [.ESFP, .ESTP]
        case .INTJ:
            return [.ENFP, .ENTP]
        case .ISFJ:
            return [.ESFP, .ESTP]
        case .INFJ:
            return [.ENFP, .ENTP]
        case .ESTP:
            return [.ISFJ, .ISTJ]
        case .ESFP:
            return [.ISFJ, .ISTJ]
        case .ENTP:
            return [.INFJ, .INTJ]
        case .ENFP:
            return [.INFJ, .INTJ]
        case .ESTJ:
            return [.ISFP, .ISTP]
        case .ENTJ:
            return [.INFP, .INTP]
        case .ESFJ:
            return [.ISFP, .ISTP]
        default:
            return [.INFP, .ISFP]
        }
    }
    var goodRelation: [Personality] {
        switch self {
        case .ISTP:
            return []
        case .ISFP:
            return []
        case .INTP:
            return [.INFP, .ENFP, .INFJ, .ENFJ, .INTJ, .INTP, .ENTP]
        case .INFP:
            return [.INFP, .ENFP, .INFJ, .INTJ, .INTP, .ENTP]
        case .ISTJ:
            return [.ISFJ, .ESFJ, .ISTJ, .ESTJ]
        case .INTJ:
            return [.INFP, .INFJ, .ENFJ, .INTJ, .ENTJ, .INTP]
        case .ISFJ:
            return [.ISFJ, .ESFJ, .ISTJ, .ESTJ]
        case .INFJ:
            return [.INFP, .INFJ, .ENFJ, .INTJ, .ENTJ, .INTP]
        case .ESTP:
            return []
        case .ESFP:
            return []
        case .ENTP:
            return [.INFP, .ENFP, .ENFJ, .ENTJ, .INTP, .ENTP]
        case .ENFP:
            return [.INFP, .ENFP, .ENFJ, .ENTJ, .INTP, .ENTP]
        case .ESTJ:
            return [.ISFJ, .ESFJ, .ISTJ, .ESTJ]
        case .ENTJ:
            return [.ENFP, .INFJ, .ENFJ, .INTJ, .ENTJ, .ENTP]
        case .ESFJ:
            return [.ISFJ, .ESFJ, .ISTJ, .ESTJ]
        default:
            return [.ENFP, .INFJ, .ENFJ, .INTJ, .ENTJ, .INTP, .ENTP]
        }
    }
    var badRelation: [Personality] {
        switch self {
        case .ISTP:
            return [.INFP, .ENFP, .INFJ, .ENFJ]
        case .ISFP:
            return [.INFP, .ENFP, .INFJ]
        case .INTP:
            return []
        case .INFP:
            return [.ISFP, .ESFP, .ISTP, .ESTP, .ISFJ, .ESFJ, .ISTJ, .ESTJ]
        case .ISTJ:
            return [.INFP, .ENFP, .INFJ, .ENFJ]
        case .INTJ:
            return []
        case .ISFJ:
            return [.INFP, .ENFP, .INFJ, .ENFJ]
        case .INFJ:
            return [.ISFP, .ESFP, .ISTP, .ESTP, .ISFJ, .ESFJ, .ISTJ, .ESTJ]
        case .ESTP:
            return [.INFP, .ENFP, .INFJ, .ENFJ]
        case .ESFP:
            return [.INFP, .ENFP, .INFJ, .ENFJ]
        case .ENTP:
            return []
        case .ENFP:
            return [.ISFP, .ESFP, .ISTP, .ESTP, .ISFJ, .ESFJ, .ISTJ, .ESTJ]
        case .ESTJ:
            return [.INFP, .ENFP, .INFJ, .ENFJ]
        case .ENTJ:
            return []
        case .ESFJ:
            return [.INFP, .ENFP, .INFJ, .ENFJ]
        default:
            return [.ESFP, .ISTP, .ESTP, .ISFJ, .ESFJ, .ISTJ, .ESTJ]
        }
    }
}
