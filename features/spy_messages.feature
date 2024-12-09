Feature: encode or decode a secret message
As a secret spy
I should be able to encode and decode messages
So that I can chat with my spy friends like a pro.

Background:
    Given I open the url "https://www.hanginghyena.com/solvers_a/caesar-cipher-decoder"

Scenario: I can successfully access the site
    When I pause for 500ms
    Then I expect that the title is "Caesar Cipher Decoder: Applies Caesar Shift; OSRS cipher solver"

Scenario: I can successfully encode a secret message
    When I select the option with the value "E" for element "#decoder-setting"
    And I select the option with the value "4" for element "#shift-amount"
    And I click on the button "#reset"
    And I add "asdfasdfasdf" to the inputfield "#letters"
    And I click on the button "#submit"
    And I pause for 1000ms
    Then I expect that element "#decoded_message" contains the text "ewhjewhjewhj"

Scenario: I can successfully decode a secret message
    When I select the option with the value "D" for element "#decoder-setting"
    And I select the option with the value "4" for element "#shift-amount"
    And I click on the button "#reset"
    And I add "ewhjewhjewhj" to the inputfield "#letters"
    And I click on the button "#submit"
    And I pause for 1000ms
    Then I expect that element "#decoded_message" contains the text "asdfasdfasdf"

