#!/usr/bin/env python3
with open(r'C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart', 'r', encoding='utf-8') as f:
    content = f.read()

old_code = '''            // Help icon button - smaller, more subtle
            // Info icon - more prominent, indicates setup information
            InkWell(
              onTap: () => _showDiscordHelp(context),
              borderRadius: BorderRadius.circular(16),
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: const Color(0xFF5865F2).withOpacity(0.15),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Icon(
                  Icons.info_outline,
                  size: 20,
                  color: Color(0xFF5865F2),
                ),
              ),
            ),
            const SizedBox(width: 8),'''

new_code = '''            // Info icon - large white icon on blue background with shadow
            InkWell(
              onTap: () => _showDiscordHelp(context),
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFF5865F2),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF5865F2).withOpacity(0.4),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.info_outline,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 12),'''

if old_code in content:
    content = content.replace(old_code, new_code)
    with open(r'C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart', 'w', encoding='utf-8') as f:
        f.write(content)
    print('OK - Updated info icon to large white on blue with shadow')
else:
    print('ERROR - Pattern not found')
