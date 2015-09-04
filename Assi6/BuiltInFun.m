function BuiltInFun(K)
loadmatrix=load ('fv.mat','feature_matrix');
m=struct2array(loadmatrix);
[IDX,C] = kmeans(m,K) 
IDX
C
end 