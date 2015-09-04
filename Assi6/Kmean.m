function Kmean(image,row,col)
Traind=Train(image,row,col);
Mean=[];

[r1 c1]=size(Traind);
Train1=Traind(:,1:c1-1);
Mean=mean(Train1);
 inMean1=[];
 inMean2=[];
 
[r c]=size(Mean);
 [rtrain ctrain]=size(Train1)
 
Mean1=[]; 
Mean2=[];
%  for i=1 :r
%  Mean1=cat(1,Mean1,Mean(i)+1);
%  Mean2=cat(1,Mean2,Mean(i)-1);
%  end 
 Mean1=Mean+1;
 Mean2=Mean-1;

 for i=1 :rtrain
d1=norm(Train1(i,:)-Mean1);
d2=norm(Train1(i,:)-Mean2);
%  d1=sqrt(sum((Train1(i,j)-Mean1(j,1)).^2)); 
%  d2=sqrt(sum((Train1(i,j)-Mean2(j,1)).^2));
 if(d1<=d2)
 inMean1=cat(1,inMean1,Train1(i,:));
 end
 if(d1>d2)
 inMean2=cat(1,inMean2,Train1(i,:));
 end
 
 end 
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 MeanofMean1=mean(inMean1);
 MeanofMean2=mean(inMean2);
 [rm cm]=size(MeanofMean1);
%  for i=1 :rm
%     Mean11=cat(1,Mean11,MeanofMean1(i)+1);
%     Mean12=cat(1,Mean12,MeanofMean1(i)-1);
%  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     Mean21=cat(1,Mean21,MeanofMean2(i)+1);
%     Mean22=cat(1,Mean22,MeanofMean2(i)-1);
%  end
%  
Mean11=MeanofMean1+1;
Mean12=MeanofMean1-1;
Mean21=MeanofMean2+1;
Mean22=MeanofMean2-1;
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 inMean11=[];
 inMean21=[];
 inMean12=[];
 inMean22=[];
 cluster1=[];
 cluster2=[];
 cluster3=[];
 cluster4=[];
 
 for i=1 :rtrain
 
 d11=norm(Train1(i,:)-Mean11);
 d12=norm(Train1(i,:)-Mean12);
 d21=norm(Train1(i,:)-Mean21);
 d22=norm(Train1(i,:)-Mean22);
 
 if(d11<=d12&&d11<=d21&&d11<=d22)
    inMean11=cat(1,inMean11,Train1(i,:)); 
    cluster1=cat(1,cluster1,Traind(i,c1));
 end 
 %%%%%%%%%%
 if(d12<=d11&&d12<=d21&&d12<=d22)
    inMean12=cat(1,inMean12,Train1(i,:)); 
    cluster2=cat(1,cluster2,Traind(i,c1));
 end 
 %%%%%%%%%%%
 if(d21<=d11&&d21<=d12&&d21<=d22)
    inMean21=cat(1,inMean21,Train1(i,:));
    cluster3=cat(1,cluster3,Traind(i,c1));
 end 
 %%%%%%%%
 if(d22<=d11&&d22<=d12&&d22<=d21)
    inMean22=cat(1,inMean22,Train1(i,:)); 
    cluster4=cat(1,cluster4,Traind(i,c1));
 end 
 end 
 inMmean11=[];
 inMmean12=[];
 inMmean21=[];
 inMmean22=[];
 %for j=1:5
 for i=1 :rtrain
  
 Md11=norm(Train1(i,:)-Mean11);
 Md12=norm(Train1(i,:)-Mean12);
 Md21=norm(Train1(i,:)-Mean21);
 Md22=norm(Train1(i,:)-Mean22);
 
%   if(j~=1)
%  Md11=norm(Train1(i,:)-Mmean11);
%  Md12=norm(Train1(i,:)-Mmean12);
%  Md21=norm(Train1(i,:)-Mmean21);
%  Md22=norm(Train1(i,:)-Mmean22);  
%   end
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 if(Md11<=Md12&&Md11<=Md21&&Md11<=Md22)
    inMmean11=cat(1,inMmean11,Train1(i,:)); 
 end 
 %%%%%%%%%%
 if(Md12<=Md11&&Md12<=Md21&&Md12<=Md22)
    inMmean12=cat(1,inMmean12,Train1(i,:)); 
 end 
 %%%%%%%%%%%
 if(Md21<=Md11&&Md21<=Md12&&Md21<=Md22)
    inMmean21=cat(1,inMmean21,Train1(i,:)); 
 end 
 %%%%%%%%
 if(Md22<=Md11&&Md22<=Md12&&Md22<=Md21)
    inMmean22=cat(1,inMmean22,Train1(i,:)); 
 end 
 end
  Mmean11=mean(inMean11);
  Mmean12=mean(inMean12);
  Mmean21=mean(inMean21);
  Mmean22=mean(inMean22);
 %end

          disp('Cluster1') ;
          disp(cluster1);
           disp('Cluster2')
           disp(cluster2);
           disp('Cluster3');
            disp(cluster3)
            disp('Cluster4');
           disp( cluster4);
 
end
