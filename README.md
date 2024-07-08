# Swift Color Styles

- An iOS app for viewing different color options

# Remove Default Storyboard

- Delete Storyboard File: `Main.Storyboard`
- Remove reference to Main
  - In File: `Info.plist`
  - Search for "main", delete line
- Remove reference in Target
  - Main File > Targets > ProjectName > Info
  - Delete line `Main storyboard file base name`
