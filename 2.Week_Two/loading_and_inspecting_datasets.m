%% Loading and Inspecting Datasets
clc; 

my_file = xlsread("xMLuwqlERVGC7sKpRLVRjw_5d3dc290822f4d2f8289ffcfcd3c4131_DataSet");
my_file_table = readtable("xMLuwqlERVGC7sKpRLVRjw_5d3dc290822f4d2f8289ffcfcd3c4131_DataSet")

value = my_file(13,3)

