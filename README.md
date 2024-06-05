# peer_app

A new Flutter project.

## Project Guidelines

NIEMAD PUSHT AUF MAIN AUSSER CASPAR — weil main ab jetzt nicht mehr breaken darf

Wichtig:
NIEMAD PUSHT AUF MAIN AUSSER CASPAR — weil dort ab jetzt nichts mehr kaputt gehen darf
Widgets:
1. Ein File sollte nicht mehr als 100 Lines haben
2. Ein File sollte nicht mehr als ein Widget haben
3. Ein Widget sollte eine Column/Row haben (maximal 2)

Ordnerstruktur:
Neue Seite Anlegen:
- Ordner anlegen für die Page (neue_seite_page)
Beinhaltet:
- neue_seite_page.dart
- neue_seite_body.dart
- neue_seite_wrapper.dart
- components (Ordner) (Falls die Components von mehr als einem Widget benutzt werden, sollte der Ordner auf der höchsten Ebene liegen, wo er benutzt wird)
- section (Ordner) (sobald es mehr als eine Section gibt)


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

To regenerate freezed files: dart run build_runner build
To regenerate freezed files and delete auto generated files first: 
        dart run build_runner build --delete-conflicting-outputs