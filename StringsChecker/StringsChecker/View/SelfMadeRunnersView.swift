/*
 SelfMadeRunnersView.swift
 StringsChecker

 Created by Takuto Nakamura on 2024/03/31.
 
*/

import SwiftUI
import RunCatLocalization

struct SelfMadeRunnersView: View {
    let language: Language
    private let columns: [GridItem] = Array(repeating: GridItem(.flexible(), spacing: 4), count: 5)

    var body: some View {
        HStack {
            VStack {
                Text(RCL.SelfMadeRunners.selfMadeRunnersTitle.string(lang: language.id))
                editor
            }
            VStack {
                Text("alert")
                VStack {
                    alert(message: .conflictName)
                    alert(message: .violatePrecondition)
                    alert(message: .violateUpperLimit)
                }
            }
        }
    }

    var editor: some View {
        HStack(alignment: .top, spacing: 16) {
            registeredRunnersList
            Divider()
            VStack {
                Form {
                    TextField(text: .constant("")) {
                        Text(RCL.SelfMadeRunners.runnerName.string(lang: language.id))
                    }
                    LabeledContent {
                        Toggle(isOn: .constant(false)) {
                            Text(RCL.SelfMadeRunners.useOriginalColor.string(lang: language.id))
                        }
                    } label: {
                        Text(RCL.SelfMadeRunners.color.string(lang: language.id))
                    }
                    LabeledContent {
                        VStack(alignment: .leading) {
                            Text(RCL.SelfMadeRunners.formatPrecondition.string(lang: language.id))
                            Text(RCL.SelfMadeRunners.heightPrecondition.string(lang: language.id))
                            Text(RCL.SelfMadeRunners.widthPrecondition.string(lang: language.id))
                        }
                    } label: {
                        Text(RCL.SelfMadeRunners.preconditions.string(lang: language.id))
                    }
                    LabeledContent {
                        runnerFramesList
                    } label: {
                        Text(RCL.SelfMadeRunners.frames.string(lang: language.id))
                    }
                    LabeledContent {
                        preview
                    } label: {
                        Text(RCL.SelfMadeRunners.preview.string(lang: language.id))
                    }
                }
                .formStyle(.columns)
                HStack(spacing: 8) {
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "lock.fill")
                            .foregroundColor(Color.yellow)
                    })
                    .buttonStyle(.borderless)
                    .popover(isPresented: .constant(true)) {
                        Text(RCL.SelfMadeRunners.toRegister.string(lang: language.id))
                            .frame(width: 250)
                            .padding(8)
                    }
                    Button(action: {}, label: {
                        Text(RCL.SelfMadeRunners.register.string(lang: language.id))
                    })
                }
            }
        }
        .padding(20)
        .background(Color(nsColor: NSColor.windowBackgroundColor))
        .fixedSize()
    }

    var registeredRunnersList: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(RCL.SelfMadeRunners.registeredRunners.string(lang: language.id))
            VStack(spacing: 0) {
                List(selection: .constant(0)) {
                    EmptyView()
                }
                .listStyle(.plain)
                Divider()
                HStack(spacing: 0) {
                    SegmentedButton(imageName: "minus")
                    Spacer()
                }
            }
            .frame(width: 130)
            .border(Color(NSColor.separatorColor))
        }
    }

    var runnerFramesList: some View {
        ZStack(alignment: .topLeading) {
            Text(verbatim: "dummy").hidden()
            VStack(spacing: 0) {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 4) {
                        EmptyView()
                    }
                }
                Divider()
                HStack(spacing: 0) {
                    SegmentedButton(imageName: "plus")
                    SegmentedButton(imageName: "minus")
                    Spacer()
                }
            }
            .frame(width: 256, height: 180)
            .border(Color(NSColor.separatorColor))
        }
    }

    var preview: some View {
        ZStack(alignment: .topLeading) {
            Text(verbatim: "dummy").hidden()
            HStack(alignment: .center, spacing: 8) {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 100, height: 36)
                    .padding(4)
                    .border(Color(NSColor.separatorColor))
                Slider(value: .constant(0.1), in: 0.05 ... 0.2, step: 0.05) {
                    EmptyView()
                } minimumValueLabel: {
                    Image(systemName: "hare.fill")
                } maximumValueLabel: {
                    Image(systemName: "tortoise.fill")
                }
                .labelsHidden()
            }
        }
    }

    func alert(message: RCL.SelfMadeRunners) -> some View {
        VStack(spacing: 8) {
            Text(RCL.SelfMadeRunners.registerErrorTitle.string(lang: language.id))
                .font(.headline)
            Text(message.string(lang: language.id))
                .font(.caption)
            Button(action: {}, label: {
                Text(verbatim: "OK")
                    .frame(width: 160)
            })
            .buttonStyle(.bordered)
            .controlSize(.large)
        }
        .multilineTextAlignment(.center)
        .frame(width: 200)
        .padding()
        .background(Color(nsColor: NSColor.windowBackgroundColor))
    }
}

#Preview {
    SelfMadeRunnersView(language: .english)
}
