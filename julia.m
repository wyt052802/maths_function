%To get different effects try reducing maxiter to 70  
%and changing colormap to winter instead of pink.
%Look up colormap in help to see other colour options.
%disp('initiializing variables...');
N = 800;
maxiter = 200;
blowup = 200;
scale = 2;


c=1;
%c=.1+.1i;
%c = -.122+.745i; % The Douady rabbit
%c=.99+.14i;
%c=.35+.5i; % A dendrite
%c=-.765+.12i; % A Cantor set
%c=0.285+0.01i;
%c=.3+.005i;
%c = rand + rand*sqrt(-1)



x=linspace(-scale,scale,N);
%x = -scale:(2*scale/(N-1)):scale;
z0 = repmat(x, N, 1) + (sqrt(-1) * repmat(x', 1, N));



%disp('iterating...');
for i=1:N
    for j=1:N
        z = z0(i, j);
        counter=0;
        while abs(z)<blowup && counter < maxiter
            z = z^2 + c;
            counter = counter + 1;
        end
        F(i, j) = counter;
    end
end

%disp('plotting...');
colormap pink;
figure(1); imagesc(F); axis image;


%disp('done')
