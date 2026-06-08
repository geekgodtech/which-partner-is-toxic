import 'package:flutter/material.dart';
import '../services/theme_service.dart';

class DarkModeSwitch extends StatelessWidget {
  const DarkModeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final themeService = ThemeService();
    
    return ListenableBuilder(
      listenable: themeService,
      builder: (context, child) {
        final isDarkMode = themeService.isDarkMode;
        
        return GestureDetector(
          onTap: () => themeService.toggleDarkMode(),
          child: Container(
            width: 80,
            height: 44,
            decoration: BoxDecoration(
              color: isDarkMode 
                  ? Colors.black87 
                  : Colors.grey[300],
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Stack(
              children: [
                // Light mode icon
                Positioned(
                  left: 8,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: Icon(
                      Icons.light_mode,
                      color: isDarkMode ? Colors.grey[600] : Colors.orange,
                      size: 20,
                    ),
                  ),
                ),
                // Dark mode icon
                Positioned(
                  right: 8,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: Icon(
                      Icons.dark_mode,
                      color: isDarkMode ? Colors.blue[300] : Colors.grey[600],
                      size: 20,
                    ),
                  ),
                ),
                // Rocker knob
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  left: isDarkMode ? 38 : 4,
                  top: 4,
                  bottom: 4,
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: isDarkMode ? Colors.blueGrey[800] : Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 3,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
