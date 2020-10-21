use Test;
use mc;

plan 104;

my $string = "The Quick Brown Fox Jumps Over the Lazy Dog 0123456789";

for
    (:italic,),
    "𝑇ℎ𝑒 𝑄𝑢𝑖𝑐𝑘 𝐵𝑟𝑜𝑤𝑛 𝐹𝑜𝑥 𝐽𝑢𝑚𝑝𝑠 𝑂𝑣𝑒𝑟 𝑡ℎ𝑒 𝐿𝑎𝑧𝑦 𝐷𝑜𝑔 𝟶𝟷𝟸𝟹𝟺𝟻𝟼𝟽𝟾𝟿",
    "𝑇𝐻𝐸 𝑄𝑈𝐼𝐶𝐾 𝐵𝑅𝑂𝑊𝑁 𝐹𝑂𝑋 𝐽𝑈𝑀𝑃𝑆 𝑂𝑉𝐸𝑅 𝑇𝐻𝐸 𝐿𝐴𝑍𝑌 𝐷𝑂𝐺 𝟶𝟷𝟸𝟹𝟺𝟻𝟼𝟽𝟾𝟿",
    "𝑡ℎ𝑒 𝑞𝑢𝑖𝑐𝑘 𝑏𝑟𝑜𝑤𝑛 𝑓𝑜𝑥 𝑗𝑢𝑚𝑝𝑠 𝑜𝑣𝑒𝑟 𝑡ℎ𝑒 𝑙𝑎𝑧𝑦 𝑑𝑜𝑔 𝟶𝟷𝟸𝟹𝟺𝟻𝟼𝟽𝟾𝟿",

    (:bold,),
    "𝐓𝐡𝐞 𝐐𝐮𝐢𝐜𝐤 𝐁𝐫𝐨𝐰𝐧 𝐅𝐨𝐱 𝐉𝐮𝐦𝐩𝐬 𝐎𝐯𝐞𝐫 𝐭𝐡𝐞 𝐋𝐚𝐳𝐲 𝐃𝐨𝐠 𝟎𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗",
    "𝐓𝐇𝐄 𝐐𝐔𝐈𝐂𝐊 𝐁𝐑𝐎𝐖𝐍 𝐅𝐎𝐗 𝐉𝐔𝐌𝐏𝐒 𝐎𝐕𝐄𝐑 𝐓𝐇𝐄 𝐋𝐀𝐙𝐘 𝐃𝐎𝐆 𝟎𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗",
    "𝐭𝐡𝐞 𝐪𝐮𝐢𝐜𝐤 𝐛𝐫𝐨𝐰𝐧 𝐟𝐨𝐱 𝐣𝐮𝐦𝐩𝐬 𝐨𝐯𝐞𝐫 𝐭𝐡𝐞 𝐥𝐚𝐳𝐲 𝐝𝐨𝐠 𝟎𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗",

    (:italic, :bold),
    "𝑻𝒉𝒆 𝑸𝒖𝒊𝒄𝒌 𝑩𝒓𝒐𝒘𝒏 𝑭𝒐𝒙 𝑱𝒖𝒎𝒑𝒔 𝑶𝒗𝒆𝒓 𝒕𝒉𝒆 𝑳𝒂𝒛𝒚 𝑫𝒐𝒈 𝟎𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗",
    "𝑻𝑯𝑬 𝑸𝑼𝑰𝑪𝑲 𝑩𝑹𝑶𝑾𝑵 𝑭𝑶𝑿 𝑱𝑼𝑴𝑷𝑺 𝑶𝑽𝑬𝑹 𝑻𝑯𝑬 𝑳𝑨𝒁𝒀 𝑫𝑶𝑮 𝟎𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗",
    "𝒕𝒉𝒆 𝒒𝒖𝒊𝒄𝒌 𝒃𝒓𝒐𝒘𝒏 𝒇𝒐𝒙 𝒋𝒖𝒎𝒑𝒔 𝒐𝒗𝒆𝒓 𝒕𝒉𝒆 𝒍𝒂𝒛𝒚 𝒅𝒐𝒈 𝟎𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗",

    (:script,),
    "𝒯𝒽ℯ 𝒬𝓊𝒾𝒸𝓀 ℬ𝓇ℴ𝓌𝓃 ℱℴ𝓍 𝒥𝓊𝓂𝓅𝓈 𝒪𝓋ℯ𝓇 𝓉𝒽ℯ ℒ𝒶𝓏𝓎 𝒟ℴℊ 𝟶𝟷𝟸𝟹𝟺𝟻𝟼𝟽𝟾𝟿",
    "𝒯ℋℰ 𝒬𝒰ℐ𝒞𝒦 ℬℛ𝒪𝒲𝒩 ℱ𝒪𝒳 𝒥𝒰ℳ℘𝒮 𝒪𝒱ℰℛ 𝒯ℋℰ ℒ𝒜𝒵𝒴 𝒟𝒪𝒢 𝟶𝟷𝟸𝟹𝟺𝟻𝟼𝟽𝟾𝟿",
    "𝓉𝒽ℯ 𝓆𝓊𝒾𝒸𝓀 𝒷𝓇ℴ𝓌𝓃 𝒻ℴ𝓍 𝒿𝓊𝓂𝓅𝓈 ℴ𝓋ℯ𝓇 𝓉𝒽ℯ 𝓁𝒶𝓏𝓎 𝒹ℴℊ 𝟶𝟷𝟸𝟹𝟺𝟻𝟼𝟽𝟾𝟿",

    (:script, :bold),
    "𝓣𝓱𝓮 𝓠𝓾𝓲𝓬𝓴 𝓑𝓻𝓸𝔀𝓷 𝓕𝓸𝔁 𝓙𝓾𝓶𝓹𝓼 𝓞𝓿𝓮𝓻 𝓽𝓱𝓮 𝓛𝓪𝔃𝔂 𝓓𝓸𝓰 𝟎𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗",
    "𝓣𝓗𝓔 𝓠𝓤𝓘𝓒𝓚 𝓑𝓡𝓞𝓦𝓝 𝓕𝓞𝓧 𝓙𝓤𝓜𝓟𝓢 𝓞𝓥𝓔𝓡 𝓣𝓗𝓔 𝓛𝓐𝓩𝓨 𝓓𝓞𝓖 𝟎𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗",
    "𝓽𝓱𝓮 𝓺𝓾𝓲𝓬𝓴 𝓫𝓻𝓸𝔀𝓷 𝓯𝓸𝔁 𝓳𝓾𝓶𝓹𝓼 𝓸𝓿𝓮𝓻 𝓽𝓱𝓮 𝓵𝓪𝔃𝔂 𝓭𝓸𝓰 𝟎𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗",

    (:sans-serif,),
    "𝖳𝗁𝖾 𝖰𝗎𝗂𝖼𝗄 𝖡𝗋𝗈𝗐𝗇 𝖥𝗈𝗑 𝖩𝗎𝗆𝗉𝗌 𝖮𝗏𝖾𝗋 𝗍𝗁𝖾 𝖫𝖺𝗓𝗒 𝖣𝗈𝗀 𝟢𝟣𝟤𝟥𝟦𝟧𝟨𝟩𝟪𝟫",
    "𝖳𝖧𝖤 𝖰𝖴𝖨𝖢𝖪 𝖡𝖱𝖮𝖶𝖭 𝖥𝖮𝖷 𝖩𝖴𝖬𝖯𝖲 𝖮𝖵𝖤𝖱 𝖳𝖧𝖤 𝖫𝖠𝖹𝖸 𝖣𝖮𝖦 𝟢𝟣𝟤𝟥𝟦𝟧𝟨𝟩𝟪𝟫",
    "𝗍𝗁𝖾 𝗊𝗎𝗂𝖼𝗄 𝖻𝗋𝗈𝗐𝗇 𝖿𝗈𝗑 𝗃𝗎𝗆𝗉𝗌 𝗈𝗏𝖾𝗋 𝗍𝗁𝖾 𝗅𝖺𝗓𝗒 𝖽𝗈𝗀 𝟢𝟣𝟤𝟥𝟦𝟧𝟨𝟩𝟪𝟫",

    (:sans-serif, :italic),
    "𝘛𝘩𝘦 𝘘𝘶𝘪𝘤𝘬 𝘉𝘳𝘰𝘸𝘯 𝘍𝘰𝘹 𝘑𝘶𝘮𝘱𝘴 𝘖𝘷𝘦𝘳 𝘵𝘩𝘦 𝘓𝘢𝘻𝘺 𝘋𝘰𝘨 𝟢𝟣𝟤𝟥𝟦𝟧𝟨𝟩𝟪𝟫",
    "𝘛𝘏𝘌 𝘘𝘜𝘐𝘊𝘒 𝘉𝘙𝘖𝘞𝘕 𝘍𝘖𝘟 𝘑𝘜𝘔𝘗𝘚 𝘖𝘝𝘌𝘙 𝘛𝘏𝘌 𝘓𝘈𝘡𝘠 𝘋𝘖𝘎 𝟢𝟣𝟤𝟥𝟦𝟧𝟨𝟩𝟪𝟫",
    "𝘵𝘩𝘦 𝘲𝘶𝘪𝘤𝘬 𝘣𝘳𝘰𝘸𝘯 𝘧𝘰𝘹 𝘫𝘶𝘮𝘱𝘴 𝘰𝘷𝘦𝘳 𝘵𝘩𝘦 𝘭𝘢𝘻𝘺 𝘥𝘰𝘨 𝟢𝟣𝟤𝟥𝟦𝟧𝟨𝟩𝟪𝟫",

    (:sans-serif, :bold),
    "𝗧𝗵𝗲 𝗤𝘂𝗶𝗰𝗸 𝗕𝗿𝗼𝘄𝗻 𝗙𝗼𝘅 𝗝𝘂𝗺𝗽𝘀 𝗢𝘃𝗲𝗿 𝘁𝗵𝗲 𝗟𝗮𝘇𝘆 𝗗𝗼𝗴 𝟬𝟭𝟮𝟯𝟰𝟱𝟲𝟳𝟴𝟵",
    "𝗧𝗛𝗘 𝗤𝗨𝗜𝗖𝗞 𝗕𝗥𝗢𝗪𝗡 𝗙𝗢𝗫 𝗝𝗨𝗠𝗣𝗦 𝗢𝗩𝗘𝗥 𝗧𝗛𝗘 𝗟𝗔𝗭𝗬 𝗗𝗢𝗚 𝟬𝟭𝟮𝟯𝟰𝟱𝟲𝟳𝟴𝟵",
    "𝘁𝗵𝗲 𝗾𝘂𝗶𝗰𝗸 𝗯𝗿𝗼𝘄𝗻 𝗳𝗼𝘅 𝗷𝘂𝗺𝗽𝘀 𝗼𝘃𝗲𝗿 𝘁𝗵𝗲 𝗹𝗮𝘇𝘆 𝗱𝗼𝗴 𝟬𝟭𝟮𝟯𝟰𝟱𝟲𝟳𝟴𝟵",

    (:sans-serif, :italic, :bold),
    "𝙏𝙝𝙚 𝙌𝙪𝙞𝙘𝙠 𝘽𝙧𝙤𝙬𝙣 𝙁𝙤𝙭 𝙅𝙪𝙢𝙥𝙨 𝙊𝙫𝙚𝙧 𝙩𝙝𝙚 𝙇𝙖𝙯𝙮 𝘿𝙤𝙜 𝟬𝟭𝟮𝟯𝟰𝟱𝟲𝟳𝟴𝟵",
    "𝙏𝙃𝙀 𝙌𝙐𝙄𝘾𝙆 𝘽𝙍𝙊𝙒𝙉 𝙁𝙊𝙓 𝙅𝙐𝙈𝙋𝙎 𝙊𝙑𝙀𝙍 𝙏𝙃𝙀 𝙇𝘼𝙕𝙔 𝘿𝙊𝙂 𝟬𝟭𝟮𝟯𝟰𝟱𝟲𝟳𝟴𝟵",
    "𝙩𝙝𝙚 𝙦𝙪𝙞𝙘𝙠 𝙗𝙧𝙤𝙬𝙣 𝙛𝙤𝙭 𝙟𝙪𝙢𝙥𝙨 𝙤𝙫𝙚𝙧 𝙩𝙝𝙚 𝙡𝙖𝙯𝙮 𝙙𝙤𝙜 𝟬𝟭𝟮𝟯𝟰𝟱𝟲𝟳𝟴𝟵",

    (:fraktur,),
    "𝔗𝔥𝔢 𝔔𝔲𝔦𝔠𝔨 𝔅𝔯𝔬𝔴𝔫 𝔉𝔬𝔵 𝔍𝔲𝔪𝔭𝔰 𝔒𝔳𝔢𝔯 𝔱𝔥𝔢 𝔏𝔞𝔷𝔶 𝔇𝔬𝔤 𝟶𝟷𝟸𝟹𝟺𝟻𝟼𝟽𝟾𝟿",
    "𝔗ℌ𝔈 𝔔𝔘ℑℭ𝔎 𝔅ℜ𝔒𝔚𝔑 𝔉𝔒𝔛 𝔍𝔘𝔐𝔓𝔖 𝔒𝔙𝔈ℜ 𝔗ℌ𝔈 𝔏𝔄ℨ𝔜 𝔇𝔒𝔊 𝟶𝟷𝟸𝟹𝟺𝟻𝟼𝟽𝟾𝟿",
    "𝔱𝔥𝔢 𝔮𝔲𝔦𝔠𝔨 𝔟𝔯𝔬𝔴𝔫 𝔣𝔬𝔵 𝔧𝔲𝔪𝔭𝔰 𝔬𝔳𝔢𝔯 𝔱𝔥𝔢 𝔩𝔞𝔷𝔶 𝔡𝔬𝔤 𝟶𝟷𝟸𝟹𝟺𝟻𝟼𝟽𝟾𝟿",

    (:fraktur, :bold),
    "𝕿𝖍𝖊 𝕼𝖚𝖎𝖈𝖐 𝕭𝖗𝖔𝖜𝖓 𝕱𝖔𝖝 𝕵𝖚𝖒𝖕𝖘 𝕺𝖛𝖊𝖗 𝖙𝖍𝖊 𝕷𝖆𝖟𝖞 𝕯𝖔𝖌 𝟎𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗",
    "𝕿𝕳𝕰 𝕼𝖀𝕴𝕮𝕶 𝕭𝕽𝕺𝖂𝕹 𝕱𝕺𝖃 𝕵𝖀𝕸𝕻𝕾 𝕺𝖁𝕰𝕽 𝕿𝕳𝕰 𝕷𝕬𝖅𝖄 𝕯𝕺𝕲 𝟎𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗",
    "𝖙𝖍𝖊 𝖖𝖚𝖎𝖈𝖐 𝖇𝖗𝖔𝖜𝖓 𝖋𝖔𝖝 𝖏𝖚𝖒𝖕𝖘 𝖔𝖛𝖊𝖗 𝖙𝖍𝖊 𝖑𝖆𝖟𝖞 𝖉𝖔𝖌 𝟎𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗",

    (:monospace,),
    "𝚃𝚑𝚎 𝚀𝚞𝚒𝚌𝚔 𝙱𝚛𝚘𝚠𝚗 𝙵𝚘𝚡 𝙹𝚞𝚖𝚙𝚜 𝙾𝚟𝚎𝚛 𝚝𝚑𝚎 𝙻𝚊𝚣𝚢 𝙳𝚘𝚐 𝟶𝟷𝟸𝟹𝟺𝟻𝟼𝟽𝟾𝟿",
    "𝚃𝙷𝙴 𝚀𝚄𝙸𝙲𝙺 𝙱𝚁𝙾𝚆𝙽 𝙵𝙾𝚇 𝙹𝚄𝙼𝙿𝚂 𝙾𝚅𝙴𝚁 𝚃𝙷𝙴 𝙻𝙰𝚉𝚈 𝙳𝙾𝙶 𝟶𝟷𝟸𝟹𝟺𝟻𝟼𝟽𝟾𝟿",
    "𝚝𝚑𝚎 𝚚𝚞𝚒𝚌𝚔 𝚋𝚛𝚘𝚠𝚗 𝚏𝚘𝚡 𝚓𝚞𝚖𝚙𝚜 𝚘𝚟𝚎𝚛 𝚝𝚑𝚎 𝚕𝚊𝚣𝚢 𝚍𝚘𝚐 𝟶𝟷𝟸𝟹𝟺𝟻𝟼𝟽𝟾𝟿",

    (:double-struck,),
    "𝕋𝕙𝕖 ℚ𝕦𝕚𝕔𝕜 𝔹𝕣𝕠𝕨𝕟 𝔽𝕠𝕩 𝕁𝕦𝕞𝕡𝕤 𝕆𝕧𝕖𝕣 𝕥𝕙𝕖 𝕃𝕒𝕫𝕪 𝔻𝕠𝕘 𝟘𝟙𝟚𝟛𝟜𝟝𝟞𝟟𝟠𝟡",
    "𝕋ℍ𝔼 ℚ𝕌𝕀ℂ𝕂 𝔹ℝ𝕆𝕎ℕ 𝔽𝕆𝕏 𝕁𝕌𝕄ℙ𝕊 𝕆𝕍𝔼ℝ 𝕋ℍ𝔼 𝕃𝔸ℤ𝕐 𝔻𝕆𝔾 𝟘𝟙𝟚𝟛𝟜𝟝𝟞𝟟𝟠𝟡",
    "𝕥𝕙𝕖 𝕢𝕦𝕚𝕔𝕜 𝕓𝕣𝕠𝕨𝕟 𝕗𝕠𝕩 𝕛𝕦𝕞𝕡𝕤 𝕠𝕧𝕖𝕣 𝕥𝕙𝕖 𝕝𝕒𝕫𝕪 𝕕𝕠𝕘 𝟘𝟙𝟚𝟛𝟜𝟝𝟞𝟟𝟠𝟡"

-> @adverbs, \mixed, \uppercase, \lowercase {

    is mc($string, |%(@adverbs)), mixed,
      "mc(string, {@adverbs>>.raku.join(", ")})";
    is mc($string.uc, |%(@adverbs)), uppercase,
      "mc(string.uc, {@adverbs>>.raku.join(", ")})";
    is mc($string.lc, |%(@adverbs)), lowercase,
      "mc(string.lc, {@adverbs>>.raku.join(", ")})";

    is lc($string, |%(@adverbs)), lowercase,
      "lc(string, {@adverbs>>.raku.join(", ")})";
    is uc($string, |%(@adverbs)), uppercase,
      "uc(string, {@adverbs>>.raku.join(", ")})";

    is mc(mixed, :ascii), $string,    "mc(mixed, :ascii)";
    is lc(mixed, :ascii), $string.lc, "lc(mixed, :ascii)";
    is uc(mixed, :ascii), $string.uc, "uc(mixed, :ascii)";
}

# vim: expandtab shiftwidth=4
