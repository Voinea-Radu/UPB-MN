function [a] = get_prediction_params_iterative(K, y, lambda)
  % Initialize a
  a = zeros(size(K, 1), 1);
  
  % Conjugate gradient method
  r = y - K * a;
  p = r;
  rsold = r' * r;
  
  for i = 1:length(y)
      Kp = K * p;
      alpha = rsold / (p' * Kp);
      a = a + alpha * p;
      r = r - alpha * Kp;
      rsnew = r' * r;
      
      if sqrt(rsnew) < 1e-10
            break;
      end
      
      p = r + (rsnew / rsold) * p;
      rsold = rsnew;
  end
end
