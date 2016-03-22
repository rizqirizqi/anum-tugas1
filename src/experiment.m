tic
%x1sol = linsolve(n1A, n1b);
x1exp = lu_matrix(n1A, n1b);
toc
tic
%x2sol = linsolve(n2A, n2b);
x2exp = lu_matrix(n2A, n2b);
toc
tic
%x3sol = linsolve(n3A, n3b);
x3exp = lu_matrix(n3A, n3b);
toc
tic
%x4sol = linsolve(n4A, n4b);
x4exp = lu_matrix(n4A, n4b);
toc
tic
%x5sol = linsolve(n5A, n5b);
x5exp = lu_matrix(n5A, n5b);
toc
tic
%x6sol = linsolve(n6A, n6b);
x6exp = lu_matrix(n6A, n6b);
toc