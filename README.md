# NeuroSense

NeuroSense is a comprehensive Flutter application designed for neuro-sensory support and autism detection. It provides a tailored experience for three distinct user roles: Students, Parents, and Teachers. The app blends interactive activities, educational content delivery, and computer-vision-based autism screening into a single, cohesive platform.

## Features by Role

### 🎓 Students
- **Interactive Activities:** Includes specialized sensory and cognitive exercises such as **Sensory Slime** and **Connect the Dots**, designed to engage and soothe.
- **Autism Detection Module:** An interactive screening module (`autism_detection_screen.dart`) that uses device inputs (camera, microphone) to run detection logic (partnered with a machine learning backend using OpenCV/MediaPipe and Random Forest).
- **Content Learning:** Access curated educational content, video lessons (via iframes), and exploration modules.
- **Progress Tracking:** Tracks history and task completion for continuous monitoring.

### 👩‍🏫 Teachers
- **Content Management:** Upload and manage tailored video content and activities for students.
- **Student Monitoring:** View student rosters, monitor individual progress, and review reports from the autism detection module.

### 👪 Parents
- **Supervision & Progress:** Link with their child's account to view task history, detection reports, and overall developmental progress.

## Tech Stack
- **Frontend Framework:** Flutter (Dart)
- **Routing:** `go_router` for seamless role-based navigation.
- **State & Storage:** `flutter_secure_storage` for secure session management.
- **Multimedia & Sensory:** `audioplayers` for sound effects, `vibration` for haptic feedback, and `webview_flutter` for embedded learning content.
- **AI Integration:** `google_generative_ai` for dynamic feedback and content generation.
- **Hardware Access:** `camera`, `permission_handler`, and `image_picker` for the detection and activity modules.

## Getting Started

1. **Prerequisites:** Ensure you have the [Flutter SDK](https://docs.flutter.dev/get-started/install) installed (version 3.8.1 or higher recommended).
2. **Install Dependencies:**
   ```bash
   flutter pub get
   ```
3. **Configuration:**
   - Make sure to populate any required API keys in `lib/secrets.dart` (e.g., Google Generative AI keys or your backend API URLs).
4. **Run the App:**
   ```bash
   flutter run
   ```

## Architecture
- **`/lib/screens/`**: Separated by role (`student`, `teacher`, `parent`) to maintain clean navigation and business logic.
- **`/lib/services/`**: Handles backend communication (`auth_services.dart`, `content_service.dart`, `teacher_service.dart`) using standard REST APIs to connect to the Flask/Python backend.
- **`/lib/theme/`**: Centralized design system to ensure a premium, soothing visual experience throughout the application.
