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

  set p1_1 [ 0 1 1 0 0 0 1 1 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 1 1 1 1 0 0 0 0 1 1 1 0 0 0 0 0 1 0 0 0 0 1 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 0 0 0 0 0 0 1 0 0 1 1 1 0 0 0 0 1 0 1 1 0 1 0 0 0 0 0 1 1 1 0 0 0 1 1 1 1 1 1 1 0 0 0 1 0 0 0 0 0 1 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0 1 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 0 0 0 0 0 1 1 1 1 0 0 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 0 0 0]
  set p1_2 [ 0 1 1 0 0 0 1 1 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 1 1 1 1 0 0 0 0 1 1 1 0 0 0 0 0 1 0 0 0 0 1 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 0 0 0 0 0 0 1 0 0 1 1 1 0 0 0 0 1 0 1 1 0 1 0 0 0 0 0 1 1 1 0 0 0 0 0 0 1 1 1 1 0 0 0 1 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0 1 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 1 1 0 1 1 1 1 1 0 1 1 1 0 0 0 0 0 0 1 1 1 1 0 0 0 1 0 0 0 1 1 0 1 0 0 0 1 1 0 0 1 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 0 0 0]
  set p1_3 [ 0 1 1 0 1 1 1 1 0 0 0 0 0 0 1 0 0 0 1 0 0 0 1 0 1 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 1 0 0 0 0 1 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 0 0 1 0 1 1 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 1 0 0 0 0 0 1 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0]
  set p1_4 [ 0 1 1 0 1 1 1 1 0 0 0 0 0 0 1 0 0 0 1 0 0 0 1 0 1 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 1 0 0 0 0 1 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 1 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 0 0 1 0 1 1 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 1 0 0 0 0 0 1 1 0 0 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0]
  set p1_5 [ 0 1 1 0 0 1 1 1 0 0 0 0 0 0 1 0 0 0 1 0 0 0 1 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 0 0 0 0 1 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 0 0 0 0 0 1 1 0 0 1 1 1 1 0 0 0 1 0 1 1 0 1 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 1 0 0 0 1 0 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 1 0 1 1 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 1 0 0 0 0 0 0 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 1 1 0 1 1 0 0 0 0 1 1 1 1 1 0 0 0 0]
  set p1_6 [ 0 1 1 0 0 1 1 1 0 0 0 0 0 0 1 0 0 0 1 0 0 0 1 0 1 1 0 0 0 0 0 0 1 1 1 0 0 0 0 0 1 0 0 0 0 1 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 1 1 0 0 1 0 1 1 0 1 0 0 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 1 1 1 1 1 0 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 0 0 0 1 0 1 1 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 1 0 0 0 0 0 0 1 0 0 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 0 0 0 0]
  set p1_7 [ 0 1 1 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 1 0 0 0 1 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 0 0 0 0 1 1 1 1 1 0 0 0 1 1 1 0 0 1 1 1 1 0 0 0 0 1 1 0 0 1 1 1 1 0 0 0 1 0 1 1 0 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 1 0 0 0 1 0 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 1 0 1 1 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 1 0 0 0 0 0 0 1 0 0 0 1 1 0 0 0 1 0 0 0 0 0 0 1 0 0 1 0 0 0 0 1 0 0 0 0 1 0 1 0 1 0 1 1 1 0 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 0 0 0]
  set p1_8 [ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0]
  set p2_1 [ 0 0 0 0 0 0 1 1 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 1 1 1 0 0 0 1 0 0 0 0 1 1 1 0 0 0 0 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 0 0 0 0 1 0 0 1 0 1 0 0 0 0 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 0]
  set p2_2 [ 0 0 0 0 0 0 1 1 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 1 1 1 0 0 0 1 0 0 0 0 1 1 1 0 0 0 0 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 0 0 1 1 0 0 0 0 1 0 0 1 0 1 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 1 1 1 1 0 0 0 1 1 1 0 0 0 1 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 1 1 1 0 1 1 1 0 1 0 1 1 1 1 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 0]
  set p2_3 [ 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 1 1 1 1 0 0 0 0 0 1 1 0 0 0 1 1 1 0 0 0 0 0 1 1 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 0 0 0 1 0 0 0 1 1 1 1 1 0 1 0 0 1 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 1 1 1 0 0 0 0 1 1 0 1 1 1 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0]
  set p2_4 [ 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 1 1 1 1 0 0 0 0 0 1 1 0 0 0 1 1 1 0 0 0 0 0 1 1 1 1 0 0 0 1 1 0 0 0 1 1 0 0 0 0 0 0 1 0 0 0 1 1 1 1 1 0 1 0 0 1 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 1 1 1 0 0 0 0 1 1 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0]
  set p2_5 [ 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 1 1 0 0 0 0 0 1 0 0 0 0 1 1 1 0 0 0 0 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 1 1 0 0 1 1 1 0 0 0 1 1 1 0 0 0 1 0 0 1 0 1 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 1 1 1 0 0 0 0 0 1 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 0 1 1 1 1 0 0 0 0 1 1 1 1 1 0 0 0 0]
  set p2_6 [ 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 1 1 1 0 0 0 0 0 1 0 0 0 0 1 1 1 0 0 0 0 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 1 0 0 0 0 1 1 0 0 0 1 1 1 1 0 0 1 0 0 1 0 1 0 0 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 1 1 1 0 0 0 0 0 1 0 1 1 1 1 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 0 0 0 0]
  set p2_7 [ 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 1 1 0 0 0 0 0 1 0 0 0 0 1 1 1 0 0 0 0 1 1 1 1 1 0 0 0 1 1 0 0 0 1 1 1 0 0 0 1 1 1 0 0 0 1 1 1 0 0 0 1 0 0 1 0 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 0 0 1 0 1 0 1 0 0 0 0 0 0 0 1 1 1 0 0 1 1 1 0 0 0 0 0 1 0 1 1 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 1 0 1 0 1 0 1 1 1 0 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 0 0]
  set p2_8 [ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0]
  set p3_1 [ 0 0 1 1 1 1 0 0 0 0 1 0 0 0 0 1 0 1 0 0 0 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0 1 0 1 1 0 1 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 1 0 0 0 0 1 1 1 0 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 0 0 1 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0 0 0 0]
  set p3_2 [ 0 0 1 1 1 1 0 0 0 0 1 0 0 0 0 1 0 1 0 0 0 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0 1 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 1 1 1 0 0 0 1 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 1 0 0 0 0 1 1 1 0 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 1 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0 0 0 0]
  set p3_3 [ 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 1 1 0 1 0 0 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 0]
  set p3_4 [ 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 1 1 0 1 0 0 0 0 0 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0 0 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 0]
  set p3_5 [ 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 0 0 1 0 1 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 1 0 0 0 0 1 1 1 1 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 1 0 1 1 1 0 0 0 0 1 1 1 1 1 0 0 0 0]
  set p3_6 [ 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 1 1 0 1 1 0 0 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 0 1 1 0 1 1 1 1 1 1 0 0 1 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 1 0 0 0 0 1 1 0 0 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 0 0 0 0]
  set p3_7 [ 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 1 0 1 0 0 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1 0 0 1 1 1 1 1 1 1 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 0 0 1 1 1 0 1 1 1 1 1 0 0 0 1 0 1 1 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 1 0 0 0 0 1 1 0 0 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 1 0 1 0 1 1 1 0 0 1 1 0 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0]
  set p3_8 [ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]
  set p4_1 [ 0 0 1 1 1 1 0 0 0 1 1 1 0 1 0 0 0 0 0 1 0 0 0 1 0 0 0 0 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 0 0 1 0 0 0 0 0 1 1 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 0]
  set p4_2 [ 0 0 1 1 1 1 0 0 0 1 1 1 0 1 0 0 0 0 0 1 0 0 0 1 0 0 0 0 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 1 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1 0 1 1 1 0 0 0 1 1 1 1 1 1 0 0 0 0 0 1 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 1 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 0]
  set p4_3 [ 0 0 1 1 0 0 0 0 0 1 1 1 0 1 0 0 0 0 0 1 0 0 0 1 0 1 1 1 1 0 0 0 0 1 1 1 0 0 1 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 0 0 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 1 0 0 0 0 1 1 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0]
  set p4_4 [ 0 0 1 1 0 0 0 0 0 1 1 1 0 1 0 0 0 0 0 1 0 0 0 1 0 1 1 1 1 0 0 0 0 1 1 1 0 0 1 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 1 1 1 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 0 0 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 1 0 0 0 0 1 1 0 0 0 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 1 0 1 1 1 1 1 1 0 1 1 1 1 1 0 0 0 0]
  set p4_5 [ 0 0 1 1 1 0 0 0 0 1 1 1 0 1 0 0 0 0 0 1 0 0 0 1 0 0 0 1 1 0 0 0 0 1 1 0 0 0 1 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1 1 0 0 0 0 1 1 0 0 0 1 0 0 1 1 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 1 1 1 0 1 0 0 0 0 1 1 1 1 1 0 0 0 0]
  set p4_6 [ 0 0 1 1 1 0 0 0 0 1 1 1 0 1 0 0 0 0 0 1 0 0 0 1 0 0 1 1 1 0 0 0 0 1 1 0 0 0 1 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 1 1 0 0 0 1 1 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 1 1 1 1 0 0 1 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1 1 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 1 1 0 1 1 1 1 0 0 1 1 1 1 1 0 0 0 0]
  set p4_7 [ 0 0 1 1 1 1 1 0 0 1 1 1 0 1 0 0 0 0 0 1 0 0 0 1 0 0 0 1 1 0 0 0 0 1 1 0 0 0 1 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 1 1 0 0 0 0 1 1 0 0 0 0 1 1 0 0 0 1 0 0 1 1 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 1 1 1 1 1 1 1 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 0 1 0 0 0 1 0 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 1 0 1 0 1 0 1 0 1 1 1 0 0 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 0]
  set p4_8 [ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 1 0 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]

