import json
with open("lib/l10n/app_en.arb", encoding="utf-8-sig") as f:
    en = json.load(f)
with open("lib/l10n/app_ko.arb", encoding="utf-8-sig") as f:
    ko = json.load(f)
print("EN installedPacksAccordionSubtitle:", repr(en.get("installedPacksAccordionSubtitle", "MISSING")))
print("KO installedPacksAccordionSubtitle:", repr(ko.get("installedPacksAccordionSubtitle", "MISSING")))
