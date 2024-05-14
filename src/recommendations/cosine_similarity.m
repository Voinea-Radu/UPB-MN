function similarity = cosine_similarity(A, B)
  A_norm = A / norm(A);
  B_norm = B / norm(B);
  
  dot_product = dot(A_norm, B_norm);
  
  similarity = dot_product;
end
