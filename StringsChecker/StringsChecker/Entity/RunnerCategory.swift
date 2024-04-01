/*
 RunnerCategory.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/04/01.
 
*/

import RunCatLocalization

enum RunnerCategory: String, Identifiable, CaseIterable {
    case special
    case `default`
    case animal
    case inanimate
    case seasonal
    case selfMade

    var id: String { rawValue }

    var label: RCL.Dashboard {
        return switch self {
        case .special: .categorySpecial
        case .default: .categoryDefault
        case .animal: .categoryAnimal
        case .inanimate: .categoryInanimate
        case .seasonal: .categorySeasonal
        case .selfMade: .categorySelfMade
        }
    }

    var runners: [RunnerType] {
        return switch self {
        case .special: RunnerCategory.specialAllCases
        case .default: RunnerCategory.defaultAllCases
        case .animal: RunnerCategory.animalAllCases
        case .inanimate: RunnerCategory.inanimateAllCases
        case .seasonal: RunnerCategory.seasonalAllCases
        case .selfMade: RunnerCategory.selfMadeAllCases
        }
    }

    static let specialAllCases: [RunnerType] = [
        .goldenCat,
        .metalClusterCat,
        .flashCat,
        .manekiNeko,
        .sushi,
        .gamingCat,
        .partyParrot,
        .uhooi,
        .entaku,
    ]

    static let defaultAllCases: [RunnerType] = [
        .catA,
        .catB,
        .catC,
        .catTail,
        .mockNyanCat,
        .parrot,
        .human,
        .pushUp,
        .sitUp,
        .rubberDuck,
        .city,
        .sausage,
        .dots,
        .reactor,
        .slime,
        .fishman,
        .sheep,
        .rotatingSushi,
        .partyPeople,
        .dogeza,
        .triforce,
    ]

    static let animalAllCases: [RunnerType] = [
        .cheetah,
        .dog,
        .puppy,
        .rabbit,
        .frog,
        .bird,
        .penguin,
        .dolphin,
        .dragon,
        .owl,
        .dinosaur,
        .terrier,
        .hedgehog,
        .horse,
        .penguin2,
        .hamsterWheel,
        .octopus,
        .chameleon,
        .chicken,
        .mouse,
        .pig,
        .fox,
        .whale,
        .otter,
        .squirrel,
        .butterfly,
        .greyhound,
        .welshCorgi,
    ]

    static let inanimateAllCases: [RunnerType] = [
        .cogwheel,
        .bonfire,
        .drop,
        .rocket,
        .pendulum,
        .cradle,
        .sineCurve,
        .pulse,
        .coffee,
        .steamLocomotive,
        .tapiocaDrink,
        .frypan,
        .factory,
        .engine,
        .earth,
    ]

    static let seasonalAllCases: [RunnerType] = [
        .reindeerSleigh,
        .snowman,
        .windChime,
        .sparkler,
        .jackOLantern,
        .ghost,
        .mochi,
    ]

    static let selfMadeAllCases: [RunnerType] = [
        .allRunners,
        .selfMade
    ]
}
