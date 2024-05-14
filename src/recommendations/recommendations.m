function recoms = recommendations(path, liked_theme_index, num_recoms, min_reviews, num_features)
  mat = read_mat(path);
  mat = preprocess(mat, min_reviews);
  
  [U, S, V] = svds(mat, num_features);
  liked_theme = V(liked_theme_index, :);

  similarities = zeros(size(V, 1), 1);

  for i = 1:size(V, 1)
    current_v = V(i, :);

    similarities(i) = cosine_similarity(current_v, liked_theme);
  end

  [sorted_similarities, indices] = sort(similarities, 'descend');

  recoms = indices(2 : num_recoms+1);
  recoms = recoms';
end