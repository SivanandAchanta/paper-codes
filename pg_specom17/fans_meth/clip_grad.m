switch lid
    
    case 1
        [p_f_1_1]   = gc_ll(p_f_1_1,gcth);
    case 2
        [p_f_1_2]   = gc_ll(p_f_1_2,gcth);
    case 3
        [p_f_1_3]   = gc_ll(p_f_1_3,gcth);
    case 4
        [p_f_1_4]   = gc_ll(p_f_1_4,gcth);
    case 5
        [p_f_1_5]   = gc_ll(p_f_1_5,gcth);
        
end

[p_lf_1]   = gc_lstm(p_lf_1,gcth);
[p_lb_1]   = gc_lstm(p_lb_1,gcth);
[p_lf_2]   = gc_lstm(p_lf_2,gcth);
[p_lb_2]   = gc_lstm(p_lb_2,gcth);

switch sid
    
    case 1
        [p_f_2_1]   = gc_ll(p_f_2_1,gcth);
    case 2
        [p_f_2_2]   = gc_ll(p_f_2_2,gcth);
    case 3
        [p_f_2_3]   = gc_ll(p_f_2_3,gcth);
    case 4
        [p_f_2_4]   = gc_ll(p_f_2_4,gcth);
    case 5
        [p_f_2_5]   = gc_ll(p_f_2_5,gcth);
    case 6
        [p_f_2_6]   = gc_ll(p_f_2_6,gcth);
    case 7
        [p_f_2_7]   = gc_ll(p_f_2_7,gcth);
    case 8
        [p_f_2_8]   = gc_ll(p_f_2_8,gcth);
    case 9
        [p_f_2_9]   = gc_ll(p_f_2_9,gcth);
        
end