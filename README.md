# SwiftUI Task Assessment: Simple App Screen
A single screen mobile application built with SwiftUI to demostrate state handling, list management, and UI components.
## Features
This projects implements the following requirements:
TaskList: A dynamic list that displays user added tasks.
Add Item: A seamless way to add new tasks via bottom sheet/form
Empty state: A visually clear view shown when no task exists
loadingState: logic prepare to handle data fetching
## Technical Implementation
Framework: SwiftUI
State Management: @State properties to drive the UI. i implemented logic to handle loading (isLoading bolean) to manage the transition between data fetching and data displaying
Architecture: simple MVVM style approach using local state
## State Handling Explanation
I managed the UI states using @State properties. the logic is structured to toggle between loading, empty, and populate states by checking the task arrays status and a loading boolean, ensuring the UI respinds correctly to the data changes 
## Preview
<img width="480" height="1040" alt="IMG_6891" src="https://github.com/user-attachments/assets/638032dc-0084-4676-a188-e685c9f98338" />
<img width="480" height="1040" alt="IMG_6892" src="https://github.com/user-attachments/assets/b9e84cbe-9371-4304-a1ff-063060251036" />
<img width="480" height="1040" alt="IMG_6893" src="https://github.com/user-attachments/assets/f22beb8a-c551-44e2-9cc6-064b0d700e29" />



## How To Run
1. Clone this repo
2. Open the .xcoderpj file in xcode
3. select a iphone simulator and run the app
