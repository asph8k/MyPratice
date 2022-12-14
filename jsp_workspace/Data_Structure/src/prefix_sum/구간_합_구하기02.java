package prefix_sum;

import java.util.Arrays;

public class 구간_합_구하기02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int N = 4; //4 x 4
		int[][] A = { //2차원 배열 선언
				{1, 2, 3, 4},
				{2, 3, 4, 5},
				{3, 4, 5, 6},
				{4, 5, 6, 7}
		};
		//구간합 배열 D 구하기
		int[][] D = new int[N+1][N+1]; //사용자는 인덱스를 쓰는게 아니기 떄문에 + 1을 해줌.
		
		for(int i = 1; i <= N; i++) {
			for(int j = 1; j <= N; j++) {
				//공식
				D[i][j] = D[i][j-1] + D[i-1][j] - D[i-1][j-1] + A[i-1][j-1];
			}
		}
		for(int[] arr : D) {
			System.out.println(Arrays.toString(arr));
		}
		
		int x1 = 2, y1 = 2, x2 = 3, y2 = 4;
		System.out.println(D[x2][y2] - D[x1-1][y2] - D[x2][y1-1] + D[x1-1][y1-1]);
		
		/*
	 	N(배열의 크기) M(질문 횟수) 입력받아서 저장.
	 	for(N만큼) {
	 		for(N만큼) {
	 			원본 배열에 정수를 (입력받아) 저장.
	 		}
	 	}
	 	for(N만큼) {
	 		for(N만큼) {
	 			구간 합 배열 저장
	 			공식: D[i][j] = D[i][j-1] + D[i-1][j] - D[i-1][j-1] + A[i][j]
	 		}
	 	}
	 	for(M만큼) {
	 		사용자가 원하는 좌표를 입력받고 계산 및 출력하기
	 		공식: D[x2][y2] - D[x1-1][y2] - D[x2][y1-1] + [x1-1][y1-1]
	 	}
		*/
	}

}
