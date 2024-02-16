DOMAINS
list = integer*	

PREDICATES
nondeterm length(list, integer)% ����� ������
nondeterm conc(list, list, list)
nondeterm sepr(list, list, list, integer)
	
CLAUSES
conc([], L, L).% ��� ���������� ������ L � ������� ������, ����� ������ L
conc([H|T], L, [H|T1]) if conc(T, L, T1). /* ���������� ����� T � ������ L, 
						���������� ������ � ������� H � ������� T1,
						��� �1=T+L*/
length([],0).% ����� ������� ������ ����� 0
length([_|T], L) :- length(T, R), L = R + 1. % ����� ��������� ������ = L, ����� ������ = R
sepr(L, R, T, N) :- conc(L, R, T), length(L, N)./* ���� ����� ����� ����� = N, � ����� + ������ ����� ����� ����� ������,
						�� ������� L � R*/

GOAL
sepr(L, R, [1,2,3,4,5], 3).




