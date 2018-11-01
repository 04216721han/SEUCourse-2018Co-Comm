function PL=PL_logdist_or_norm(d,d0,n,sigma)
%��������������Ӱ˥��·�����ģ��
%����
%    fc���ز�Ƶ��[Hz]
%    d����վ���ƶ�̨֮��ľ���[m]
%    d0���ο�����[m]
%    n��·�����ָ��
%    sigma������[dB]
%���
%    PL��·�����[dB]
ht=50;
hr=2;
PL=-20*log10(ht*hr/(d0*d0))+10*n*log10(d/d0);%ʽ(1.4)
if nargin>4
    PL=PL+sigma*randn(size(d));%ʽ(1.5)
end