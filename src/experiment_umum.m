% Topik Umum

% Execution Time
tic
x1exp = lu_matrix(n1A, n1b);
toc
tic
x2exp = lu_matrix(n2A, n2b);
toc
tic
x3exp = lu_matrix(n3A, n3b);
toc
tic
x4exp = lu_matrix(n4A, n4b);
toc
tic
x5exp = lu_matrix(n5A, n5b);
toc
tic
x6exp = lu_matrix(n6A, n6b);
toc

% Residual Error
r1 = n1A*x1exp - n1b;
r2 = n2A*x2exp - n2b;
r3 = n3A*x3exp - n3b;
r4 = n4A*x4exp - n4b;
r5 = n5A*x5exp - n5b;
r6 = n6A*x6exp - n6b;

