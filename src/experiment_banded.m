% Topik Khusus

% Execution Time
tic
[L, U, p, q] = banded_lu_compress(n1Aband);
x1expband = banded_lu_solver(L, U, n1b, p, q);
toc
tic
[L, U, p, q] = banded_lu_compress(n2Aband);
x2expband = banded_lu_solver(L, U, n2b, p, q);
toc
tic
[L, U, p, q] = banded_lu_compress(n3Aband);
x3expband = banded_lu_solver(L, U, n3b, p, q);
toc
tic
[L, U, p, q] = banded_lu_compress(n4Aband);
x4expband = banded_lu_solver(L, U, n4b, p, q);
toc
tic
[L, U, p, q] = banded_lu_compress(n5Aband);
x5expband = banded_lu_solver(L, U, n5b, p, q);
toc
tic
[L, U, p, q] = banded_lu_compress(n6Aband);
x6expband = banded_lu_solver(L, U, n6b, p, q);
toc

% Residual Error
r1band = n1Aband*x1expband - n1b;
r2band = n2Aband*x2expband - n2b;
r3band = n3Aband*x3expband - n3b;
r4band = n4Aband*x4expband - n4b;
r5band = n5Aband*x5expband - n5b;
r6band = n6Aband*x6expband - n6b;

