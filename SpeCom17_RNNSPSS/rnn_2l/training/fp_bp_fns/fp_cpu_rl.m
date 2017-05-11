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

function [hcm] = fp_cpu_rl(X,p,ff,nout,sl)

Wi = p.Wi;
W = p.Wfr;
bh = p.bh;

hcm = (zeros(sl,nout));
hp = (zeros(nout,1));

X = X';
is = bsxfun(@plus,Wi*X, bh);

switch ff
    case 'N'
        for k = 1:sl
            % forward prop
            ac = W*hp + is(:,k);
            hc = get_actf('N',ac);
            hp = hc;
            % store params for T time steps
            hcm(k,:) = hc';
        end
        
        
    case 'S'
        for k = 1:sl
            % forward prop
            ac = W*hp + is(:,k);
            hc = get_actf('S',ac);
            hp = hc;
            % store params for T time steps
            hcm(k,:) = hc';
        end
        
    case 'R' % ReLU components
        
        for k = 1:sl
            % forward prop
            ac = W*hp + is(:,k);
            hc = get_actf('R',ac);
            hp = hc;
            % store params for T time steps
            hcm(k,:) = hc';
        end
        
    case 'E' % ELU components
        
        for k = 1:sl
            % forward prop
            ac = W*hp + is(:,k);
            hc = get_actf('E',ac);
            hp = hc;
            % store params for T time steps
            hcm(k,:) = hc';
        end
        
    case 'P' % PELU components
        abyb = apelu./bpelu;
        for k = 1:sl
            % forward prop
            ac = W*hp + is(:,k);
            hc = get_actf('P',ac);
            hp = hc;
            % store params for T time steps
            hcm(k,:) = hc';
        end
        
        
    case 'M' % Softmax layer
        
        for k = 1:sl
            % forward prop
            ac = W*hp + is(:,k);
            hc = get_actf('M',ac);
            hp = hc;
            % store params for T time steps
            hcm(k,:) = hc';
        end
        
    case 'L'
        for k = 1:sl
            % forward prop
            ac = W*hp + is(:,k);
            hc = ac;
            hp = hc;
            % store params for T time steps
            hcm(k,:) = hc';
        end
        
    otherwise
        disp('error: please enter a valid output function name (N/S/R/M/L)');
        return;
end

end
