function [DCT_iTrans] = block_idct(DCT_embed, block_size)

[row,col] = size(DCT_embed);
DCT_iTrans = zeros(row,col);
for i = 1:block_size:row-block_size+1
    for j = 1:block_size:col-block_size+1
        A = DCT_embed(i:i+block_size-1,j:j+block_size-1);
        B = idct2(A);
        DCT_iTrans(i:i+block_size-1,j:j+block_size-1) = B;
    end
end
disp(row);
end
