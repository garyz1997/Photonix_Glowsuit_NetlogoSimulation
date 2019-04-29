'''Python script to convert csv data to .ino file.'''

import os
import string
import csv
import sys
import shutil

from code_templates import LOOP_BEGIN, LOOP_END, SETUP, LIGHTS_FUNCTIONS
from config import *


# Translate suit number to desired column number
def preset(suit_num=0):
    return PRESET_COL + suit_num * NUM_SETTINGS

def left_arm(suit_num=0):
    return preset(suit_num) + LA

def right_arm(suit_num=0):
    return preset(suit_num) + RA

def left_leg(suit_num=0):
    return preset(suit_num) + LL

def right_leg(suit_num=0):
    return preset(suit_num) + RL

def head_back(suit_num=0):
    return preset(suit_num) + HB

def white_bottom(suit_num=0):
    return preset(suit_num) + WB

def yellow_P(suit_num=0):
    return preset(suit_num) + YP

def red_P(suit_num=0):
    return preset(suit_num) + RP


def preset2code(preset_name, eight_item_list, aa, bb, cc, dd, ee, ff, gg, hh):
    '''Convert a preset name to function call.'''
    if preset_name == "none":
        eight_item_list[0] = eight_item_list[0] + " " + str(aa)
        eight_item_list[1] = eight_item_list[1] + " " + str(bb)
        eight_item_list[2] = eight_item_list[2] + " " + str(cc)
        eight_item_list[3] = eight_item_list[3] + " " + str(dd)
        eight_item_list[4] = eight_item_list[4] + " " + str(ee)
        eight_item_list[5] = eight_item_list[5] + " " + str(ff)
        eight_item_list[6] = eight_item_list[6] + " " + str(gg)
        eight_item_list[7] = eight_item_list[7] + " " + str(hh)
    elif preset_name == "ALL_OFF":
        eight_item_list[0] = eight_item_list[0] + " 0"
        eight_item_list[1] = eight_item_list[1] + " 0"
        eight_item_list[2] = eight_item_list[2] + " 0"
        eight_item_list[3] = eight_item_list[3] + " 0"
        eight_item_list[4] = eight_item_list[4] + " 0"
        eight_item_list[5] = eight_item_list[5] + " 0"
        eight_item_list[6] = eight_item_list[6] + " 0"
        eight_item_list[7] = eight_item_list[7] + " 0"
    elif preset_name == "ALL_ON_Yel_P":
        eight_item_list[0] = eight_item_list[0] + " 1"
        eight_item_list[1] = eight_item_list[1] + " 1"
        eight_item_list[2] = eight_item_list[2] + " 1"
        eight_item_list[3] = eight_item_list[3] + " 1"
        eight_item_list[4] = eight_item_list[4] + " 1"
        eight_item_list[5] = eight_item_list[5] + " 1"
        eight_item_list[6] = eight_item_list[6] + " 1"
        eight_item_list[7] = eight_item_list[7] + " 0"
    elif preset_name == "ALL_ON_Red_P":
        eight_item_list[0] = eight_item_list[0] + " 1"
        eight_item_list[1] = eight_item_list[1] + " 1"
        eight_item_list[2] = eight_item_list[2] + " 1"
        eight_item_list[3] = eight_item_list[3] + " 1"
        eight_item_list[4] = eight_item_list[4] + " 1"
        eight_item_list[5] = eight_item_list[5] + " 1"
        eight_item_list[6] = eight_item_list[6] + " 0"
        eight_item_list[7] = eight_item_list[7] + " 1"
    elif preset_name == "NO_Ps":
        eight_item_list[0] = eight_item_list[0] + " 1"
        eight_item_list[1] = eight_item_list[1] + " 1"
        eight_item_list[2] = eight_item_list[2] + " 1"
        eight_item_list[3] = eight_item_list[3] + " 1"
        eight_item_list[4] = eight_item_list[4] + " 1"
        eight_item_list[5] = eight_item_list[5] + " 1"
        eight_item_list[6] = eight_item_list[6] + " 0"
        eight_item_list[7] = eight_item_list[7] + " 0"
    elif preset_name == "Just_Red_P":
        eight_item_list[0] = eight_item_list[0] + " 0"
        eight_item_list[1] = eight_item_list[1] + " 0"
        eight_item_list[2] = eight_item_list[2] + " 0"
        eight_item_list[3] = eight_item_list[3] + " 0"
        eight_item_list[4] = eight_item_list[4] + " 0"
        eight_item_list[5] = eight_item_list[5] + " 0"
        eight_item_list[6] = eight_item_list[6] + " 0"
        eight_item_list[7] = eight_item_list[7] + " 1"
    elif preset_name == "Just_Yel_P":
        eight_item_list[0] = eight_item_list[0] + " 0"
        eight_item_list[1] = eight_item_list[1] + " 0"
        eight_item_list[2] = eight_item_list[2] + " 0"
        eight_item_list[3] = eight_item_list[3] + " 0"
        eight_item_list[4] = eight_item_list[4] + " 0"
        eight_item_list[5] = eight_item_list[5] + " 0"
        eight_item_list[6] = eight_item_list[6] + " 1"
        eight_item_list[7] = eight_item_list[7] + " 0"
    elif preset_name == "Just_Both_P":
        eight_item_list[0] = eight_item_list[0] + " 0"
        eight_item_list[1] = eight_item_list[1] + " 0"
        eight_item_list[2] = eight_item_list[2] + " 0"
        eight_item_list[3] = eight_item_list[3] + " 0"
        eight_item_list[4] = eight_item_list[4] + " 0"
        eight_item_list[5] = eight_item_list[5] + " 0"
        eight_item_list[6] = eight_item_list[6] + " 1"
        eight_item_list[7] = eight_item_list[7] + " 1"
    elif preset_name == "Just_LeftArm":
        eight_item_list[0] = eight_item_list[0] + " 1"
        eight_item_list[1] = eight_item_list[1] + " 0"
        eight_item_list[2] = eight_item_list[2] + " 0"
        eight_item_list[3] = eight_item_list[3] + " 0"
        eight_item_list[4] = eight_item_list[4] + " 0"
        eight_item_list[5] = eight_item_list[5] + " 0"
        eight_item_list[6] = eight_item_list[6] + " 0"
        eight_item_list[7] = eight_item_list[7] + " 0"
    elif preset_name == "Just_RightArm":
        eight_item_list[0] = eight_item_list[0] + " 0"
        eight_item_list[1] = eight_item_list[1] + " 1"
        eight_item_list[2] = eight_item_list[2] + " 0"
        eight_item_list[3] = eight_item_list[3] + " 0"
        eight_item_list[4] = eight_item_list[4] + " 0"
        eight_item_list[5] = eight_item_list[5] + " 0"
        eight_item_list[6] = eight_item_list[6] + " 0"
        eight_item_list[7] = eight_item_list[7] + " 0"
    elif preset_name == "Just_LeftLeg":
        eight_item_list[0] = eight_item_list[0] + " 0"
        eight_item_list[1] = eight_item_list[1] + " 0"
        eight_item_list[2] = eight_item_list[2] + " 1"
        eight_item_list[3] = eight_item_list[3] + " 0"
        eight_item_list[4] = eight_item_list[4] + " 0"
        eight_item_list[5] = eight_item_list[5] + " 0"
        eight_item_list[6] = eight_item_list[6] + " 0"
        eight_item_list[7] = eight_item_list[7] + " 0"
    elif preset_name == "Just_RightLeg":
        eight_item_list[0] = eight_item_list[0] + " 0"
        eight_item_list[1] = eight_item_list[1] + " 0"
        eight_item_list[2] = eight_item_list[2] + " 0"
        eight_item_list[3] = eight_item_list[3] + " 1"
        eight_item_list[4] = eight_item_list[4] + " 0"
        eight_item_list[5] = eight_item_list[5] + " 0"
        eight_item_list[6] = eight_item_list[6] + " 0"
        eight_item_list[7] = eight_item_list[7] + " 0"
    elif preset_name == "BOTH_ARMS":
        eight_item_list[0] = eight_item_list[0] + " 1"
        eight_item_list[1] = eight_item_list[1] + " 1"
        eight_item_list[2] = eight_item_list[2] + " 0"
        eight_item_list[3] = eight_item_list[3] + " 0"
        eight_item_list[4] = eight_item_list[4] + " 0"
        eight_item_list[5] = eight_item_list[5] + " 0"
        eight_item_list[6] = eight_item_list[6] + " 0"
        eight_item_list[7] = eight_item_list[7] + " 0"
    elif preset_name == "BOTH_LEGS":
        eight_item_list[0] = eight_item_list[0] + " 0"
        eight_item_list[1] = eight_item_list[1] + " 0"
        eight_item_list[2] = eight_item_list[2] + " 1"
        eight_item_list[3] = eight_item_list[3] + " 1"
        eight_item_list[4] = eight_item_list[4] + " 0"
        eight_item_list[5] = eight_item_list[5] + " 0"
        eight_item_list[6] = eight_item_list[6] + " 0"
        eight_item_list[7] = eight_item_list[7] + " 0"
    return eight_item_list


