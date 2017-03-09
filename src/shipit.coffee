# Description:
#   Rodent Motivation
#
#   Set the environment variable HUBOT_SHIP_EXTRA_SQUIRRELS (to anything)
#   for additional motivation
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_SHIP_EXTRA_SQUIRRELS
#
# Commands:
#   ship it - Display a motivation squirrel
#
# Author:
#   maddox

squirrels = [
  "https://i.imgur.com/RLQpXfX.png",
  "https://28.media.tumblr.com/tumblr_lybw63nzPp1r5bvcto1_500.jpg",
  "https://i.imgur.com/nxMZSJi.png",
  "https://i.imgur.com/DPVM1.png",
  "https://i.imgur.com/DEnnA6m.jpg",
  "https://i.imgur.com/oHJIlXI.jpg",
  "https://i.imgur.com/BVpkdrU.jpg",
  "https://i.imgur.com/NSanWiX.jpg",
  "https://i.imgur.com/TEVqIZQ.jpg",
  "https://i.imgur.com/mUuDkyK.jpg",
  "https://i.imgur.com/ERCNrhd.jpg",
  "https://i.imgur.com/5eaSw6w.jpg",
  "https://i.imgur.com/R2jeJBB.png",
  "https://i.imgur.com/aTco5L6.jpg",
  "https://i.imgur.com/D0GQ9Jl.jpg",
  "https://i.imgur.com/rYayJdG.jpg",
  "https://i.imgur.com/PZSskiQ.jpg",
  "https://i.imgur.com/dMsItP3.jpg",
  "https://i.imgur.com/yrK61Pj.jpg",
  "https://i.imgur.com/mw4X8mw.jpg",
  "https://i.imgur.com/s9FRxn2.jpg",
  "https://i.imgur.com/ljyZ3hZ.png",
  "https://i.imgur.com/UyexmV4.jpg",
  "https://i.imgur.com/jiIYOsZ.jpg",
  "https://i.imgur.com/M3BSAAT.jpg",
  "https://i.imgur.com/sA1h34D.jpg",
]

module.exports = (robot) ->

  # Enable a looser regex if environment variable is set
  if process.env.HUBOT_SHIP_EXTRA_SQUIRRELS
    regex = /\bship(ping|z|s|ped)?\s*it\b/i
  else
    regex = /\bship\s*it\b/i

  robot.hear regex, (msg) ->
    msg.send msg.random squirrels
