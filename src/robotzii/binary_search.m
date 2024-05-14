function index = binary_search(x, x_current)
    low = 1;
    high = length(x) - 1;

    while low <= high
        mid = floor(low + (high - low) / 2);
        if x_current >= x(mid) && x_current <= x(mid + 1)
            index = mid;
            return;
        elseif x_current < x(mid)
            high = mid - 1;
        else
            low = mid + 1;
        end
    end

    index = -1;  % x_current is not in the range of x
end