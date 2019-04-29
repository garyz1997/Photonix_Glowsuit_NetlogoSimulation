'''Templated code to add to final .ino file.'''

# Code strings templates
LOOP_BEGIN = '''
to go
  let t-now time:create "now"
  let counter 0
'''

LOOP_END = '''
  sound:play-sound "song2.wav"
  while [counter < length musiclist] [
    if stop_song = 1 [stop]

    print time:difference-between (t-now) (time:create "now") "seconds"
    tick
    if item counter musiclist < time:difference-between (t-now) (time:create "now") "seconds" [
      p1_lights item counter p1_1 item counter p1_2 item counter p1_3 item counter p1_4 item counter p1_5 item counter p1_6 item counter p1_7 item counter p1_8
      p2_lights item counter p2_1 item counter p2_2 item counter p2_3 item counter p2_4 item counter p2_5 item counter p2_6 item counter p2_7 item counter p2_8
      p3_lights item counter p3_1 item counter p3_2 item counter p3_3 item counter p3_4 item counter p3_5 item counter p3_6 item counter p3_7 item counter p3_8
      p4_lights item counter p4_1 item counter p4_2 item counter p4_3 item counter p4_4 item counter p4_5 item counter p4_6 item counter p4_7 item counter p4_8
      type "did time: " type item counter musiclist type "\\n"
      set counter counter + 1]
  ]
end
'''

SETUP = '''
extensions [sound time]
globals[
  tick-datetime
  tick-date
  tick-day
  ts
  p1_1
  p1_2
  p1_3
  p1_4
  p1_5
  p1_6
  p1_7
  p1_8
  p2_1
  p2_2
  p2_3
  p2_4
  p2_5
  p2_6
  p2_7
  p2_8
  p3_1
  p3_2
  p3_3
  p3_4
  p3_5
  p3_6
  p3_7
  p3_8
  p4_1
  p4_2
  p4_3
  p4_4
  p4_5
  p4_6
  p4_7
  p4_8
]
breed [left_arms left_arm]
breed [right_arms right_arm]
breed [left_legs left_leg]
breed [right_legs right_leg]
breed [head_backs head_back]
breed [yellow_ps yellow_p]
breed [red_ps red_p]
breed [white_bottoms white_bottom]


to setup
  clear-all
  reset-ticks
  set-default-shape left_arms "left_arm"
  set-default-shape right_arms "right_arm"
  set-default-shape left_legs "left_leg"
  set-default-shape right_legs "right_leg"
  set-default-shape head_backs "head_back"
  set-default-shape yellow_ps "yellow_p"
  set-default-shape red_ps "red_p"
  set-default-shape white_bottoms "white_bottom"
  ask patches [set pcolor black]
  ;p1
  create-left_arms 1 [set size 20 set heading 0 set xcor -40 set ycor 5]
  create-right_arms 1 [set size 20 set heading 0 set xcor -50 set ycor 5]
  create-left_legs 1 [set size 20 set heading 0 set xcor -43 set ycor -5]
  create-right_legs 1 [set size 20 set heading 0 set xcor -47 set ycor -5]
  create-head_backs 1 [set size 20 set heading 0 set xcor -45 set ycor 13]
  create-yellow_ps 1 [set size 20 set heading 0 set xcor -45 set ycor 7]
  create-red_ps 1 [set size 20 set heading 0 set xcor -45 set ycor 7]
  create-white_bottoms 1 [set size 20 set heading 0 set xcor -45 set ycor 3]
  ;p2
  create-left_arms 1 [set size 20 set heading 0 set xcor -10 set ycor 5]
  create-right_arms 1 [set size 20 set heading 0 set xcor -20 set ycor 5]
  create-left_legs 1 [set size 20 set heading 0 set xcor -13 set ycor -5]
  create-right_legs 1 [set size 20 set heading 0 set xcor -17 set ycor -5]
  create-head_backs 1 [set size 20 set heading 0 set xcor -15 set ycor 13]
  create-yellow_ps 1 [set size 20 set heading 0 set xcor -15 set ycor 7]
  create-red_ps 1 [set size 20 set heading 0 set xcor -15 set ycor 7]
  create-white_bottoms 1 [set size 20 set heading 0 set xcor -15 set ycor 3]
  ;p3
  create-left_arms 1 [set size 20 set heading 0 set xcor 20 set ycor 5]
  create-right_arms 1 [set size 20 set heading 0 set xcor 10 set ycor 5]
  create-left_legs 1 [set size 20 set heading 0 set xcor 17 set ycor -5]
  create-right_legs 1 [set size 20 set heading 0 set xcor 13 set ycor -5]
  create-head_backs 1 [set size 20 set heading 0 set xcor 15 set ycor 13]
  create-yellow_ps 1 [set size 20 set heading 0 set xcor 15 set ycor 7]
  create-red_ps 1 [set size 20 set heading 0 set xcor 15 set ycor 7]
  create-white_bottoms 1 [set size 20 set heading 0 set xcor 15 set ycor 3]
  ;p4
  create-left_arms 1 [set size 20 set heading 0 set xcor 50 set ycor 5]
  create-right_arms 1 [set size 20 set heading 0 set xcor 40 set ycor 5]
  create-left_legs 1 [set size 20 set heading 0 set xcor 47 set ycor -5]
  create-right_legs 1 [set size 20 set heading 0 set xcor 43 set ycor -5]
  create-head_backs 1 [set size 20 set heading 0 set xcor 45 set ycor 13]
  create-yellow_ps 1 [set size 20 set heading 0 set xcor 45 set ycor 7]
  create-red_ps 1 [set size 20 set heading 0 set xcor 45 set ycor 7]
  create-white_bottoms 1 [set size 20 set heading 0 set xcor 45 set ycor 3]

'''

