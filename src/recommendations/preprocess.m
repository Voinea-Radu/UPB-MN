function reduced_mat = preprocess(mat, min_reviews)
  review_counts = sum(mat ~= 0, 2);
  
  mask = review_counts >= min_reviews;
  
  reduced_mat = mat(mask, :);
end
