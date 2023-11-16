<p align="center">
  <a href="https://youtu.be/X9qKODb-wXg">
    <img src="https://github.com/kevinthompson/object-oriented-pico-8/blob/main/assets/title.png?raw=true" />
  </a>
</p>

# About
This is the partner repository to my video on "Object Oriented Programming in PICO-8" which you can [watch on YouTube](https://youtu.be/X9qKODb-wXg). Below you'll find a couple samples from the video with links to additional resources.

Over the course of the video we build up class inheritance logic that ultimately looks something like this (in case you're looking for a quick snippet to get started 😄):

```lua
class=setmetatable({
  new=function(_ENV,tbl)
    return setmetatable(tbl or {},{
      __index=_ENV
    })
  end,
},{__index=_ENV})
```

In this repo I've included two cartridges:
<table>
<tr>
  <td>
    <a href="https://github.com/kevinthompson/object-oriented-pico-8/blob/main/starfield.p8">starfield.p8</a>
  </td>
  <td>This is the cartridge that we build up in the video, creating a field of stars using object oriented programming.</td>
</tr>
<tr>
  <td>
    <a href="https://github.com/kevinthompson/object-oriented-pico-8/blob/main/heartseeker.p8">heartseeker.p8</a>
  </td>
  <td>
    This cartridge expands on the initial logic we explore in the video and creates several additional objects. It was originally created for the video but became too complicated to explain concisely.
  </td>
</tr>
  
</table>


# Metatables

Metatables are a feature of LUA that allow you to change the behavior of a table. In the video above we use the `__index` metamethod to setup class inheritance and object instantiation.

Additional Resources:
- [LUA Metatable Documentation](https://www.lua.org/pil/13.html)

# Environments

In LUA, the global environment is a table that can be accessed using `_ENV`. The current environment can also be reassigned. Using information from the article below, we apply that technique in order to reduce the number of tokens used.

Additional Resources:
- [Using _ENV in PICO-8](https://www.lexaloffle.com/bbs/?tid=49047) by slainte
