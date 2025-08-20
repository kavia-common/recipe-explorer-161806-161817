# Recipe Explorer (Flutter)

A modern light-themed mobile app to browse, search, view, and save recipes. Users can create and edit their own recipes and keep a personal favorites collection. Includes optional sign-in scaffolding (guest mode).

Features:
- Browse list/grid of recipes (card-based layout)
- Search by name, ingredients, or tags
- Detailed view with ingredients, steps, duration, and tags
- Save/unsave favorites (locally persisted)
- Create, edit, and delete custom recipes (locally persisted)
- Profile tab with sign-in/out (guest scaffolding)

Navigation:
- Bottom navigation with tabs: Home, Search, Favorites, Profile

Tech:
- Flutter (Material 3)
- Provider for state management
- shared_preferences for local persistence

Run:
- flutter pub get
- flutter run

Structure:
- lib/
  - main.dart: App entry and routing
  - theme/app_theme.dart: Light theme using primary #4CAF50, secondary #FFC107, accent #FF5722
  - models/recipe.dart: Data models
  - services/recipe_service.dart: Local data and persistence
  - providers/: State management for recipes, favorites, auth
  - screens/: UI screens for tabs and details
  - widgets/recipe_card.dart: Reusable card
