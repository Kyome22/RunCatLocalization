/*
 RunnerType.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/04/01.
 
*/

import RunCatLocalization

enum RunnerType: String, Identifiable {
    case catA = "cat"
    case catB = "b_cat"
    case catC = "c_cat"
    case catTail = "tail_cat"
    case mockNyanCat = "cat_nyan_mock"
    case parrot = "parrot"
    case human = "human"
    case pushUp = "up_push"
    case sitUp = "up_sit"
    case rubberDuck = "duck_rubber"
    case city = "city"
    case sausage = "sausage"
    case dots = "dots"
    case reactor = "reactor"
    case slime = "slime"
    case fishman = "fishman"
    case sheep = "sheep"
    case rotatingSushi = "sushi_rotating"
    case partyPeople = "people_party"
    case dogeza = "dogeza"
    case triforce = "triforce"
    // ----Animal-----------------------------
    case cheetah = "cheetah"
    case dog = "dog"
    case puppy = "puppy"
    case rabbit = "rabbit"
    case frog = "frog"
    case bird = "bird"
    case penguin = "penguin"
    case dolphin = "dolphin"
    case dragon = "dragon"
    case owl = "owl"
    case dinosaur = "dinosaur"
    case terrier = "terrier"
    case hedgehog = "hedgehog"
    case horse = "horse"
    case penguin2 = "penguin2"
    case hamsterWheel = "wheel_hamster"
    case octopus = "octopus"
    case chameleon = "chameleon"
    case chicken = "chicken"
    case mouse = "mouse"
    case pig = "pig"
    case fox = "fox"
    case whale = "whale"
    case otter = "otter"
    case squirrel = "squirrel"
    case butterfly = "butterfly"
    case greyhound = "greyhound"
    case welshCorgi = "corgi_welsh"
    // ----Inanimate--------------------------
    case cogwheel = "cogwheel"
    case bonfire = "bonfire"
    case drop = "drop"
    case rocket = "rocket"
    case pendulum = "pendulum"
    case cradle = "cradle"
    case sineCurve = "curve_sine"
    case pulse = "pulse"
    case coffee = "coffee"
    case steamLocomotive = "locomotive_steam"
    case tapiocaDrink = "drink_tapioca"
    case frypan = "frypan"
    case factory = "factory"
    case engine = "engine"
    case earth = "earth"
    // ----Seasonal---------------------------
    case reindeerSleigh = "sleigh_reindeer"
    case snowman = "snowman"
    case windChime = "chime_wind"
    case sparkler = "sparkler"
    case jackOLantern = "lantern_o_jack"
    case ghost = "ghost"
    case mochi = "mochi"
    // ----Special----------------------------
    case goldenCat = "cat_golden"
    case metalClusterCat = "cat_cluster_metal"
    case flashCat = "cat_flash"
    case manekiNeko = "neko_maneki"
    case sushi = "sushi"
    case gamingCat = "cat_gaming"
    case partyParrot = "parrot_party"
    case uhooi = "uhooi"
    case entaku = "entaku"
    // ----All Runners------------------------
    case allRunners = "runners_all"
    // ----Self Made--------------------------
    case selfMade = "made_self"

    var id: String { rawValue }

    var name: RCL.RunnerName? {
        RCL.RunnerName(rawValue: rawValue)
    }
}
