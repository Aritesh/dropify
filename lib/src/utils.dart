// Utility functions like handling multi-selection can go here.

List<T> multiSelect<T>(List<T> currentSelection, T newItem) {
  if (currentSelection.contains(newItem)) {
    currentSelection.remove(newItem); // Remove item if already selected
  } else {
    currentSelection.add(newItem); // Add item if not selected
  }
  return currentSelection;
}