Scenario: I can successfully encode a huge message
    When I select the option with the value "E" for element "#decoder-setting"
    And I select the option with the value "25" for element "#shift-amount"
    And I click on the button "#reset"
    And I add "The Caesar cipher is one of the oldest substitution ciphers, used by the Roman leader Julius Caesar to encrypt military messages ( wikipedia article). The system shifts every alphabetic character in a message by X positions in the alphabet; to get back to the original position, you reverse the shift. The keyspace for this cipher is very small (26) making it vulnerable to brute force attacks ("brutus force attacks"?). At the time it was considered secure, primarily since most of Caesar's enemies were illiterate and innumerate. It's current use is for um... teaching cryptograph. And a couple of video games (treasure trails osrs ciphers). This caesar cipher translator helps you decode caesar cipher messages. Set the cipher to encode (to encrypt using the caesar cipher) or decode (to decrypt a message). Set the caesar shift amount (how many alphabet positions you want to shift). The caesar cipher translator will encode (or decode) the message by the shift amount and display the result. It will also show the mapping between the plaintext and ciphertext alphabets. But wait..there's more. The caesar cipher translator also does a "best fit" analysis to assess which shift produces a result closest to english. This can help you crack an encrypted message. The cipher solution is calculated by breaking the message into parts (trigrams - groups of three letters) and encoding them using different values for the caesar shift. We then compare the distribution of the trigrams to the nature trigram distribution of the English language. The value of the caesar shift which produces the closest result will be suggested as the solution. This can help if you're trying to break a video game code, such as an OSRS cipher (Old School Rune Scape). You can also attack a Caesar cipher using frequency analysis. However, many cipher puzzles are designed to defeat this attack through short messages and unusual letter frequencies. That's a good cautionary tale about cipher decoding. The shorter the message, the harder it is to identify patterns. The longer the message, the easier it is to spot basic patterns. In the case of using the caesar cipher to encode messages, one key weakness is that it will still continue to maintain the basic letter distribution of the English language. Improved ciphers (eg. the history of cryptography since the conquest of gaul) use improved forms of substitution and transposition to break up this pattern. We have a more advanced substitution cipher workbench which can help you work with keyed caesar ciphers and mixed alphabet ciphers. We also have a Rot13 Decoder which addresses a narrow case of the caesar cipher system (where the shift = 13). Check these out if you're trying to crack a video game cipher, like a treasure trails osrs cipher." to the inputfield "#letters"
    And I click on the button "#submit"
    And I pause for 5000ms
    Then I expect that element "#decoded_message" contains the text "Sgd Bzdrzq bhogdq hr nmd ne sgd nkcdrs rtarshstshnm bhogdqr, trdc ax sgd Qnlzm kdzcdq Itkhtr Bzdrzq sn dmbqxos lhkhszqx ldrrzfdr ( vhjhodchz zqshbkd). Sgd rxrsdl rghesr dudqx zkogzadshb bgzqzbsdq hm z ldrrzfd ax W onrhshnmr hm sgd zkogzads; sn fds azbj sn sgd nqhfhmzk onrhshnm, xnt qdudqrd sgd rghes. Sgd jdxrozbd enq sghr bhogdq hr udqx rlzkk (26) lzjhmf hs utkmdqzakd sn aqtsd enqbd zsszbjr ("aqtstr enqbd zsszbjr"?). Zs sgd shld hs vzr bnmrhcdqdc rdbtqd, oqhlzqhkx rhmbd lnrs ne Bzdrzq'r dmdlhdr vdqd hkkhsdqzsd zmc hmmtldqzsd. Hs'r btqqdms trd hr enq tl... sdzbghmf bqxosnfqzog. Zmc z bntokd ne uhcdn fzldr (sqdzrtqd sqzhkr nrqr bhogdqr). Sghr bzdrzq bhogdq sqzmrkzsnq gdkor xnt cdbncd bzdrzq bhogdq ldrrzfdr. Rds sgd bhogdq sn dmbncd (sn dmbqxos trhmf sgd bzdrzq bhogdq) nq cdbncd (sn cdbqxos z ldrrzfd). Rds sgd bzdrzq rghes zlntms (gnv lzmx zkogzads onrhshnmr xnt vzms sn rghes). Sgd bzdrzq bhogdq sqzmrkzsnq vhkk dmbncd (nq cdbncd) sgd ldrrzfd ax sgd rghes zlntms zmc chrokzx sgd qdrtks. Hs vhkk zkrn rgnv sgd lzoohmf adsvddm sgd okzhmsdws zmc bhogdqsdws zkogzadsr. Ats vzhs..sgdqd'r lnqd. Sgd bzdrzq bhogdq sqzmrkzsnq zkrn cndr z "adrs ehs" zmzkxrhr sn zrrdrr vghbg rghes oqnctbdr z qdrtks bknrdrs sn dmfkhrg. Sghr bzm gdko xnt bqzbj zm dmbqxosdc ldrrzfd. Sgd bhogdq rnktshnm hr bzkbtkzsdc ax aqdzjhmf sgd ldrrzfd hmsn ozqsr (sqhfqzlr - fqntor ne sgqdd kdssdqr) zmc dmbnchmf sgdl trhmf cheedqdms uzktdr enq sgd bzdrzq rghes. Vd sgdm bnlozqd sgd chrsqhatshnm ne sgd sqhfqzlr sn sgd mzstqd sqhfqzl chrsqhatshnm ne sgd Dmfkhrg kzmftzfd. Sgd uzktd ne sgd bzdrzq rghes vghbg oqnctbdr sgd bknrdrs qdrtks vhkk ad rtffdrsdc zr sgd rnktshnm. Sghr bzm gdko he xnt'qd sqxhmf sn aqdzj z uhcdn fzld bncd, rtbg zr zm NRQR bhogdq (Nkc Rbgnnk Qtmd Rbzod). Xnt bzm zkrn zsszbj z Bzdrzq bhogdq trhmf eqdptdmbx zmzkxrhr. Gnvdudq, lzmx bhogdq otyykdr zqd cdrhfmdc sn cdedzs sghr zsszbj sgqntfg rgnqs ldrrzfdr zmc tmtrtzk kdssdq eqdptdmbhdr. Sgzs'r z fnnc bztshnmzqx szkd zants bhogdq cdbnchmf. Sgd rgnqsdq sgd ldrrzfd, sgd gzqcdq hs hr sn hcdmshex ozssdqmr. Sgd knmfdq sgd ldrrzfd, sgd dzrhdq hs hr sn rons azrhb ozssdqmr. Hm sgd bzrd ne trhmf sgd bzdrzq bhogdq sn dmbncd ldrrzfdr, nmd jdx vdzjmdrr hr sgzs hs vhkk rshkk bnmshmtd sn lzhmszhm sgd azrhb kdssdq chrsqhatshnm ne sgd Dmfkhrg kzmftzfd. Hloqnudc bhogdqr (df. sgd ghrsnqx ne bqxosnfqzogx rhmbd sgd bnmptdrs ne fztk) trd hloqnudc enqlr ne rtarshstshnm zmc sqzmronrhshnm sn aqdzj to sghr ozssdqm. Vd gzud z lnqd zcuzmbdc rtarshstshnm bhogdq vnqjadmbg vghbg bzm gdko xnt vnqj vhsg jdxdc bzdrzq bhogdqr zmc lhwdc zkogzads bhogdqr. Vd zkrn gzud z Qns13 Cdbncdq vghbg zccqdrrdr z mzqqnv bzrd ne sgd bzdrzq bhogdq rxrsdl (vgdqd sgd rghes = 13). Bgdbj sgdrd nts he xnt'qd sqxhmf sn bqzbj z uhcdn fzld bhogdq, khjd z sqdzrtqd sqzhkr nrqr bhogdq."