LIGHTS_FUNCTIONS = '''

to p1_lights [aa bb cc dd ee ff gg hh]
  ifelse aa = 0
  [ask left_arm 0 [ set hidden? true ]]
  [ask left_arm 0 [ set hidden? false ]]
  ifelse bb = 0
  [ask right_arm 1 [ set hidden? true ]]
  [ask right_arm 1 [ set hidden? false ]]
  ifelse cc = 0
  [ask left_leg 2 [ set hidden? true ]]
  [ask left_leg 2 [ set hidden? false ]]
  ifelse dd = 0
  [ask right_leg 3 [ set hidden? true ]]
  [ask right_leg 3 [ set hidden? false ]]
  ifelse ee = 0
  [ask head_back 4 [ set hidden? true ]]
  [ask head_back 4 [ set hidden? false ]]
  ifelse gg = 0
  [ask yellow_p 5 [ set hidden? true ]]
  [ask yellow_p 5 [ set hidden? false ]]
  ifelse hh = 0
  [ask red_p 6 [ set hidden? true ]]
  [ask red_p 6 [ set hidden? false ]]
  ifelse ff    = 0
  [ask white_bottom 7 [ set hidden? true ]]
  [ask white_bottom 7 [ set hidden? false ]]
end

to p2_lights [aa bb cc dd ee ff gg hh]
  ifelse aa = 0
  [ask left_arm 8 [ set hidden? true ]]
  [ask left_arm 8 [ set hidden? false ]]
  ifelse bb = 0
  [ask right_arm 9 [ set hidden? true ]]
  [ask right_arm 9 [ set hidden? false ]]
  ifelse cc = 0
  [ask left_leg 10 [ set hidden? true ]]
  [ask left_leg 10 [ set hidden? false ]]
  ifelse dd = 0
  [ask right_leg 11 [ set hidden? true ]]
  [ask right_leg 11 [ set hidden? false ]]
  ifelse ee = 0
  [ask head_back 12 [ set hidden? true ]]
  [ask head_back 12 [ set hidden? false ]]
  ifelse gg = 0
  [ask yellow_p 13 [ set hidden? true ]]
  [ask yellow_p 13 [ set hidden? false ]]
  ifelse hh = 0
  [ask red_p 14 [ set hidden? true ]]
  [ask red_p 14 [ set hidden? false ]]
  ifelse ff = 0
  [ask white_bottom 15 [ set hidden? true ]]
  [ask white_bottom 15 [ set hidden? false ]]
end

to p3_lights [aa bb cc dd ee ff gg hh]
  ifelse aa = 0
  [ask left_arm 16 [ set hidden? true ]]
  [ask left_arm 16 [ set hidden? false ]]
  ifelse bb = 0
  [ask right_arm 17 [ set hidden? true ]]
  [ask right_arm 17 [ set hidden? false ]]
  ifelse cc = 0
  [ask left_leg 18 [ set hidden? true ]]
  [ask left_leg 18 [ set hidden? false ]]
  ifelse dd = 0
  [ask right_leg 19 [ set hidden? true ]]
  [ask right_leg 19 [ set hidden? false ]]
  ifelse ee = 0
  [ask head_back 20 [ set hidden? true ]]
  [ask head_back 20 [ set hidden? false ]]
  ifelse gg = 0
  [ask yellow_p 21 [ set hidden? true ]]
  [ask yellow_p 21 [ set hidden? false ]]
  ifelse hh = 0
  [ask red_p 22 [ set hidden? true ]]
  [ask red_p 22 [ set hidden? false ]]
  ifelse ff = 0
  [ask white_bottom 23 [ set hidden? true ]]
  [ask white_bottom 23 [ set hidden? false ]]
end

to p4_lights [aa bb cc dd ee ff gg hh]
  ifelse aa = 0
  [ask left_arm 24 [ set hidden? true ]]
  [ask left_arm 24 [ set hidden? false ]]
  ifelse bb = 0
  [ask right_arm 25 [ set hidden? true ]]
  [ask right_arm 25 [ set hidden? false ]]
  ifelse cc = 0
  [ask left_leg 26 [ set hidden? true ]]
  [ask left_leg 26 [ set hidden? false ]]
  ifelse dd = 0
  [ask right_leg 27 [ set hidden? true ]]
  [ask right_leg 27 [ set hidden? false ]]
  ifelse ee = 0
  [ask head_back 28 [ set hidden? true ]]
  [ask head_back 28 [ set hidden? false ]]
  ifelse gg = 0
  [ask yellow_p 29 [ set hidden? true ]]
  [ask yellow_p 29 [ set hidden? false ]]
  ifelse hh = 0
  [ask red_p 30 [ set hidden? true ]]
  [ask red_p 30 [ set hidden? false ]]
  ifelse ff = 0
  [ask white_bottom 31 [ set hidden? true ]]
  [ask white_bottom 31 [ set hidden? false ]]
end

;T-pose
  ;p1
  ;create-left_arms 1 [set size 20 set heading -90 set xcor -37 set ycor 10]
  ;create-right_arms 1 [set size 20 set heading 90 set xcor -53 set ycor 10]
  ;create-left_legs 1 [set size 20 set heading 0 set xcor -43 set ycor -5]
  ;create-right_legs 1 [set size 20 set heading 0 set xcor -47 set ycor -5]
  ;create-head_backs 1 [set size 20 set heading 0 set xcor -45 set ycor 13]
  ;create-yellow_ps 1 [set size 20 set heading 0 set xcor -45 set ycor 7]
  ;create-red_ps 1 [set size 20 set heading 0 set xcor -45 set ycor 7]
  ;create-white_bottoms 1 [set size 20 set heading 0 set xcor -45 set ycor 3]
  ;;p2
  ;create-left_arms 1 [set size 20 set heading -90 set xcor -7 set ycor 10]
  ;create-right_arms 1 [set size 20 set heading 90 set xcor -23 set ycor 10]
  ;create-left_legs 1 [set size 20 set heading 0 set xcor -13 set ycor -5]
  ;create-right_legs 1 [set size 20 set heading 0 set xcor -17 set ycor -5]
  ;create-head_backs 1 [set size 20 set heading 0 set xcor -15 set ycor 13]
  ;create-yellow_ps 1 [set size 20 set heading 0 set xcor -15 set ycor 7]
  ;create-red_ps 1 [set size 20 set heading 0 set xcor -15 set ycor 7]
  ;create-white_bottoms 1 [set size 20 set heading 0 set xcor -15 set ycor 3]
  ;;p3
  ;create-left_arms 1 [set size 20 set heading -90 set xcor 23 set ycor 10]
  ;create-right_arms 1 [set size 20 set heading 90 set xcor 7 set ycor 10]
  ;create-left_legs 1 [set size 20 set heading 0 set xcor 17 set ycor -5]
  ;create-right_legs 1 [set size 20 set heading 0 set xcor 13 set ycor -5]
  ;create-head_backs 1 [set size 20 set heading 0 set xcor 15 set ycor 13]
  ;create-yellow_ps 1 [set size 20 set heading 0 set xcor 15 set ycor 7]
  ;create-red_ps 1 [set size 20 set heading 0 set xcor 15 set ycor 7]
  ;create-white_bottoms 1 [set size 20 set heading 0 set xcor 15 set ycor 3]
  ;;p4
  ;create-left_arms 1 [set size 20 set heading -90 set xcor 53 set ycor 10]
  ;create-right_arms 1 [set size 20 set heading 90 set xcor 37 set ycor 10]
  ;create-left_legs 1 [set size 20 set heading 0 set xcor 47 set ycor -5]
  ;create-right_legs 1 [set size 20 set heading 0 set xcor 43 set ycor -5]
  ;create-head_backs 1 [set size 20 set heading 0 set xcor 45 set ycor 13]
  ;create-yellow_ps 1 [set size 20 set heading 0 set xcor 45 set ycor 7]
  ;create-red_ps 1 [set size 20 set heading 0 set xcor 45 set ycor 7]
  ;create-white_bottoms 1 [set size 20 set heading 0 set xcor 45 set ycor 3]
'''
