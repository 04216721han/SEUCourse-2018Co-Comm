function PL=PL_free(dist,Gt,Gr)
%���ɿռ�·�����ģ��
%����
%    fc���ز�Ƶ��[Hz]
%    dist����վ���ƶ�̨֮��ľ���[m]
%    Gt���������������
%    Gr�����ջ���������
%���
%    PL��·�����[dB]
ht=50;
hr=2;
lamda=ht*hr;
%tmp=lamda./(4*pi*dist);
tmp=lamda./(dist.*dist);
if nargin>2,tmp=tmp*sqrt(Gt);end
if nargin>3,tmp=tmp*sqrt(Gr);end
PL=-20*log10(tmp);%ʽ(1.2)/(1.3)