end
to go
  let t-now time:create "now"
  let counter 0
  let musiclist [ 0 13.55 17.475 17.575 20.939999999999998 21.145 21.314999999999998 21.750999999999998 24.104 24.204 26.347 29.250999999999998 32.896 33.176 33.246 33.316 33.386 33.737 33.807 33.877 33.947 34.298 34.858 36.541 37.662 39.064 39.134 39.204 39.274 41.698 41.798 43.480000000000004 44.111000000000004 45.407000000000004 46.634 47.936 48.216 48.497 48.777 49.058 49.338 49.618 49.899 50.179 50.284 51.931000000000004 52.142 52.702 53.824 56.347 62.02 68.40299999999999 68.964 69.52499999999999 70.085 70.646 70.786 71.207 71.347 71.487 71.628 74.57199999999999 74.79899999999999 75.13199999999999 75.518 75.553 75.588 75.62299999999999 79.618 80.17899999999999 80.74 81.3 81.86099999999999 83.54299999999999 83.75399999999999 83.92899999999999 84.244 84.66499999999999 84.765 85.946 86.157 86.907 88.02499999999999 89.386 89.877 90.359 90.6 90.96 91.259 91.49799999999999 91.737 96.08399999999999 96.74799999999999 97.16499999999999 97.701 97.99799999999999 98.53399999999999 99.00999999999999 99.54599999999999 99.90299999999999 108.94099999999999 109.17899999999999 109.41699999999999 109.71499999999999 110.122 110.598 117.75099999999999 118.22699999999999 118.70299999999999 119.17899999999999 119.824 123.58399999999999 127.27499999999999 127.75099999999999 128.227 128.703 129.179 129.417 129.655 129.893 130.131 130.369 130.607 130.845 131.084 131.322 131.56 131.798 132.036 132.274 132.512 132.75 132.989 133.108 133.227 133.346 133.465 133.584 133.703 133.822 133.941 134.179 134.417 134.655 134.894 134.994 136.56 136.679 138.465 138.584 140.608 141.084 141.56 142.036 142.751 146.56 148.227 148.286 148.346 148.405 148.465 148.524 148.584 148.643 148.703 148.733 148.763 148.793 148.822 148.881 148.941 149.0 149.06 149.119 149.179 149.238 149.298 149.327 149.357 149.387 149.417 150.132 151.962 154.784 155.843 155.94299999999998 156.196 157.255 157.355 157.96099999999998 158.667 159.37199999999999 159.549 159.726 160.148 164.667 165.01999999999998 165.37199999999999 165.725 170.314 170.667 171.01999999999998 171.373 171.726 180.549 181.608 181.96099999999998 182.314 182.667 183.01999999999998 184.43099999999998 185.843 187.255 190.06799999999998 191.48 192.902 194.314 195.726 197.137 198.549 201.37199999999999 202.078 202.784 202.96099999999998 203.138 203.315 203.492 203.66899999999998 203.846 204.023 204.2 204.37699999999998 204.554 204.731 204.908 205.085 205.262 205.387 205.96099999999998 206.314 206.666 207.019 207.37199999999999 207.549 207.726 207.903 208.07999999999998 208.257 208.434 208.608 219.726 219.902 220.079 220.255 220.432 221.137 221.402 221.667 221.834 221.884 222.549 222.726 222.902 223.079 223.255 223.96099999999998 224.226 224.48999999999998 224.667 231.01999999999998 232.784 232.873 234.549 ]

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
      type "did time: " type item counter musiclist type "\n"
      set counter counter + 1]
  ]
