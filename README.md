# Tuist

## Project Overview

This repository uses Tuist to manage a modular iOS architecture. The main goal is to enable scalable, maintainable, and testable features for modern iOS development.

## Eevee Feature Template

The `EeveeFeature` template provides a structure for new features, following best practices for separation of concerns and modularity. The template generates the following folders and files:

### Folder Structure

```
Templates/
  EeveeFeature/
    Template.swift
    files/
      Core/
        DisplayStateBuilder.stencil
        EffectsManager.stencil
        Events.stencil
        ViewModel.stencil
      DataModel+API/
        DataModel.stencil
        DataProvider.stencil
      Glue/
        Builder.stencil
      View/
        DisplayState.stencil
        View.stencil
```

### File Descriptions

- **Core/**
  - `Events.stencil`: Defines feature events and actions.
  - `ViewModel.stencil`: Contains business logic and state management.
  - `DisplayStateBuilder.stencil`: Builds display state for the view.
  - `EffectsManager.stencil`: Handles side effects and async operations.
- **DataModel+API/**
  - `DataModel.stencil`: Data model definitions for the feature.
  - `DataProvider.stencil`: API and data fetching logic.
- **Glue/**
  - `Builder.stencil`: Assembles dependencies and connects modules.
- **View/**
  - `DisplayState.stencil`: View state representation.
  - `View.stencil`: UI layer for the feature.

## Architecture Overview

The architecture is modular and feature-based, promoting clear separation between UI, business logic, data, and glue code. Each feature is self-contained and follows the structure above.

### Architecture Diagram

```
┌─────────────┐      ┌───────────────┐      ┌─────────────┐
│     View    │◄────►│ DisplayState  │◄────►│  ViewModel  │
└─────────────┘      └───────────────┘      └─────────────┘
       ▲                    ▲                     ▲
       │                    │                     │
       │                    │                     │
┌─────────────┐      ┌───────────────┐      ┌─────────────┐
│  DataModel  │◄────►│ DataProvider  │◄────►│ EffectsMgr  │
└─────────────┘      └───────────────┘      └─────────────┘
       ▲                    ▲                     ▲
       │                    │                     │
       └─────────────►  Glue/Builder  ◄─────────────┘
```

## Getting Started

To create a new feature using the Eevee template, use Tuist's template command:

```sh
tuist scaffold EeveeFeature --name <FeatureName> --root <TargetRoot>
```

## License

See [LICENSE](LICENSE).

