function rec_bit_seq = DecodeBitsFromSamples(rec_sample_seq,case_type,p,fs)
%
% Inputs:
%   rec_sample_seq: The input sample sequence to the channel
%    fs:       The sampling frequency used to generate the sample sequence
%     p         The bit flipping probability
% Outputs:
%   rec_sample_seq: The sequence of sample sequence after passing through the channel
%
% This function takes the sample sequence after passing through the
% channel, and decodes from it the sequence of bits based on the considered
% case and the sampling frequence

if (nargin <= 3)
    fs = 1;
end

switch case_type
    
    case 'part_1'
        %%% WRITE YOUR CODE FOR PART 1 HERE
  if(p < 0.5)
      rec_bit_seq = ~rec_sample_seq;
  else
       rec_bit_seq = rec_sample_seq;
  end
      
        %%%
    case 'part_2'
        %%% WRITE YOUR CODE FOR PART 2 HERE
        rec_bit_seq = zeros(size(rec_sample_seq/fs));
        ze=0;    % for number of zeros
        on=0;    % for number of ones
        for i=1:fs:size(rec_sample_seq)
            for k=i:1:i+fs-1
                if(rec_sample_seq(K)==0)
                    ze=ze+1;
                else
                    on=on+1;
                end
            end
            
            if(on > ze)
                rec_bit_seq(i)=1;
            else
                rec_bit_seq(i)=0;
            end
        end
        %%%
    case 'part_3'
        %%% WRITE YOUR CODE FOR PART 3 HERE
        
        %%%
end