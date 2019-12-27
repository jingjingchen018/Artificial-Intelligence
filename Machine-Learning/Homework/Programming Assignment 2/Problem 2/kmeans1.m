function Y = kmeans1(x, K)

n = length(x);
z = zeros(n, K);
mu = [255 * rand(2, K); 512 * rand(2, K)/10];
dis = zeros(1,K);
look = mu;
iteration = 100;


for iter = 1:iteration
    for i = 1:n
        for j = 1:K
            dis(j) = sum((x(:, i) - mu(:, j)).^2);
        end
        z(i,:) = dis == min(dis);  % using logical array
    end
    
    for j = 1:K
        if sum(z(:, j)) ~= 0  % avoid 0 division!!
            mu(:, j) = (x * z(:, j)) / sum(z(:, j));
        end
    end
    
    % end the iteration early
    if round(look, 10) == round(mu, 10)
        break
    end
    look = mu;
end

Y = (1:K) * z';
end