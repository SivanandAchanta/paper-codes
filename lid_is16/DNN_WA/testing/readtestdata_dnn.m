%{
###########################################################################
##                                                                       ##
##                                                                       ##
##                       IIIT Hyderabad, India                           ##
##                      Copyright (c) 2015                               ##
##                        All Rights Reserved.                           ##
##                                                                       ##
##  Permission is hereby granted, free of charge, to use and distribute  ##
##  this software and its documentation without restriction, including   ##
##  without limitation the rights to use, copy, modify, merge, publish,  ##
##  distribute, sublicense, and/or sell copies of this work, and to      ##
##  permit persons to whom this work is furnished to do so, subject to   ##
##  the following conditions:                                            ##
##   1. The code must retain the above copyright notice, this list of    ##
##      conditions and the following disclaimer.                         ##
##   2. Any modifications must be clearly marked as such.                ##
##   3. Original authors' names are not deleted.                         ##
##   4. The authors' names are not used to endorse or promote products   ##
##      derived from this software without specific prior written        ##
##      permission.                                                      ##
##                                                                       ##
##  IIIT HYDERABAD AND THE CONTRIBUTORS TO THIS WORK                     ##
##  DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING      ##
##  ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT   ##
##  SHALL IIIT HYDERABAD NOR THE CONTRIBUTORS BE LIABLE                  ##
##  FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES    ##
##  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN   ##
##  AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,          ##
##  ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF       ##
##  THIS SOFTWARE.                                                       ##
##                                                                       ##
###########################################################################
##                                                                       ##
##          Author :  Sivanand Achanta (sivanand.a@research.iiit.ac.in)  ##
##          Date   :  Jul. 2015                                          ##
##                                                                       ##
###########################################################################
%}



% Step3: make test data
load(strcat(datadir,'mvni.mat'));
load(strcat(datadir,'test.mat'));
test_batchdata = single(data);
if intmvnf
    I1 = bsxfun(@minus,test_batchdata(:,mvnivec),m(:,mvnivec));
    I1 = bsxfun(@rdivide,I1,v(:,mvnivec)+1e-5);
    test_batchdata(:,mvnivec) = I1;
end
clear I1;
test_batchdata = test_batchdata(:,invec);

test_batchtargets = single(targets(:,outvec));
if outtmvnf
    I1 = bsxfun(@minus,test_batchtargets,minv);
    I1 = bsxfun(@rdivide,I1,maxv);
    test_batchtargets = I1;
end
test_batchtargets = single(test_batchtargets(:,outvec));
test_clv = cumsum([1;clv]);
test_numbats = length(test_clv) - 1;
clear data targets clv

if sum(sum(isnan(test_batchdata)))
    disp('there are NaN eles in test data');
    pause
end

if sum(sum(isnan(test_batchtargets)))
    disp('there are NaN eles in test targets');
    pause
end

clear testdata testtargets;

[Ntest,din] = size(test_batchdata);
[Ntest,dout] = size(test_batchtargets);

