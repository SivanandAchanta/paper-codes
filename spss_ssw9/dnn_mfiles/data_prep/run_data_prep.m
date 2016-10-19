% Purpose : run all the scripts in data_prep sequentially

clear all; close all; clc;

%% Step 1: Load configuration file (paths and directories are stored here !!!)
%
config


%% Step 2: Call audio feature extraction program

% Description : This program extracts audio features from wav files like
% STRAIGHT spectrum, f0, vuv and aperiodicity and Mel-generalized
% cepstrum(mgc's) and finally compose all audio streams into a sigle
% composite feature file for single wave file

% call_htsaudiofeatsext


%% Step 3: Call text feature extraction program

% Description : This program extracts text features from the HTS full context
% label files like pentaphone context, vowel identity, numerical features
% and duration features.

% call_textfeatext


%% Step 4: Call train/validation/test data split program

% Description : This program splits the data into train/validation/test data

splittraintest
 

%% Step 5: Call make train/validation/test data

% Step 5-1: Call make train data
% Description : This program packs train files into a set of mat files

% maketraindata

% Step 5-2: Call make validation data
% Description : This program packs validation files into a val.mat file

% makevaldata

% Step 5-3: Call make test data
% Description : This program packs train files into a test.mat file

% maketestdata



