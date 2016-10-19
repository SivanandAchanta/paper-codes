function [me] = compute_zerooneloss_spk(PO,AO,dout)


% Purpose : This function computes the zero - one loss give the predicted and actual outputs

% Inputs : (1) PO - a vector of class predictions
%          (2) AO - a vector of actual classes

% Output : (1) me - mean error

[~,pidx] = max(PO,[],2);
[~,aidx] = max(AO,[],2);

ph = hist(pidx,[1:dout]);
[~,pspk] = max(ph);

ah = hist(aidx,[1:dout]);
[~,aspk] = max(ah);

%subplot(211); plot(ph);
%subplot(212); plot(ah);

% pause


if pspk == aspk
    me = 0;
else
    me = 1;
end

end
