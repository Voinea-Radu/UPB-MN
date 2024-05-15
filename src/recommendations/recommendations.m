function recoms = recommendations(path, liked_theme_index, num_recoms, min_reviews, num_features)
  start_time =  time();
  mat = read_mat(path);

  mat = preprocess(mat, min_reviews);
  delta_time = time() - start_time;

  [V, ~] = eigs(mat'*mat, num_features);
  liked_theme = V(liked_theme_index, :);
  similarities = zeros(size(V, 1), 1);

  for i = 1:size(V, 1)
    current_v = V(i, :);

    similarities(i) = cosine_similarity(current_v, liked_theme);
  end

  sorted_indexes = zeros(num_recoms + 1, 1);

  for i = 1:num_recoms + 1
    [max_similarity, max_index] = max(similarities);
    sorted_indexes(i) = max_index;
    similarities(max_index) = -1;
  end

  recoms = sorted_indexes(2 : num_recoms + 1);
  recoms = recoms';
end