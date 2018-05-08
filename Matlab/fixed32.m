function [ y ] = fixed32( x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
  %y = x;
  y = round(x*2^31)*2^-31;
end

