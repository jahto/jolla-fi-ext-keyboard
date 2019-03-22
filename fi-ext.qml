// Copyright (C) 2013 Jolla Ltd.
// Contact: Pekka Vuorela <pekka.vuorela@jollamobile.com>

// Heavily modified by Jouni Ahto <jahto@welho.com>

// Rationale:
// If possible, add every character in the SFS 5966 standard, to be able
// to write at least any language currently in use in the European Union,
// and when possible, also either not in current use, or using old ortography,
// or in use outside EU. Without switching the keyboard layout all the time
// and still being able to write most of the characters in the aforementioned
// standard.

// Additions:
// A lot. Read the key definitions.

// Changes indirectly connected to the additions:
// Moved ø under ö to have some space left over o, and it's the place
// where a Finnish user most probably would go looking up for them anyway.
// Moved æ under ä for the same reasons.

// Other changes:
// Changed the order of almost any character with a diacritic or
// other modification so that they always appear in the same order:

// - ´ (acute)
// - ` (grave)
// - ^ (circumflex)
// - ˇ (caron)
// - ¨ (diaeresis)
// - ˜ (tilde)
// - ¯ (macron)
// - ˛/¸ (ogonek/cedilla, considered to be the same, because only vowels have ogonek and only consonants cedilla)
// - ˙ (dot above)
// - ˘ (breve)
// - , (comma below)
// - ˝ (double acute accent/hungarian umlaut)
// - ˚ (ring above)
// - turkish ı/İ,
// - some kind of stroke/slash over the character
// - the character was combined with another
// - the character was in some other way modified
// - monetary symbol

// There was some inconsistency already in the original version. This
// ordering has the unfortunate effect of bringing the probably more
// heavily used German ß near the end of list, and there are some other odd
// cases too. But it's at least consistent, and you CAN write what you need to.
// The reasoning behind this arbitrary looking order is that I thought
// that separating symbols somewhat resembling each other with at least
// one clearly different looking symbol between them should make it, maybe
// not actually easier to distinguish between, but at least to give a hint
// to the user that they are not related or variations of each other.
// Especially under poor lightning conditions, having not a good sight
// and possibly even being affected by some legal/unlegal/not so called
// medication. So the order was defined mostly by the following rules:

// - try to follow the sorting rules in the current supplemental Finnish character
//   set (see http://kotoistus.fi/kannanotot_html/paattyneet/lisamerkisto-esitys)
// - then, take hints from the proposal for its successor (which of course can still change),
//   and make exemptions (especially regarding the position of breve) when necessary to
//   keep the following rules:
// - try to keep symbols following each other looking as different as possible,
//   which leads to the following rules:
// - never have ˇ (caron) followed by ˘ (breve)
// - never have ¸ (cedilla) followed by , (combining comma below)
// - never have ˜ (tilde) followed by ˝ (double acute accent)
// - try to keep the most used ones in the beginning of list (although deciding
//   which ones are the most used is a bit hard and subject to failing guesswork)

// The result of course being an unholy mess that in reality does not follow the rules.

// Omissions of certain characters with a diacritic due to lack of screen estate and their known usage(s):
// ĕ (Malay, Latin - modern orthography), ẽ (usage not known)
// ĩ (Greenlandic - old orthography)
// ũ (Greenlandic - old orthography), ǔ (Pinyin - third tone)

// Total omissions of certain diacritics above/under/on side of vowels, due to lack of screen estate:
// Dot below, hook above, horn: not needed in European languages, only in Vietnamese,
// and it would be impossible anyway to write Vietname correctly without having the
// possibility to have two diacritics on one vowel (one for the tone, one for the variation).
// If you really do need to write Vietnamese, you'll have to switch to the Vietnamese
// keyboard layout when that layout will some day become available. Or write your own.

