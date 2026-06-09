#!/usr/bin/env python3
with open(r'C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart', 'r', encoding='utf-8') as f:
    content = f.read()

# First, add new localized strings for shorter button text
shorter_text_strings = {
    "en": {"selectDiscord": "Select Discord"},
    "nl": {"selectDiscord": "Selecteer Discord"},
    "ar": {"selectDiscord": "اختر Discord"},
    "de": {"selectDiscord": "Discord wählen"},
    "es": {"selectDiscord": "Seleccionar Discord"},
    "fr": {"selectDiscord": "Sélectionner Discord"},
    "hi": {"selectDiscord": "Discord चुनें"},
    "it": {"selectDiscord": "Seleziona Discord"},
    "ja": {"selectDiscord": "Discordを選択"},
    "ko": {"selectDiscord": "Discord 선택"},
    "pl": {"selectDiscord": "Wybierz Discord"},
    "pt": {"selectDiscord": "Selecionar Discord"},
    "ru": {"selectDiscord": "Выбрать Discord"},
    "tr": {"selectDiscord": "Discord Seç"},
    "uk": {"selectDiscord": "Вибрати Discord"},
    "zh": {"selectDiscord": "选择 Discord"},
}

# Add to all ARB files
for lang, strings in shorter_text_strings.items():
    filepath = rf'C:\My Projects\AIRTA\lib\l10n\app_{lang}.arb'
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            arb_content = f.read()
        
        if '"selectDiscord"' not in arb_content and arb_content.rstrip().endswith('}'):
            new_entries = [f'\n  "{key}": "{value}"' for key, value in strings.items()]
            arb_content = arb_content.rstrip()[:-1] + ',' + ','.join(new_entries) + '\n}'
            with open(filepath, 'w', encoding='utf-8') as f:
                f.write(arb_content)
    except Exception as e:
        print(f'Error with {lang}: {e}')

print('Added shorter text localization')

# Now redesign the Discord button - replace the entire _DiscordButton class
old_discord_button = '''class _DiscordButtonState extends State<_DiscordButton> {
  bool _discordEnabled = false;

  ToxicityAnalyzerController get controller => widget.controller;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final subscriptionService = context.watch<SubscriptionService>();
    final hasDiscordAddon = subscriptionService.hasDiscordAddon;
    final canUse = _discordEnabled && hasDiscordAddon;

    return Row(
      children: [
        Checkbox(
          value: _discordEnabled,
          onChanged: (val) {
            if (val == true && !hasDiscordAddon) {
              // Show popup if trying to enable without addon
              _showDiscordAddonPopup(context);
            } else {
              setState(() {
                _discordEnabled = val ?? false;
              });
            }
          },
        ),
        const SizedBox(width: 8),
        Flexible(
          child: ElevatedButton.icon(
            onPressed: controller.isIngesting || !canUse
                ? (!hasDiscordAddon && _discordEnabled)
                    ? () => _showDiscordAddonPopup(context)
                    : null
                : () => _openDiscordPicker(context),
            icon: controller.isIngesting
                ? const SizedBox.square(
                    dimension: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.discord, color: Color(0xFF5865F2)),
            label: Text(AppLocalizations.of(context)!.selectDiscordChannel,
                textAlign: TextAlign.center),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF5865F2),
              foregroundColor: Colors.white,
              minimumSize: const Size.fromHeight(56),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        IconButton(
          onPressed: () => _showDiscordHelp(context),
          icon: const Icon(Icons.help_outline),
          tooltip: 'Setup Help',
          style: IconButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
          ),
        ),
      ],
    );
  }'''

new_discord_button = '''class _DiscordButtonState extends State<_DiscordButton> {
  bool _discordEnabled = false;

  ToxicityAnalyzerController get controller => widget.controller;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final subscriptionService = context.watch<SubscriptionService>();
    final hasDiscordAddon = subscriptionService.hasDiscordAddon;
    final canUse = _discordEnabled && hasDiscordAddon;
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Enable toggle row with help
        Row(
          children: [
            Icon(Icons.discord, color: const Color(0xFF5865F2), size: 20),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                l10n.enableDiscord,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            // Help icon button - smaller, more subtle
            InkWell(
              onTap: () => _showDiscordHelp(context),
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Icon(
                  Icons.help_outline,
                  size: 18,
                  color: theme.colorScheme.onSurface.withOpacity(0.5),
                ),
              ),
            ),
            const SizedBox(width: 8),
            // Toggle switch instead of checkbox
            Switch(
              value: _discordEnabled,
              onChanged: (val) {
                if (val && !hasDiscordAddon) {
                  _showDiscordAddonPopup(context);
                } else {
                  setState(() {
                    _discordEnabled = val;
                  });
                }
              },
              activeColor: const Color(0xFF5865F2),
            ),
          ],
        ),
        const SizedBox(height: 12),
        // Main action button - full width, cleaner text
        ElevatedButton(
          onPressed: controller.isIngesting || !canUse
              ? (!hasDiscordAddon && _discordEnabled)
                  ? () => _showDiscordAddonPopup(context)
                  : null
              : () => _openDiscordPicker(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF5865F2),
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: controller.isIngesting
              ? const SizedBox.square(
                  dimension: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.white,
                  ),
                )
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.discord, size: 20),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        l10n.selectDiscord,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
        ),
      ],
    );
  }'''

if old_discord_button in content:
    content = content.replace(old_discord_button, new_discord_button)
    with open(r'C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart', 'w', encoding='utf-8') as f:
        f.write(content)
    print('OK - Redesigned Discord UI')
else:
    print('ERROR - Could not find Discord button pattern')
