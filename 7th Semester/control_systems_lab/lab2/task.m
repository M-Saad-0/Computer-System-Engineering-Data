%response = tf([10], [1 2 20]);
%step(response)


%t = 0:0.01:10; 
%response = tf([10], [1 2 20]);
%u=sin (t); 
%lsim (response,u,t)

num= [10]; 
deno=[1 2 20]; 
t = 0:0.01:10; 
h=tf (num, deno); 
y1=lsim (h, u, t); 
y2=step (h, 0:0.01:10); 
y3=step (h, 5:0.01:10); 
temp=zeros (500, 1); 
y3= [temp: y3]; 
y=y1+y2+y3; 
plot (t,y) 