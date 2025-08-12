import ProjectDescription

let name: Template.Attribute = .required("name")
let projectName: Template.Attribute = .required("root")

let template = Template(
    description: "Eevee Feature template (Core, DataModel+API, View, Glue)",
    attributes: [
        name,
        projectName,
    ],
    items: [
        // Core
        .file(
            path: "\(projectName)/Sources/Features/\(name)/Core/\(name)Events.swift",
            templatePath: .relativeToCurrentFile("files/Core/Events.stencil"),
        ),
        .file(
            path: "\(projectName)/Sources/Features/\(name)/Core/\(name)ViewModel.swift",
            templatePath: .relativeToCurrentFile("files/Core/ViewModel.stencil")
        ),
        .file(
            path: "\(projectName)/Sources/Features/\(name)/Core/\(name)DisplayStateBuilder.swift",
            templatePath: .relativeToCurrentFile("files/Core/DisplayStateBuilder.stencil")
        ),
        .file(
            path: "\(projectName)/Sources/Features/\(name)/Core/\(name)EffectsManager.swift",
            templatePath: .relativeToCurrentFile("files/Core/EffectsManager.stencil")
        ),
        // DataModel + API
        .file(
            path: "\(projectName)/Sources/Features/\(name)/DataModel+API/\(name)DataModel.swift",
            templatePath: .relativeToCurrentFile("files/DataModel+API/DataModel.stencil")
        ),
        .file(
            path: "\(projectName)/Sources/Features/\(name)/DataModel+API/\(name)DataProvider.swift",
            templatePath: .relativeToCurrentFile("files/DataModel+API/DataProvider.stencil")
        ),
        // View
        .file(
            path: "\(projectName)/Sources/Features/\(name)/View/\(name)DisplayState.swift",
            templatePath: .relativeToCurrentFile("files/View/DisplayState.stencil")
        ),
        .file(
            path: "\(projectName)/Sources/Features/\(name)/View/\(name)View.swift",
            templatePath: .relativeToCurrentFile("files/View/View.stencil")
        ),
        // Glue
        .file(
            path: "\(projectName)/Sources/Features/\(name)/Glue/\(name)Builder.swift",
            templatePath: .relativeToCurrentFile("files/Glue/Builder.stencil")
        ),
        .file(
            path: "\(projectName)/Sources/Features/\(name)/Glue/\(name)Router.swift",
            templatePath: .relativeToCurrentFile("files/Glue/Router.stencil")
        )
    ]
)
