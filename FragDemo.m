clear;close all;
load('Exam_Frag_Stim.mat');
% 
FR_OPTION=init_fr();

FR_OPTION.CNS.platform='gpu'; 
    % If you cannot use GPU, you may change it to 'cpu' with slower speed.

nFrag=size(cFRAG,2);
nStim=size(cSTIM,2);
dRes=zeros(nFrag,nStim);
for iFrag=1:nFrag
    dRes(iFrag,:)=calculate_fragment_response(FR_OPTION,cFRAG{iFrag},cSTIM);
end


