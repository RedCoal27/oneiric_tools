# Before anything

This datapack is made by \_RedCoal\_ for the OneiricForge map.
You can use it for your own map, but you must credit us.

# What is this datapack

This datapack add few random tools that can be used for minecraft map.

# List of tools

- get the computers time's
- get the UNIX timestamp from skulls
- get Skin url and Cape in a decimal list
- get the actual Skin Variant
- string manipulation (for now only the concatenation but more to come)

Note: once you got the skull of a player, the data is stored in cache and doesn't update anymore until a reboot.

# How to use it

## skull data

To get data from player head you can use  `/function oneiric_tools:get/whateweryouwant`

The function "all" get all the data from the head. The default head is _RedCoal_2, if you want to use your own head, use `/data modify storage oneiric_tools:head Name set value "name"` before the function.

## string manipulation

To start a string manipulation, you have to append a value in the storage oneiric_tools:string for input. A value is represented like this:

```
{type:"operation",values:[{text:"string",interpret:0}],callback:"command"}
```

- the callback is a commande that will be execute when the string manipulation is done. The command is execute before the next string maniplation in the tick, that allow to use the output and do another manipulation before the next if needed or simply use the output.
- the operation type is the action you want to do. For now only "concatenation" is available.
- the values is a list of value that will be used for the operation. Each value is compose of 2 element: text (a string) and interpret (a boolean value). If interpret is true, the json will be interpret before the action, else it will be used as a string.

Concatenation example:

- Death note:

```
/data modify storage oneiric_tools:string input append value {type:"concatenation",values:[{text:"kill @a[name='"},{text:'{"nbt":"SelectedItem.tag.pages[0]","entity":"@p"}',interpret:true},{text:"']"}],callback:"function oneiric_tools:run_command"}
```

In this example, you took a writable_book and write the name of the player you want to kill and it will generate the command `kill @a[name='name']` and execute it.
I don't use the name directly to prevent from injection like "@a" that would kill anyone.

If you need to execute a generated command before the next string manipulation, you can run the function `oneiric_tools:run_command` in the callback.


## Special thanx
- Zpiboo to have found an easy way to split a string from a json
