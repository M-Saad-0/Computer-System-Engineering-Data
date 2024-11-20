function watermark = generate_watermark(length)

  watermark = rand(length, 1) > 0.5 .* 0.05;
end