def lights2code(left_arm,right_arm,left_leg,right_leg,head_back,white_bottom,yellow_p,red_p,duration):
    '''Convert boolean settings to lights function call.'''
    return "  lights(" +\
    left_arm      +"," +\
    right_arm     +"," +\
    left_leg      +"," +\
    right_leg     +"," +\
    head_back     +"," +\
    white_bottom  +"," +\
    yellow_p      +"," +\
    red_p         +"," +\
    str(duration)      +\
    ");\n"

if __name__ == "__main__":

    if len(sys.argv) != 2:
        print("Usage: python excel2arduino_glowsuit.py excel_filename")
        exit(1)

    # Take filename from command line argument
    filename = sys.argv[1]

    # Open csv file
    csvfile = open(filename, newline='')
    csvreader = csv.reader(csvfile)

    # Calculate number of glowsuits mapped in csv file
    num_suits = (len(next(csvreader, None)) - NUM_HEADER) // NUM_SETTINGS
    # Array to store each of the 8 lights for each suit
    ino_lights = []
    # Initialize all glowsuit code with loop begin
    for suit in range(num_suits):
        ino_lights.append([])

    # string to store transition times
    transition_times = "  let musiclist [ 0"

    # Initialize all glowsuit lights
    for suit in range(num_suits):
        ino_lights[suit] = []
        for light in range(8):
            ino_lights[suit].append([])
            ino_lights[suit][light] = "  set p" + str(suit+1) + "_" + str(light+1) + " ["
    
    # Jump to next row, saving current row as prev_row
    prev_row = next(csvreader, None)
    prev_abs_time = prev_row[TIME_ABS_COL]

    delay_total = 0
    # Loop over remaining row in the csv
    for idx,row in enumerate(csvreader):

        # calculate the delay in milliseconds from previous row

        try:
            delay_ms = int(row[TIME_ABS_COL]) - int(prev_abs_time)
            delay_total = delay_total + delay_ms
            transition_times = transition_times + " " + str(9.100+delay_total/1000)
            if (delay_ms < 0):
                print("Error: negative delay value near row", idx+3)
                csvfile.close()
                exit(1)
        except ValueError as err:
            print(err)
            print("Hint: Value in Time Abs column is undefined or invalid near row", idx+3)
            csvfile.close()
            exit(1)


        for suit in range(num_suits):
            # Preset light config
            if (prev_row[preset(suit)] != ""):
                ino_lights[suit] = preset2code(prev_row[preset(suit)], ino_lights[suit], 0, 0, 0, 0, 0, 0, 0, 0)
            else:# Manual light config
                ino_lights[suit] = preset2code(
                                        "none",
                                        ino_lights[suit],
                                        prev_row[left_arm(suit)],
                                        prev_row[right_arm(suit)],
                                        prev_row[left_leg(suit)],
                                        prev_row[right_leg(suit)],
                                        prev_row[head_back(suit)],
                                        prev_row[white_bottom(suit)],
                                        prev_row[yellow_P(suit)],
                                        prev_row[red_P(suit)]
                                    )
        # Set prev_row as current row
        prev_row = row
        prev_abs_time = row[TIME_ABS_COL]

    # Final row should have 'infinite' delay
    for suit in range(num_suits):
        if (prev_row[preset(suit)] != ""):
            ino_lights[suit] = preset2code(prev_row[preset(suit)], ino_lights[suit], 0, 0, 0, 0, 0, 0, 0, 0)
        else:
            ino_lights[suit] = preset2code(
                                        "none",
                                        ino_lights[suit],
                                        prev_row[left_arm(suit)],
                                        prev_row[right_arm(suit)],
                                        prev_row[left_leg(suit)],
                                        prev_row[right_leg(suit)],
                                        prev_row[head_back(suit)],
                                        prev_row[white_bottom(suit)],
                                        prev_row[yellow_P(suit)],
                                        prev_row[red_P(suit)]
                                    )
    transition_times = transition_times + " ]\n"
    # Close csv file
    csvfile.close()
    ino_loops = ""
    # Add all light loops
    for suit in range(num_suits):
        for light in range(8):
            ino_loops += ino_lights[suit][light] + "]\n"
    ino_loops = ino_loops + "\nend"
    fileName = "generated"
    if os.path.exists(fileName) and os.path.isdir(fileName):
        shutil.rmtree(fileName)
    os.mkdir(fileName)
    f = open(fileName+"/"+fileName+".txt", "w")
    f.write(SETUP + ino_loops + LOOP_BEGIN + transition_times + LOOP_END + LIGHTS_FUNCTIONS)
    f.close()