end


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
@#$#@#$#@
GRAPHICS-WINDOW
210
10
1428
629
-1
-1
10.0
1
10
1
1
1
0
1
1
1
-60
60
-30
30
1
1
1
ticks
30.0

BUTTON
74
85
137
118
setup
setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
71
160
134
193
go
go
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
0

SLIDER
41
319
213
352
stop_song
stop_song
0
1
0.0
1
1
NIL
HORIZONTAL

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

head_back
true
0
Line -10899396 false 135 105 135 135
Line -10899396 false 165 105 165 135
Line -10899396 false 135 150 120 150
Line -10899396 false 165 150 180 150
Polygon -10899396 false false 120 150 120 105 180 105 180 150 180 105 120 105 120 150

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

left_arm
true
0
Polygon -13840069 false false 135 90 165 90 165 210 135 210 135 195 165 195 135 195 135 90
Circle -13840069 false false 135 135 30

left_leg
true
0
Polygon -1 false false 135 90 165 90 165 210 135 210 165 210 165 165 135 165 135 135 165 135 165 105 135 105 135 90

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

red_p
true
0
Circle -2674135 false false 108 108 85
Polygon -2674135 false false 135 180 135 120 165 120 180 135 165 150 135 150 135 180
Polygon -2674135 false false 105 90 105 120 135 90 105 90
Polygon -2674135 false false 165 90 195 120 195 90 165 90

right_arm
true
0
Polygon -13840069 false false 135 90 165 90 165 210 135 210 135 195 165 195 135 195 135 90
Circle -13840069 false false 135 135 30

right_leg
true
0
Polygon -1 false false 165 90 135 90 135 210 165 210 135 210 135 165 165 165 165 135 135 135 135 105 165 105 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

white_bottom
true
0
Polygon -1 false false 105 150 195 150 195 165 195 150 180 150 180 180 180 150 165 150 165 165 165 150 150 150 150 195 150 150 135 150 135 165 135 150 120 150 120 180 120 150 105 150 105 165

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270

yellow_p
true
0
Circle -1184463 false false 108 108 85
Polygon -1184463 false false 135 180 135 120 165 120 180 135 165 150 135 150 135 180
Polygon -1184463 false false 105 90 105 120 135 90 105 90
Polygon -1184463 false false 165 90 195 120 195 90 165 90
@#$#@#$#@
NetLogo 6.0.4
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