Scenario: I can successfully encode a huge message
    When I select the option with the value "D" for element "#decoder-setting"
    And I select the option with the value "25" for element "#shift-amount"
    And I click on the button "#reset"
    And I add "Sgd Bzdrzq bhogdq hr nmd ne sgd nkcdrs rtarshstshnm bhogdqr, trdc ax sgd Qnlzm kdzcdq Itkhtr Bzdrzq sn dmbqxos lhkhszqx ldrrzfdr ( vhjhodchz zqshbkd). Sgd rxrsdl rghesr dudqx zkogzadshb bgzqzbsdq hm z ldrrzfd ax W onrhshnmr hm sgd zkogzads; sn fds azbj sn sgd nqhfhmzk onrhshnm, xnt qdudqrd sgd rghes. Sgd jdxrozbd enq sghr bhogdq hr udqx rlzkk (26) lzjhmf hs utkmdqzakd sn aqtsd enqbd zsszbjr ("aqtstr enqbd zsszbjr"?). Zs sgd shld hs vzr bnmrhcdqdc rdbtqd, oqhlzqhkx rhmbd lnrs ne Bzdrzq'r dmdlhdr vdqd hkkhsdqzsd zmc hmmtldqzsd. Hs'r btqqdms trd hr enq tl... sdzbghmf bqxosnfqzog. Zmc z bntokd ne uhcdn fzldr (sqdzrtqd sqzhkr nrqr bhogdqr). Sghr bzdrzq bhogdq sqzmrkzsnq gdkor xnt cdbncd bzdrzq bhogdq ldrrzfdr. Rds sgd bhogdq sn dmbncd (sn dmbqxos trhmf sgd bzdrzq bhogdq) nq cdbncd (sn cdbqxos z ldrrzfd). Rds sgd bzdrzq rghes zlntms (gnv lzmx zkogzads onrhshnmr xnt vzms sn rghes). Sgd bzdrzq bhogdq sqzmrkzsnq vhkk dmbncd (nq cdbncd) sgd ldrrzfd ax sgd rghes zlntms zmc chrokzx sgd qdrtks. Hs vhkk zkrn rgnv sgd lzoohmf adsvddm sgd okzhmsdws zmc bhogdqsdws zkogzadsr. Ats vzhs..sgdqd'r lnqd. Sgd bzdrzq bhogdq sqzmrkzsnq zkrn cndr z "adrs ehs" zmzkxrhr sn zrrdrr vghbg rghes oqnctbdr z qdrtks bknrdrs sn dmfkhrg. Sghr bzm gdko xnt bqzbj zm dmbqxosdc ldrrzfd. Sgd bhogdq rnktshnm hr bzkbtkzsdc ax aqdzjhmf sgd ldrrzfd hmsn ozqsr (sqhfqzlr - fqntor ne sgqdd kdssdqr) zmc dmbnchmf sgdl trhmf cheedqdms uzktdr enq sgd bzdrzq rghes. Vd sgdm bnlozqd sgd chrsqhatshnm ne sgd sqhfqzlr sn sgd mzstqd sqhfqzl chrsqhatshnm ne sgd Dmfkhrg kzmftzfd. Sgd uzktd ne sgd bzdrzq rghes vghbg oqnctbdr sgd bknrdrs qdrtks vhkk ad rtffdrsdc zr sgd rnktshnm. Sghr bzm gdko he xnt'qd sqxhmf sn aqdzj z uhcdn fzld bncd, rtbg zr zm NRQR bhogdq (Nkc Rbgnnk Qtmd Rbzod). Xnt bzm zkrn zsszbj z Bzdrzq bhogdq trhmf eqdptdmbx zmzkxrhr. Gnvdudq, lzmx bhogdq otyykdr zqd cdrhfmdc sn cdedzs sghr zsszbj sgqntfg rgnqs ldrrzfdr zmc tmtrtzk kdssdq eqdptdmbhdr. Sgzs'r z fnnc bztshnmzqx szkd zants bhogdq cdbnchmf. Sgd rgnqsdq sgd ldrrzfd, sgd gzqcdq hs hr sn hcdmshex ozssdqmr. Sgd knmfdq sgd ldrrzfd, sgd dzrhdq hs hr sn rons azrhb ozssdqmr. Hm sgd bzrd ne trhmf sgd bzdrzq bhogdq sn dmbncd ldrrzfdr, nmd jdx vdzjmdrr hr sgzs hs vhkk rshkk bnmshmtd sn lzhmszhm sgd azrhb kdssdq chrsqhatshnm ne sgd Dmfkhrg kzmftzfd. Hloqnudc bhogdqr (df. sgd ghrsnqx ne bqxosnfqzogx rhmbd sgd bnmptdrs ne fztk) trd hloqnudc enqlr ne rtarshstshnm zmc sqzmronrhshnm sn aqdzj to sghr ozssdqm. Vd gzud z lnqd zcuzmbdc rtarshstshnm bhogdq vnqjadmbg vghbg bzm gdko xnt vnqj vhsg jdxdc bzdrzq bhogdqr zmc lhwdc zkogzads bhogdqr. Vd zkrn gzud z Qns13 Cdbncdq vghbg zccqdrrdr z mzqqnv bzrd ne sgd bzdrzq bhogdq rxrsdl (vgdqd sgd rghes = 13). Bgdbj sgdrd nts he xnt'qd sqxhmf sn bqzbj z uhcdn fzld bhogdq, khjd z sqdzrtqd sqzhkr nrqr bhogdq." to the inputfield "#letters"
    And I click on the button "#submit"
    And I pause for 5000ms
    Then I expect that element "#decoded_message" contains the text "The Caesar cipher is one of the oldest substitution ciphers, used by the Roman leader Julius Caesar to encrypt military messages ( wikipedia article). The system shifts every alphabetic character in a message by X positions in the alphabet; to get back to the original position, you reverse the shift. The keyspace for this cipher is very small (26) making it vulnerable to brute force attacks ("brutus force attacks"?). At the time it was considered secure, primarily since most of Caesar's enemies were illiterate and innumerate. It's current use is for um... teaching cryptograph. And a couple of video games (treasure trails osrs ciphers). This caesar cipher translator helps you decode caesar cipher messages. Set the cipher to encode (to encrypt using the caesar cipher) or decode (to decrypt a message). Set the caesar shift amount (how many alphabet positions you want to shift). The caesar cipher translator will encode (or decode) the message by the shift amount and display the result. It will also show the mapping between the plaintext and ciphertext alphabets. But wait..there's more. The caesar cipher translator also does a "best fit" analysis to assess which shift produces a result closest to english. This can help you crack an encrypted message. The cipher solution is calculated by breaking the message into parts (trigrams - groups of three letters) and encoding them using different values for the caesar shift. We then compare the distribution of the trigrams to the nature trigram distribution of the English language. The value of the caesar shift which produces the closest result will be suggested as the solution. This can help if you're trying to break a video game code, such as an OSRS cipher (Old School Rune Scape). You can also attack a Caesar cipher using frequency analysis. However, many cipher puzzles are designed to defeat this attack through short messages and unusual letter frequencies. That's a good cautionary tale about cipher decoding. The shorter the message, the harder it is to identify patterns. The longer the message, the easier it is to spot basic patterns. In the case of using the caesar cipher to encode messages, one key weakness is that it will still continue to maintain the basic letter distribution of the English language. Improved ciphers (eg. the history of cryptography since the conquest of gaul) use improved forms of substitution and transposition to break up this pattern. We have a more advanced substitution cipher workbench which can help you work with keyed caesar ciphers and mixed alphabet ciphers. We also have a Rot13 Decoder which addresses a narrow case of the caesar cipher system (where the shift = 13). Check these out if you're trying to crack a video game cipher, like a treasure trails osrs cipher."

Scenario: I want to learn more about Caeser ciphers
    When I click on the link "Caesar cipher"
    Then I expect that the url is "https://en.wikipedia.org/wiki/Caesar_cipher" 