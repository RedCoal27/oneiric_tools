data modify storage oneiric_tools:string input prepend value {type:"concatenation","value1":"",value2:" string optimisé et oui jamy",callback:'tellraw _RedCoal_ {"storage":"oneiric_tools:string","nbt":"output"}'}
data modify storage oneiric_tools:string input[0].value1 set from storage oneiric_tools:string output


tellraw _RedCoal_ {"storage":"oneiric_tools:string","nbt":"output"}