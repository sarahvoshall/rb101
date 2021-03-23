{"changed":true,"filter":false,"title":"practice.rb","tooltip":"/lesson_4/practice.rb","value":"flintstones = [\"Fred\", \"Barney\", \"Wilma\", \"Betty\", \"Pebbles\", \"BamBam\"] \n\ndef hashmaker(array)\n  hash = Hash.new\n  counter = 0\n  \n  loop do \n    break if counter == array.size\n    \n    current_element = array[counter]\n    hash[current_element] = counter\n    \n    counter += 1\n  end\n  \n  hash\nend\n\np hashmaker(flintstones) \n\n# LS solution using .each_with_index\n\nflintstones_hash = Hash.new\nflintstones.each_with_index { |name, index| \n  flintstones_hash[name] = index \n} \n\np flintstones_hash\n\nages = { \"Herman\" => 32, \"Lily\" => 30, \"Grandpa\" => 5843, \"Eddie\" => 10, \"Marilyn\" => 22, \"Spot\" => 237 }\n\np ages.values.min\n\nflintstones.each_with_index { |element, index| \n  p index if element.start_with?(\"Be\") \n} \n\np flintstones.map! { |name| name[0..2] } \n\nstatement = \"The Flintstones Rock\" \nletter_hash = Hash.new(0)\n\nstatement.chars.each { |letter| \n  letter_hash[letter] += 1 \n}\n\np letter_hash\n\nwords = \"the flintstones rock\" \ntitle = words.split.each { |word|\n  word.capitalize!\n} \n\np title.join(\" \")\n\nmunsters = {\n  \"Herman\" => { \"age\" => 32, \"gender\" => \"male\" },\n  \"Lily\" => { \"age\" => 30, \"gender\" => \"female\" },\n  \"Grandpa\" => { \"age\" => 402, \"gender\" => \"male\" },\n  \"Eddie\" => { \"age\" => 10, \"gender\" => \"male\" },\n  \"Marilyn\" => { \"age\" => 23, \"gender\" => \"female\"}\n} \n\np munsters.values.keys\n\ncase \"age_group\"\nwhen \"age\" < 18 then \"child\"\nwhen \"age\".include?(18..64) then \"adult\"\nwhen \"age\" > 95 then \"senior\"\nend\n\n","undoManager":{"mark":101,"position":100,"stack":[[{"start":{"row":64,"column":22},"end":{"row":64,"column":23},"action":"insert","lines":["C"],"id":807},{"start":{"row":64,"column":23},"end":{"row":64,"column":24},"action":"insert","lines":["h"]},{"start":{"row":64,"column":24},"end":{"row":64,"column":25},"action":"insert","lines":["i"]},{"start":{"row":64,"column":25},"end":{"row":64,"column":26},"action":"insert","lines":["l"]},{"start":{"row":64,"column":26},"end":{"row":64,"column":27},"action":"insert","lines":["d"]}],[{"start":{"row":64,"column":26},"end":{"row":64,"column":27},"action":"remove","lines":["d"],"id":808},{"start":{"row":64,"column":25},"end":{"row":64,"column":26},"action":"remove","lines":["l"]},{"start":{"row":64,"column":24},"end":{"row":64,"column":25},"action":"remove","lines":["i"]},{"start":{"row":64,"column":23},"end":{"row":64,"column":24},"action":"remove","lines":["h"]},{"start":{"row":64,"column":22},"end":{"row":64,"column":23},"action":"remove","lines":["C"]}],[{"start":{"row":64,"column":22},"end":{"row":64,"column":23},"action":"insert","lines":["c"],"id":809},{"start":{"row":64,"column":23},"end":{"row":64,"column":24},"action":"insert","lines":["h"]},{"start":{"row":64,"column":24},"end":{"row":64,"column":25},"action":"insert","lines":["i"]},{"start":{"row":64,"column":25},"end":{"row":64,"column":26},"action":"insert","lines":["l"]},{"start":{"row":64,"column":26},"end":{"row":64,"column":27},"action":"insert","lines":["d"]}],[{"start":{"row":64,"column":28},"end":{"row":65,"column":0},"action":"insert","lines":["",""],"id":810},{"start":{"row":65,"column":0},"end":{"row":65,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":65,"column":0},"end":{"row":65,"column":2},"action":"remove","lines":["  "],"id":811}],[{"start":{"row":65,"column":0},"end":{"row":65,"column":1},"action":"insert","lines":["w"],"id":812},{"start":{"row":65,"column":1},"end":{"row":65,"column":2},"action":"insert","lines":["h"]},{"start":{"row":65,"column":2},"end":{"row":65,"column":3},"action":"insert","lines":["e"]},{"start":{"row":65,"column":3},"end":{"row":65,"column":4},"action":"insert","lines":["n"]}],[{"start":{"row":65,"column":4},"end":{"row":65,"column":5},"action":"insert","lines":[" "],"id":813}],[{"start":{"row":65,"column":5},"end":{"row":65,"column":7},"action":"insert","lines":["\"\""],"id":814}],[{"start":{"row":65,"column":6},"end":{"row":65,"column":7},"action":"insert","lines":["a"],"id":815},{"start":{"row":65,"column":7},"end":{"row":65,"column":8},"action":"insert","lines":["g"]},{"start":{"row":65,"column":8},"end":{"row":65,"column":9},"action":"insert","lines":["e"]}],[{"start":{"row":65,"column":10},"end":{"row":65,"column":11},"action":"insert","lines":[" "],"id":816},{"start":{"row":65,"column":11},"end":{"row":65,"column":12},"action":"insert","lines":["="]},{"start":{"row":65,"column":12},"end":{"row":65,"column":13},"action":"insert","lines":["="]}],[{"start":{"row":65,"column":13},"end":{"row":65,"column":14},"action":"insert","lines":[" "],"id":817}],[{"start":{"row":65,"column":13},"end":{"row":65,"column":14},"action":"remove","lines":[" "],"id":818},{"start":{"row":65,"column":12},"end":{"row":65,"column":13},"action":"remove","lines":["="]},{"start":{"row":65,"column":11},"end":{"row":65,"column":12},"action":"remove","lines":["="]},{"start":{"row":65,"column":10},"end":{"row":65,"column":11},"action":"remove","lines":[" "]}],[{"start":{"row":65,"column":10},"end":{"row":65,"column":11},"action":"insert","lines":["."],"id":819},{"start":{"row":65,"column":11},"end":{"row":65,"column":12},"action":"insert","lines":["i"]},{"start":{"row":65,"column":12},"end":{"row":65,"column":13},"action":"insert","lines":["n"]}],[{"start":{"row":65,"column":12},"end":{"row":65,"column":13},"action":"remove","lines":["n"],"id":820}],[{"start":{"row":65,"column":12},"end":{"row":65,"column":13},"action":"insert","lines":["n"],"id":821},{"start":{"row":65,"column":13},"end":{"row":65,"column":14},"action":"insert","lines":["c"]},{"start":{"row":65,"column":14},"end":{"row":65,"column":15},"action":"insert","lines":["l"]},{"start":{"row":65,"column":15},"end":{"row":65,"column":16},"action":"insert","lines":["u"]},{"start":{"row":65,"column":16},"end":{"row":65,"column":17},"action":"insert","lines":["d"]},{"start":{"row":65,"column":17},"end":{"row":65,"column":18},"action":"insert","lines":["e"]},{"start":{"row":65,"column":18},"end":{"row":65,"column":19},"action":"insert","lines":["?"]}],[{"start":{"row":65,"column":19},"end":{"row":65,"column":20},"action":"insert","lines":[" "],"id":822}],[{"start":{"row":65,"column":19},"end":{"row":65,"column":20},"action":"remove","lines":[" "],"id":823}],[{"start":{"row":65,"column":19},"end":{"row":65,"column":21},"action":"insert","lines":["()"],"id":824}],[{"start":{"row":65,"column":20},"end":{"row":65,"column":21},"action":"insert","lines":["1"],"id":825},{"start":{"row":65,"column":21},"end":{"row":65,"column":22},"action":"insert","lines":["8"]},{"start":{"row":65,"column":22},"end":{"row":65,"column":23},"action":"insert","lines":["-"]},{"start":{"row":65,"column":23},"end":{"row":65,"column":24},"action":"insert","lines":["-"]}],[{"start":{"row":65,"column":24},"end":{"row":65,"column":25},"action":"insert","lines":["6"],"id":826},{"start":{"row":65,"column":25},"end":{"row":65,"column":26},"action":"insert","lines":["4"]}],[{"start":{"row":65,"column":27},"end":{"row":65,"column":28},"action":"insert","lines":[" "],"id":827}],[{"start":{"row":65,"column":27},"end":{"row":65,"column":28},"action":"remove","lines":[" "],"id":828},{"start":{"row":65,"column":26},"end":{"row":65,"column":27},"action":"remove","lines":[")"]},{"start":{"row":65,"column":25},"end":{"row":65,"column":26},"action":"remove","lines":["4"]},{"start":{"row":65,"column":24},"end":{"row":65,"column":25},"action":"remove","lines":["6"]},{"start":{"row":65,"column":23},"end":{"row":65,"column":24},"action":"remove","lines":["-"]},{"start":{"row":65,"column":22},"end":{"row":65,"column":23},"action":"remove","lines":["-"]}],[{"start":{"row":65,"column":22},"end":{"row":65,"column":23},"action":"insert","lines":["."],"id":829},{"start":{"row":65,"column":23},"end":{"row":65,"column":24},"action":"insert","lines":["."]}],[{"start":{"row":65,"column":24},"end":{"row":65,"column":25},"action":"insert","lines":["6"],"id":830},{"start":{"row":65,"column":25},"end":{"row":65,"column":26},"action":"insert","lines":["4"]},{"start":{"row":65,"column":26},"end":{"row":65,"column":27},"action":"insert","lines":[")"]}],[{"start":{"row":65,"column":27},"end":{"row":65,"column":28},"action":"insert","lines":[" "],"id":831},{"start":{"row":65,"column":28},"end":{"row":65,"column":29},"action":"insert","lines":["t"]},{"start":{"row":65,"column":29},"end":{"row":65,"column":30},"action":"insert","lines":["h"]},{"start":{"row":65,"column":30},"end":{"row":65,"column":31},"action":"insert","lines":["e"]},{"start":{"row":65,"column":31},"end":{"row":65,"column":32},"action":"insert","lines":["n"]}],[{"start":{"row":65,"column":32},"end":{"row":65,"column":33},"action":"insert","lines":[" "],"id":832}],[{"start":{"row":65,"column":33},"end":{"row":65,"column":35},"action":"insert","lines":["\"\""],"id":833}],[{"start":{"row":65,"column":34},"end":{"row":65,"column":35},"action":"insert","lines":["a"],"id":834},{"start":{"row":65,"column":35},"end":{"row":65,"column":36},"action":"insert","lines":["d"]},{"start":{"row":65,"column":36},"end":{"row":65,"column":37},"action":"insert","lines":["u"]},{"start":{"row":65,"column":37},"end":{"row":65,"column":38},"action":"insert","lines":["l"]},{"start":{"row":65,"column":38},"end":{"row":65,"column":39},"action":"insert","lines":["t"]}],[{"start":{"row":65,"column":40},"end":{"row":66,"column":0},"action":"insert","lines":["",""],"id":835},{"start":{"row":66,"column":0},"end":{"row":66,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":66,"column":0},"end":{"row":66,"column":2},"action":"remove","lines":["  "],"id":836}],[{"start":{"row":66,"column":0},"end":{"row":66,"column":1},"action":"insert","lines":["w"],"id":837},{"start":{"row":66,"column":1},"end":{"row":66,"column":2},"action":"insert","lines":["h"]},{"start":{"row":66,"column":2},"end":{"row":66,"column":3},"action":"insert","lines":["e"]},{"start":{"row":66,"column":3},"end":{"row":66,"column":4},"action":"insert","lines":["n"]}],[{"start":{"row":66,"column":4},"end":{"row":66,"column":5},"action":"insert","lines":[" "],"id":838}],[{"start":{"row":66,"column":5},"end":{"row":66,"column":7},"action":"insert","lines":["\"\""],"id":839}],[{"start":{"row":66,"column":6},"end":{"row":66,"column":7},"action":"insert","lines":["a"],"id":840},{"start":{"row":66,"column":7},"end":{"row":66,"column":8},"action":"insert","lines":["g"]},{"start":{"row":66,"column":8},"end":{"row":66,"column":9},"action":"insert","lines":["e"]}],[{"start":{"row":66,"column":10},"end":{"row":66,"column":11},"action":"insert","lines":[" "],"id":841},{"start":{"row":66,"column":11},"end":{"row":66,"column":12},"action":"insert","lines":["<"]}],[{"start":{"row":66,"column":11},"end":{"row":66,"column":12},"action":"remove","lines":["<"],"id":842}],[{"start":{"row":66,"column":11},"end":{"row":66,"column":12},"action":"insert","lines":[" "],"id":843}],[{"start":{"row":66,"column":10},"end":{"row":66,"column":12},"action":"remove","lines":["  "],"id":844}],[{"start":{"row":66,"column":10},"end":{"row":66,"column":11},"action":"insert","lines":[" "],"id":845},{"start":{"row":66,"column":11},"end":{"row":66,"column":12},"action":"insert","lines":[">"]}],[{"start":{"row":66,"column":12},"end":{"row":66,"column":13},"action":"insert","lines":[" "],"id":846},{"start":{"row":66,"column":13},"end":{"row":66,"column":14},"action":"insert","lines":["1"]},{"start":{"row":66,"column":14},"end":{"row":66,"column":15},"action":"insert","lines":["0"]},{"start":{"row":66,"column":15},"end":{"row":66,"column":16},"action":"insert","lines":["0"]}],[{"start":{"row":66,"column":15},"end":{"row":66,"column":16},"action":"remove","lines":["0"],"id":847},{"start":{"row":66,"column":14},"end":{"row":66,"column":15},"action":"remove","lines":["0"]},{"start":{"row":66,"column":13},"end":{"row":66,"column":14},"action":"remove","lines":["1"]}],[{"start":{"row":66,"column":13},"end":{"row":66,"column":14},"action":"insert","lines":["9"],"id":848},{"start":{"row":66,"column":14},"end":{"row":66,"column":15},"action":"insert","lines":["5"]}],[{"start":{"row":66,"column":15},"end":{"row":66,"column":16},"action":"insert","lines":[" "],"id":849},{"start":{"row":66,"column":16},"end":{"row":66,"column":17},"action":"insert","lines":["t"]},{"start":{"row":66,"column":17},"end":{"row":66,"column":18},"action":"insert","lines":["h"]},{"start":{"row":66,"column":18},"end":{"row":66,"column":19},"action":"insert","lines":["e"]},{"start":{"row":66,"column":19},"end":{"row":66,"column":20},"action":"insert","lines":["n"]}],[{"start":{"row":66,"column":20},"end":{"row":66,"column":21},"action":"insert","lines":[" "],"id":850}],[{"start":{"row":66,"column":21},"end":{"row":66,"column":23},"action":"insert","lines":["''"],"id":851}],[{"start":{"row":66,"column":22},"end":{"row":66,"column":23},"action":"insert","lines":["s"],"id":852},{"start":{"row":66,"column":23},"end":{"row":66,"column":24},"action":"insert","lines":["e"]},{"start":{"row":66,"column":24},"end":{"row":66,"column":25},"action":"insert","lines":["r"]},{"start":{"row":66,"column":25},"end":{"row":66,"column":26},"action":"insert","lines":["n"]},{"start":{"row":66,"column":26},"end":{"row":66,"column":27},"action":"insert","lines":["i"]},{"start":{"row":66,"column":27},"end":{"row":66,"column":28},"action":"insert","lines":["o"]}],[{"start":{"row":66,"column":27},"end":{"row":66,"column":28},"action":"remove","lines":["o"],"id":853},{"start":{"row":66,"column":26},"end":{"row":66,"column":27},"action":"remove","lines":["i"]},{"start":{"row":66,"column":25},"end":{"row":66,"column":26},"action":"remove","lines":["n"]},{"start":{"row":66,"column":24},"end":{"row":66,"column":25},"action":"remove","lines":["r"]},{"start":{"row":66,"column":23},"end":{"row":66,"column":24},"action":"remove","lines":["e"]},{"start":{"row":66,"column":22},"end":{"row":66,"column":23},"action":"remove","lines":["s"]},{"start":{"row":66,"column":21},"end":{"row":66,"column":23},"action":"remove","lines":["''"]}],[{"start":{"row":66,"column":21},"end":{"row":66,"column":23},"action":"insert","lines":["\"\""],"id":854}],[{"start":{"row":66,"column":22},"end":{"row":66,"column":23},"action":"insert","lines":["s"],"id":855},{"start":{"row":66,"column":23},"end":{"row":66,"column":24},"action":"insert","lines":["e"]},{"start":{"row":66,"column":24},"end":{"row":66,"column":25},"action":"insert","lines":["n"]},{"start":{"row":66,"column":25},"end":{"row":66,"column":26},"action":"insert","lines":["i"]},{"start":{"row":66,"column":26},"end":{"row":66,"column":27},"action":"insert","lines":["o"]},{"start":{"row":66,"column":27},"end":{"row":66,"column":28},"action":"insert","lines":["r"]}],[{"start":{"row":66,"column":29},"end":{"row":67,"column":0},"action":"insert","lines":["",""],"id":856},{"start":{"row":67,"column":0},"end":{"row":67,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":67,"column":0},"end":{"row":67,"column":2},"action":"remove","lines":["  "],"id":857}],[{"start":{"row":67,"column":0},"end":{"row":67,"column":1},"action":"insert","lines":["e"],"id":858},{"start":{"row":67,"column":1},"end":{"row":67,"column":2},"action":"insert","lines":["n"]},{"start":{"row":67,"column":2},"end":{"row":67,"column":3},"action":"insert","lines":["d"]}],[{"start":{"row":62,"column":0},"end":{"row":63,"column":0},"action":"insert","lines":["",""],"id":859},{"start":{"row":63,"column":0},"end":{"row":63,"column":1},"action":"insert","lines":["m"]},{"start":{"row":63,"column":1},"end":{"row":63,"column":2},"action":"insert","lines":["u"]},{"start":{"row":63,"column":2},"end":{"row":63,"column":3},"action":"insert","lines":["n"]},{"start":{"row":63,"column":3},"end":{"row":63,"column":4},"action":"insert","lines":["s"]},{"start":{"row":63,"column":4},"end":{"row":63,"column":5},"action":"insert","lines":["t"]},{"start":{"row":63,"column":5},"end":{"row":63,"column":6},"action":"insert","lines":["e"]}],[{"start":{"row":63,"column":6},"end":{"row":63,"column":7},"action":"insert","lines":["r"],"id":860},{"start":{"row":63,"column":7},"end":{"row":63,"column":8},"action":"insert","lines":["s"]}],[{"start":{"row":63,"column":8},"end":{"row":63,"column":9},"action":"insert","lines":[" "],"id":861}],[{"start":{"row":63,"column":8},"end":{"row":63,"column":9},"action":"remove","lines":[" "],"id":862},{"start":{"row":63,"column":7},"end":{"row":63,"column":8},"action":"remove","lines":["s"]},{"start":{"row":63,"column":6},"end":{"row":63,"column":7},"action":"remove","lines":["r"]},{"start":{"row":63,"column":5},"end":{"row":63,"column":6},"action":"remove","lines":["e"]},{"start":{"row":63,"column":4},"end":{"row":63,"column":5},"action":"remove","lines":["t"]},{"start":{"row":63,"column":3},"end":{"row":63,"column":4},"action":"remove","lines":["s"]},{"start":{"row":63,"column":2},"end":{"row":63,"column":3},"action":"remove","lines":["n"]},{"start":{"row":63,"column":1},"end":{"row":63,"column":2},"action":"remove","lines":["u"]},{"start":{"row":63,"column":0},"end":{"row":63,"column":1},"action":"remove","lines":["m"]},{"start":{"row":62,"column":0},"end":{"row":63,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":69,"column":0},"end":{"row":69,"column":14},"action":"remove","lines":["p new_munsters"],"id":863}],[{"start":{"row":62,"column":0},"end":{"row":63,"column":0},"action":"insert","lines":["",""],"id":864}],[{"start":{"row":63,"column":0},"end":{"row":63,"column":1},"action":"insert","lines":["l"],"id":865},{"start":{"row":63,"column":1},"end":{"row":63,"column":2},"action":"insert","lines":["o"]},{"start":{"row":63,"column":2},"end":{"row":63,"column":3},"action":"insert","lines":["o"]},{"start":{"row":63,"column":3},"end":{"row":63,"column":4},"action":"insert","lines":["p"]},{"start":{"row":63,"column":4},"end":{"row":63,"column":5},"action":"insert","lines":["d"]},{"start":{"row":63,"column":5},"end":{"row":63,"column":6},"action":"insert","lines":["o"]}],[{"start":{"row":63,"column":6},"end":{"row":63,"column":7},"action":"insert","lines":[" "],"id":866}],[{"start":{"row":63,"column":6},"end":{"row":63,"column":7},"action":"remove","lines":[" "],"id":867},{"start":{"row":63,"column":5},"end":{"row":63,"column":6},"action":"remove","lines":["o"]},{"start":{"row":63,"column":4},"end":{"row":63,"column":5},"action":"remove","lines":["d"]}],[{"start":{"row":63,"column":4},"end":{"row":63,"column":5},"action":"insert","lines":["d"],"id":868}],[{"start":{"row":63,"column":5},"end":{"row":63,"column":6},"action":"insert","lines":[" "],"id":869}],[{"start":{"row":63,"column":5},"end":{"row":63,"column":6},"action":"remove","lines":[" "],"id":870},{"start":{"row":63,"column":4},"end":{"row":63,"column":5},"action":"remove","lines":["d"]},{"start":{"row":63,"column":3},"end":{"row":63,"column":4},"action":"remove","lines":["p"]},{"start":{"row":63,"column":2},"end":{"row":63,"column":3},"action":"remove","lines":["o"]},{"start":{"row":63,"column":1},"end":{"row":63,"column":2},"action":"remove","lines":["o"]},{"start":{"row":63,"column":0},"end":{"row":63,"column":1},"action":"remove","lines":["l"]}],[{"start":{"row":63,"column":0},"end":{"row":63,"column":1},"action":"insert","lines":["m"],"id":871},{"start":{"row":63,"column":1},"end":{"row":63,"column":2},"action":"insert","lines":["u"]},{"start":{"row":63,"column":2},"end":{"row":63,"column":3},"action":"insert","lines":["n"]},{"start":{"row":63,"column":3},"end":{"row":63,"column":4},"action":"insert","lines":["s"]},{"start":{"row":63,"column":4},"end":{"row":63,"column":5},"action":"insert","lines":["t"]},{"start":{"row":63,"column":5},"end":{"row":63,"column":6},"action":"insert","lines":["e"]},{"start":{"row":63,"column":6},"end":{"row":63,"column":7},"action":"insert","lines":["r"]},{"start":{"row":63,"column":7},"end":{"row":63,"column":8},"action":"insert","lines":["s"]}],[{"start":{"row":63,"column":8},"end":{"row":63,"column":9},"action":"insert","lines":[" "],"id":872}],[{"start":{"row":63,"column":8},"end":{"row":63,"column":9},"action":"remove","lines":[" "],"id":873},{"start":{"row":63,"column":7},"end":{"row":63,"column":8},"action":"remove","lines":["s"]}],[{"start":{"row":63,"column":6},"end":{"row":63,"column":7},"action":"remove","lines":["r"],"id":874},{"start":{"row":63,"column":5},"end":{"row":63,"column":6},"action":"remove","lines":["e"]},{"start":{"row":63,"column":4},"end":{"row":63,"column":5},"action":"remove","lines":["t"]},{"start":{"row":63,"column":3},"end":{"row":63,"column":4},"action":"remove","lines":["s"]}],[{"start":{"row":63,"column":3},"end":{"row":63,"column":4},"action":"insert","lines":["s"],"id":875},{"start":{"row":63,"column":4},"end":{"row":63,"column":5},"action":"insert","lines":["t"]},{"start":{"row":63,"column":5},"end":{"row":63,"column":6},"action":"insert","lines":["e"]},{"start":{"row":63,"column":6},"end":{"row":63,"column":7},"action":"insert","lines":["r"]},{"start":{"row":63,"column":7},"end":{"row":63,"column":8},"action":"insert","lines":["s"]},{"start":{"row":63,"column":8},"end":{"row":63,"column":9},"action":"insert","lines":["."]},{"start":{"row":63,"column":9},"end":{"row":63,"column":10},"action":"insert","lines":["e"]},{"start":{"row":63,"column":10},"end":{"row":63,"column":11},"action":"insert","lines":["a"]},{"start":{"row":63,"column":11},"end":{"row":63,"column":12},"action":"insert","lines":["c"]},{"start":{"row":63,"column":12},"end":{"row":63,"column":13},"action":"insert","lines":["h"]}],[{"start":{"row":63,"column":13},"end":{"row":63,"column":14},"action":"insert","lines":[" "],"id":876},{"start":{"row":63,"column":14},"end":{"row":63,"column":15},"action":"insert","lines":["|"]}],[{"start":{"row":63,"column":14},"end":{"row":63,"column":15},"action":"remove","lines":["|"],"id":877}],[{"start":{"row":63,"column":14},"end":{"row":63,"column":15},"action":"insert","lines":["{"],"id":878}],[{"start":{"row":63,"column":15},"end":{"row":63,"column":16},"action":"insert","lines":[" "],"id":879}],[{"start":{"row":63,"column":16},"end":{"row":63,"column":17},"action":"insert","lines":["|"],"id":880}],[{"start":{"row":63,"column":17},"end":{"row":63,"column":18},"action":"insert","lines":["h"],"id":881},{"start":{"row":63,"column":18},"end":{"row":63,"column":19},"action":"insert","lines":["a"]},{"start":{"row":63,"column":19},"end":{"row":63,"column":20},"action":"insert","lines":["s"]},{"start":{"row":63,"column":20},"end":{"row":63,"column":21},"action":"insert","lines":["h"]},{"start":{"row":63,"column":21},"end":{"row":63,"column":22},"action":"insert","lines":["|"]}],[{"start":{"row":63,"column":22},"end":{"row":64,"column":0},"action":"insert","lines":["",""],"id":882}],[{"start":{"row":64,"column":0},"end":{"row":64,"column":2},"action":"insert","lines":["  "],"id":883}],[{"start":{"row":64,"column":2},"end":{"row":64,"column":3},"action":"insert","lines":["h"],"id":884},{"start":{"row":64,"column":3},"end":{"row":64,"column":4},"action":"insert","lines":["a"]},{"start":{"row":64,"column":4},"end":{"row":64,"column":5},"action":"insert","lines":["s"]},{"start":{"row":64,"column":5},"end":{"row":64,"column":6},"action":"insert","lines":["h"]},{"start":{"row":64,"column":6},"end":{"row":64,"column":7},"action":"insert","lines":["."]},{"start":{"row":64,"column":7},"end":{"row":64,"column":8},"action":"insert","lines":["e"]},{"start":{"row":64,"column":8},"end":{"row":64,"column":9},"action":"insert","lines":["a"]},{"start":{"row":64,"column":9},"end":{"row":64,"column":10},"action":"insert","lines":["c"]},{"start":{"row":64,"column":10},"end":{"row":64,"column":11},"action":"insert","lines":["h"]}],[{"start":{"row":64,"column":11},"end":{"row":64,"column":12},"action":"insert","lines":[" "],"id":885},{"start":{"row":64,"column":12},"end":{"row":64,"column":13},"action":"insert","lines":["|"]}],[{"start":{"row":64,"column":11},"end":{"row":64,"column":12},"action":"insert","lines":["_"],"id":886},{"start":{"row":64,"column":12},"end":{"row":64,"column":13},"action":"insert","lines":["w"]},{"start":{"row":64,"column":13},"end":{"row":64,"column":14},"action":"insert","lines":["i"]},{"start":{"row":64,"column":14},"end":{"row":64,"column":15},"action":"insert","lines":["t"]},{"start":{"row":64,"column":15},"end":{"row":64,"column":16},"action":"insert","lines":["h"]}],[{"start":{"row":64,"column":7},"end":{"row":64,"column":16},"action":"remove","lines":["each_with"],"id":887},{"start":{"row":64,"column":7},"end":{"row":64,"column":22},"action":"insert","lines":["each_with_index"]}],[{"start":{"row":64,"column":24},"end":{"row":64,"column":25},"action":"insert","lines":[" "],"id":888}],[{"start":{"row":64,"column":24},"end":{"row":64,"column":25},"action":"remove","lines":[" "],"id":889}],[{"start":{"row":63,"column":0},"end":{"row":64,"column":24},"action":"remove","lines":["munsters.each { |hash|","  hash.each_with_index |"],"id":890},{"start":{"row":62,"column":0},"end":{"row":63,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":62,"column":0},"end":{"row":63,"column":0},"action":"insert","lines":["",""],"id":891},{"start":{"row":63,"column":0},"end":{"row":63,"column":1},"action":"insert","lines":["m"]},{"start":{"row":63,"column":1},"end":{"row":63,"column":2},"action":"insert","lines":["u"]},{"start":{"row":63,"column":2},"end":{"row":63,"column":3},"action":"insert","lines":["n"]},{"start":{"row":63,"column":3},"end":{"row":63,"column":4},"action":"insert","lines":["s"]},{"start":{"row":63,"column":4},"end":{"row":63,"column":5},"action":"insert","lines":["t"]},{"start":{"row":63,"column":5},"end":{"row":63,"column":6},"action":"insert","lines":["e"]},{"start":{"row":63,"column":6},"end":{"row":63,"column":7},"action":"insert","lines":["r"]},{"start":{"row":63,"column":7},"end":{"row":63,"column":8},"action":"insert","lines":["s"]}],[{"start":{"row":63,"column":8},"end":{"row":63,"column":10},"action":"insert","lines":["[]"],"id":892}],[{"start":{"row":63,"column":9},"end":{"row":63,"column":10},"action":"insert","lines":["k"],"id":893},{"start":{"row":63,"column":10},"end":{"row":63,"column":11},"action":"insert","lines":["e"]},{"start":{"row":63,"column":11},"end":{"row":63,"column":12},"action":"insert","lines":["y"]}],[{"start":{"row":63,"column":13},"end":{"row":63,"column":15},"action":"insert","lines":["[]"],"id":894}],[{"start":{"row":63,"column":14},"end":{"row":63,"column":15},"action":"insert","lines":["k"],"id":895},{"start":{"row":63,"column":15},"end":{"row":63,"column":16},"action":"insert","lines":["e"]},{"start":{"row":63,"column":16},"end":{"row":63,"column":17},"action":"insert","lines":["y"]}],[{"start":{"row":63,"column":17},"end":{"row":63,"column":18},"action":"remove","lines":["]"],"id":896},{"start":{"row":63,"column":16},"end":{"row":63,"column":17},"action":"remove","lines":["y"]},{"start":{"row":63,"column":15},"end":{"row":63,"column":16},"action":"remove","lines":["e"]},{"start":{"row":63,"column":14},"end":{"row":63,"column":15},"action":"remove","lines":["k"]}],[{"start":{"row":63,"column":14},"end":{"row":63,"column":15},"action":"insert","lines":["0"],"id":897},{"start":{"row":63,"column":15},"end":{"row":63,"column":16},"action":"insert","lines":["]"]}],[{"start":{"row":63,"column":16},"end":{"row":64,"column":0},"action":"insert","lines":["",""],"id":898}],[{"start":{"row":63,"column":0},"end":{"row":63,"column":1},"action":"insert","lines":["p"],"id":899}],[{"start":{"row":63,"column":1},"end":{"row":63,"column":2},"action":"insert","lines":[" "],"id":900}],[{"start":{"row":63,"column":10},"end":{"row":63,"column":11},"action":"remove","lines":["["],"id":901}],[{"start":{"row":63,"column":13},"end":{"row":63,"column":14},"action":"remove","lines":["]"],"id":902}],[{"start":{"row":63,"column":10},"end":{"row":63,"column":11},"action":"insert","lines":["."],"id":903}],[{"start":{"row":63,"column":14},"end":{"row":63,"column":15},"action":"insert","lines":["s"],"id":904}],[{"start":{"row":63,"column":17},"end":{"row":63,"column":18},"action":"remove","lines":["]"],"id":905},{"start":{"row":63,"column":16},"end":{"row":63,"column":17},"action":"remove","lines":["0"]},{"start":{"row":63,"column":15},"end":{"row":63,"column":16},"action":"remove","lines":["["]}],[{"start":{"row":63,"column":15},"end":{"row":63,"column":16},"action":"insert","lines":["."],"id":906},{"start":{"row":63,"column":16},"end":{"row":63,"column":17},"action":"insert","lines":["k"]},{"start":{"row":63,"column":17},"end":{"row":63,"column":18},"action":"insert","lines":["e"]},{"start":{"row":63,"column":18},"end":{"row":63,"column":19},"action":"insert","lines":["y"]},{"start":{"row":63,"column":19},"end":{"row":63,"column":20},"action":"insert","lines":["s"]}],[{"start":{"row":63,"column":11},"end":{"row":63,"column":15},"action":"remove","lines":["keys"],"id":907},{"start":{"row":63,"column":11},"end":{"row":63,"column":12},"action":"insert","lines":["v"]},{"start":{"row":63,"column":12},"end":{"row":63,"column":13},"action":"insert","lines":["a"]},{"start":{"row":63,"column":13},"end":{"row":63,"column":14},"action":"insert","lines":["l"]},{"start":{"row":63,"column":14},"end":{"row":63,"column":15},"action":"insert","lines":["u"]},{"start":{"row":63,"column":15},"end":{"row":63,"column":16},"action":"insert","lines":["e"]},{"start":{"row":63,"column":16},"end":{"row":63,"column":17},"action":"insert","lines":["s"]}],[{"start":{"row":63,"column":21},"end":{"row":63,"column":22},"action":"remove","lines":["s"],"id":908},{"start":{"row":63,"column":20},"end":{"row":63,"column":21},"action":"remove","lines":["y"]},{"start":{"row":63,"column":19},"end":{"row":63,"column":20},"action":"remove","lines":["e"]},{"start":{"row":63,"column":18},"end":{"row":63,"column":19},"action":"remove","lines":["k"]},{"start":{"row":63,"column":17},"end":{"row":63,"column":18},"action":"remove","lines":["."]}]]},"ace":{"folds":[],"scrolltop":801.5,"scrollleft":0,"selection":{"start":{"row":66,"column":9},"end":{"row":66,"column":9},"isBackwards":false},"options":{"tabSize":2,"useSoftTabs":true,"guessTabSize":false,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1616528074388}