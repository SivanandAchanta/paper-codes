function d = deltas_hts_dellis(x, w)
% D = deltas(X,W)  Calculate the deltas (derivatives) of a sequence
%    Use a W-point window (W odd, default 9) to calculate deltas using a
%    simple linear slope.  This mirrors the delta calculation performed
%    in feacalc etc.  Each row of X is filtered separately.
% Dan Ellis code for implementing delta cepstrum ...

% Input:  (1) x - d x N matrix where d - dim and N - no of examples
%         (2) w - window

% Output: (1) d - deltas ( d x N matrix)


% Input x must be a matrix of d X N dimensions
[nr,nc] = size(x);

% modified by siva 11/10/14
hlen = floor(length(w)/2);
win = w;

% pad data by repeating first and last columns
xx = [repmat(x(:,1),1,hlen),x,repmat(x(:,end),1,hlen)];

% Apply the delta filter
d = filter(win, 1, xx, [], 2);  % filter along dim 2 (rows)

% Trim edges
d = d(:,2*hlen + [1:nc]);
