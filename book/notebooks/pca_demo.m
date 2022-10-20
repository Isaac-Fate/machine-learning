%% Bivariate Normal Data Points
mu = [10 2];
Sigma = [1 .7; .7 2];
R = chol(Sigma);
n = 50;
rng(42);
X = repmat(mu, n, 1) + randn(n, 2) * R;
%% Probabilistic PCA
S = (X - mean(X))' * (X - mean(X)) / n; % compare this with cov(X)
[U, D] = svd(S);
eigvals = diag(D);
d = 2;
k = 1;
Uk = U(:, k);
Dk = diag(eigvals(1:k));

% optimal sigma
sig_hat = mean(eigvals(k+1:d));

% hand-pick sigma
sig = 0;

% optimal factor loading matrix
W = Uk * chol(Dk - sig * eye(k));

% estimate z with posterior expectation
est_z = @pz;
%% Display PPCA Result
% W = pca(X, "NumComponents", 1);
t = linspace(-5, 5, 50);
line = (W * t)' + mu;
Z = est_z(X - mean(X), W, sig);
projected_points = (W * Z')' + mu;
hold on
axis equal
scatter(X(:,1),X(:,2))
plot(line(:, 1), line(:, 2))
scatter(projected_points(:, 1), projected_points(:, 2));
for (i = 1:n)
    plot([X(i, 1) projected_points(i, 1)], [X(i, 2) projected_points(i, 2)])
end
hold off

function [z] = pz(x, W, sig)
    [~, k] = size(W);
    F = W' * W + sig^2 * eye(k);
    z = x * (F \ W')';
end

