
function run_test()
    "task-1";
    fout = fopen("out", "w+");
    load("../../input/task1/test_1.mat");
    load("../../input/task1/ref_1.mat");
    _probabilities = multivariate_gaussian(X, mean_values, variances);

    display(_probabilities);
    display(probabilities);

    if __equal(_probabilities, probabilities) == 1
        fprintf(fout, "%d", 1);
    else 
        fprintf(fout, "%d", 0);
    endif 
    fclose(fout);
endfunction