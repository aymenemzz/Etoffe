# ÉTOFFE — Brief de développement

## 🧭 Résumé du projet
ÉTOFFE est une application immersive de création textile pour visionOS. Elle permet aux créateurs de manipuler des matières dans un atelier virtuel en toute simplicité.

## 🧱 Architecture fonctionnelle
1. **Modula** – zone de création textile gestuelle.
2. **Conceptus** – galerie pour stocker et retravailler des idées.
3. **Incubatio** – espace d'archivage et d'exposition minimaliste.

## 💡 Comportements et intentions UX
- Navigation par geste, regard ou tap.
- Interface sobre, transitions douces et "glassmorphism".

## 🧰 Technologies recommandées
- SwiftUI, RealityKit et visionOS SDK.
- LookInteraction, ImmersiveSpace et gestes.
- Stockage local provisoire via SwiftData ou UserDefaults.

## 📁 Structure du projet
```
Etoffe/
├── AppModel.swift
├── ContentView.swift
├── Views/
│   ├── HomeView.swift
│   ├── ImmersiveModulaView.swift
│   ├── ConceptusGalleryView.swift
│   ├── IncubatioSceneView.swift
├── Models/
│   ├── FabricModel.swift
│   ├── CreationEntry.swift
├── UIComponents/
│   ├── CardView.swift
│   ├── AvatarBadge.swift
├── Assets/
│   ├── Textures/
│   └── Images/
├── Utils/
│   └── PlaceholderGenerator.swift
```

## ✅ À terme
- Accueil (HomeView) avec trois blocs : Créer, Explorer, Finaliser.
- Draping de matières sur un mannequin via ImmersiveModulaView.
- Galerie Conceptus pour sauvegarder et modifier des idées.
- Incubatio pour exposer les créations archivées.
- Navigation fluide et design cohérent.

