// Utility functions like handling multi-selection can go here.

/// Toggles the selection of an item in the current selection list.
///
/// This function adds the item to the [currentSelection] list if it is not already
/// selected, and removes it if it is already present. It helps to manage multi-selection
/// scenarios where a user can select and deselect items.
///
/// - [currentSelection]: The current list of selected items. The list will be modified in-place.
/// - [newItem]: The item to toggle in the selection list.
///
/// Returns the updated list of selected items after the toggle operation.
List<T> multiSelect<T>(List<T> currentSelection, T newItem) {
  if (currentSelection.contains(newItem)) {
    currentSelection.remove(newItem); // Remove item if already selected
  } else {
    currentSelection.add(newItem); // Add item if not selected
  }
  return currentSelection;
}
