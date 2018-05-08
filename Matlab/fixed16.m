function [ y ] = fixed16( x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
  %y = x;
  y = round(x*2^15)*2^-15;
end