// Notes about certain characters available under d:
// ð in Icelandic, đ in Croatian and Sami, capital form for both looks like Đ,
// but are in fact two different characters: U+00D0 (latin capital letter ETH)
// and U+0110 (latin capital letter D with stroke)

// Notes about ő, ø, œ:
// Why is ő available using both o and ö? Reason: it is the equivalent of öö in Finnish.
// Many of those who would use it, already know this and would go looking up it under ö.
// But not everyone, and it certainly looks like an odd diacritic over o. I considered
// it safe to move ø under ö, nearly everyone possibly using this layout probably knows
// where to go looking up. With œ, maybe not the same because it doesn't occur in any
// Scandinavian language.

// Note about µ:
// Added it under m, because it's there in the standard. But which µ,
// U+00B5 (micro sign) or U+03BC (Greek small letter mu)? I choosed the former,
// because this is not a Greek keyboard layout.

// Omissions of characters that could not be shown with the font used in virtual keyboard
// (might or might not show up on a desktop machine):

// ṫ, Ṫ (U+1E6B, U+1E6A) (Irish Gaelic - old orthography)
// ṗ, Ṗ (U+1E57, U+1E56) (Irish Gaelic - old orthography)
// ḋ, Ḋ (U+1E0B, U+1E0A) (Irish Gaelic - old orthography)
// ḟ, Ḟ (U+1E1F, U+1E1E) (Irish Gaelic - old orthography)
// ǥ, Ǥ (U+01E5, U+01E4) (Skolt Sami)
// ȟ, Ȟ (U+021F, U+021E) (Finnish Romany)
// ǩ, Ǩ (U+01E9, U+01E8) (Skolt Sami)
// ǟ, Ǟ (U+01DF, U+01DE) (Livonian, Uralicist usage)
// ǣ, Ǣ (U+01E3, U+01E2) (Old Norse, Old English)
// Ʒ (U+01B7) (Skolt Sami) (uppercase only)
// ǯ, Ǯ (U+01EF, U+01EE) (Skolt Sami)
// ḃ, Ḃ (U+1E03, U+1E02) (Irish Gaelic - old orthography)
// ṁ, Ṁ (U+1E41, U+1E40) (Irish Gaelic - old orthography)

// Haven't even thought about:
// Some punctuation characters. Mostly different kind of hyphens.

// References (in Finnish):
// http://fi.wikipedia.org/wiki/SFS_5966
// http://kotoistus.fi/fi_kbspec_fi_luonnos06.pdf
// http://www.kotoistus.fi/nappaimisto/kbpcsf.pdf (Yhdistemerkkien luettelo)

import QtQuick 2.0
import ".."

