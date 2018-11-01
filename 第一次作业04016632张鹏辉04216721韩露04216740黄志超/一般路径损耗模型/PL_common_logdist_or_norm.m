function PL2=PL_common_logdist_or_norm(K,d,d0,a,sigma)
%��������������Ӱ˥��·�����ģ��
%����
%    fc���ز�Ƶ��[Hz]
%    d����վ���ƶ�̨֮��ľ���[m]
%    d0���ο�����[m]
%    n��·�����ָ��
%    sigma������[dB]
%���
%    PL��·�����[dB]
tmp=d/d0;
PL2=-log10(K)+10*a*log10(tmp);%ʽ(1.4)
if nargin>4
    PL2=PL2+sigma*randn(size(d));%ʽ(1.5)
end