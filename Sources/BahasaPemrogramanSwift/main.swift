//
//  main.swift
//
//
//  Created by Zulwiyoza Putra on 04/10/20.
//


import Foundation
import Publish
import SplashPublishPlugin


// This will generate your website using the built-in Foundation theme:
try SwiftWebsite().publish(
    withTheme: .main,
    deployedUsing: .gitHub("supercomputra/bahasapemrogramanswift", useSSH: false),
    additionalSteps: [
        .installPlugin(.splash(withClassPrefix: ""))
    ]
)
