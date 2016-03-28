% Topik Umum

% Execution Time
tic
x1exp = lu_matrix(n1Aband, n1b);
toc
tic
x2exp = lu_matrix(n2Aband, n2b);
toc
tic
x3exp = lu_matrix(n3Aband, n3b);
toc
tic
x4exp = lu_matrix(n4Aband, n4b);
toc
tic
x5exp = lu_matrix(n5Aband, n5b);
toc
tic
x6exp = lu_matrix(n6Aband, n6b);
toc

% Residual Error
r1 = n1Aband*x1exp - n1b;
r2 = n2Aband*x2exp - n2b;
r3 = n3Aband*x3exp - n3b;
r4 = n4Aband*x4exp - n4b;
r5 = n5Aband*x5exp - n5b;
r6 = n6Aband*x6exp - n6b;