KeyboardLayout {
    KeyboardRow {
        CharacterKey { caption: "q"; captionShifted: "Q"; symView: "1"; symView2: "€" }
        CharacterKey { caption: "w"; captionShifted: "W"; symView: "2"; symView2: "£"; accents: "ẃẁŵẅ"; accentsShifted: "ẂẀŴẄ" }
        CharacterKey { caption: "e"; captionShifted: "E"; symView: "3"; symView2: "$"; accents: "éèêěëēėę€"; accentsShifted: "ÉÈÊĚËĒĖĘ€" }
        CharacterKey { caption: "r"; captionShifted: "R"; symView: "4"; symView2: "¥"; accents: "ŕřŗ"; accentsShifted: "ŔŘŖ" }
        CharacterKey { caption: "t"; captionShifted: "T"; symView: "5"; symView2: "₹"; accents: "ťţțŧþ"; accentsShifted: "ŤŢȚŦÞ" }
        CharacterKey { caption: "y"; captionShifted: "Y"; symView: "6"; symView2: "¤"; accents: "ýỳŷÿỹ¥"; accentsShifted: "ÝỲŶŸỸ¥" }
        CharacterKey { caption: "u"; captionShifted: "U"; symView: "7"; symView2: "<"; accents: "úùûüūŭųűů"; accentsShifted: "ÚÙÛÜŪŬŲŰŮ" }
        CharacterKey { caption: "i"; captionShifted: "I"; symView: "8"; symView2: ">"; accents: "íìîǐïīĭįı"; accentsShifted: "ÍÌÎǏÏĪĬĮİ" }
        CharacterKey { caption: "o"; captionShifted: "O"; symView: "9"; symView2: "["; accents: "óòôǒõōǫőœ"; accentsShifted: "ÓÒÔǑÕŌǪŐŒ" }
        CharacterKey { caption: "p"; captionShifted: "P"; symView: "0"; symView2: "]" }
        CharacterKey { caption: "å"; captionShifted: "Å"; symView: "%"; symView2: "‰"; accents: "ǻ"; accentsShifted: "Ǻ" }
    }

    KeyboardRow {
        CharacterKey { caption: "a"; captionShifted: "A"; symView: "*"; symView2: "`"; accents: "áàâǎãāăąə"; accentsShifted: "ÁÀÂǍÃĀĂĄƏ"}
        CharacterKey { caption: "s"; captionShifted: "S"; symView: "#"; symView2: "^"; accents: "śŝšşṡșß$"; accentsShifted: "ŚŜŠŞṠȘ$"}
        CharacterKey { caption: "d"; captionShifted: "D"; symView: "+"; symView2: "|"; accents: "ďđð"; accentsShifted: "ĎĐÐ" }
        CharacterKey { caption: "f"; captionShifted: "F"; symView: "-"; symView2: "_" }
        CharacterKey { caption: "g"; captionShifted: "G"; symView: "="; symView2: "§"; accents: "ĝǧġğģ"; accentsShifted: "ĜǦĠĞĢ" }
        CharacterKey { caption: "h"; captionShifted: "H"; symView: "("; symView2: "{"; accents: "ĥħ"; accentsShifted: "ĤĦ" }
        CharacterKey { caption: "j"; captionShifted: "J"; symView: ")"; symView2: "}"; accents: "ĵ"; accentsShifted: "Ĵ" }
        CharacterKey { caption: "k"; captionShifted: "K"; symView: "\""; symView2: "°"; accents: "ķ"; accentsShifted: "Ķ" }
        CharacterKey { caption: "l"; captionShifted: "L"; symView: "~"; symView2: "·"; accents: "ĺľļł"; accentsShifted: "ĹĽĻŁ" }
        CharacterKey { caption: "ö"; captionShifted: "Ö"; symView: "!"; symView2: "¡"; accents: "őøǿ"; accentsShifted: "ŐØǾ" }
        CharacterKey { caption: "ä"; captionShifted: "Ä"; symView: "?"; symView2: "¿"; accents: "æǽ"; accentsShifted: "ÆǼ" }
    }

    KeyboardRow {
        ShiftKey {}

        CharacterKey { caption: "z"; captionShifted: "Z"; symView: "@"; symView2: "«"; accents: "źžżʒ"; accentsShifted :"ŹŽŻ" }
        CharacterKey { caption: "x"; captionShifted: "X"; symView: "&"; symView2: "»" }
        CharacterKey { caption: "c"; captionShifted: "C"; symView: "/"; symView2: "÷"; accents: "ćĉčçċ"; accentsShifted: "ĆĈČÇĊ" }
        CharacterKey { caption: "v"; captionShifted: "V"; symView: "\\"; symView2: "“" }
        CharacterKey { caption: "b"; captionShifted: "B"; symView: "'"; symView2: "”" }
        CharacterKey { caption: "n"; captionShifted: "N"; symView: ";"; symView2: "„"; accents: "ńñňņŋ"; accentsShifted: "ŃÑŇŅŊ" }
        CharacterKey { caption: "m"; captionShifted: "M"; symView: ":"; symView2: "×"; accents: "µ" }

        BackspaceKey {}
    }

    SpacebarRow {}
}
