% program to create CWT image database from ecg signal
load('ECGData.mat');       %loading ECG database
data = ECGData.Data;    %getting database
labels = ECGData.Labels;    %getting labels

%Now we will take 30 recordings of each signal:
ARR = data(1:30,:);     %Taken first 30 recordings
CHF = data(97:126,:);
NSR = data(127:156,:);
signallength = 500;

%Defining filters for CWT with Amor wavelet and 12 filtering per octave
fb = cwtfilterbank('SignalLength', signallength,'Wavelet', 'amor','VoicesPerOctave',12);

mkdir('ecgdataset_0623');   %main folder
mkdir('ecgdataset_0623\arr'); %sub folder
mkdir('ecgdataset_0623\chf');
mkdir('ecgdataset_0623\nsr');

%ecgtype is a cell array that carries the names of the signal by string.
ecgtype = {'ARR', 'CHF', 'NSR'};

%Function to convert ECG to image
ecg2cwtscg(ARR, fb, ecgtype{1});
ecg2cwtscg(CHF, fb, ecgtype{2});
ecg2cwtscg(NSR, fb, ecgtype{3});
