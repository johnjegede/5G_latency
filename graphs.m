%PTPD stats display
clear all;close all;
%Fields:
Timestamp=1;
State=2;
Clock_ID=3;
One_Way_Delay=4;
Offset_From_Master=5;
Slave_to_Master=6;
Master_to_Slave=7;
Observed_Drift=8;
Last_packet_Received=9;
Sequence_ID=10;
One_Way_Delay_Mean=11;
One_Way_Delay_Std_Dev=12;
Offset_From_Master_Mean=13;
Offset_From_Master_Std_Dev=14;
Observed_Drift_Mean=15;
Observed_Drift_Std_Dev=16;
raw_delayMS=17;
raw_delaySM=18;


%data = csvread('output4.txt');
data = dlmread('output4.txt'," ");
csvwrite('iperf-formatted.csv', real(data));
%figure 1;
%cdfplot(data(:,One_Way_Delay));

