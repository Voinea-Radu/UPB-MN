function mat = read_mat(path)
  data = csvread(path);
  
  data = data(2:end, :);
  
  mat = data(:, 2:end);
end
