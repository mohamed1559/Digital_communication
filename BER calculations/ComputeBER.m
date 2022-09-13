function BER = ComputeBER(bit_seq,rec_bit_seq)
%
% Inputs:
%   bit_seq:     The input bit sequence
%   rec_bit_seq: The output bit sequence
% Outputs:
%   BER:         Computed BER
%
% This function takes the input and output bit sequences and computes the
% BER

%%% WRITE YOUR CODE HERE
error_bits=0;
 for i=1:1:size(bit_seq)
     if(rec_bit_seq(i)~=bit_seq(i))
         error_bits=error_bits+1;
     end
 end
 BER= error_bits/size(bit_seq);
%%%
