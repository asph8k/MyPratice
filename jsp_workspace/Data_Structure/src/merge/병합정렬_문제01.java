package merge;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Scanner;

public class 병합정렬_문제01 {
	/* 내 방식
	public static void mergeSort() {
		
	}
	
	public static void sort(long[] arr) {
		temp = new long[arr.length];
		mergeSort(arr, 0, arr.length-1);
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		int N = sc.nextInt();
		long[] arr = new long[N];
		sort(arr);
		System.out.println("정렬 후: " + Arrays.toString(arr));
	}
	*/
	public static void main(String[] args) throws Exception, IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int N = Integer.parseInt(br.readLine());
		int[] A = new int[N];
		
		for(int i = 0; i < N; i++) {
			A[i] = Integer.parseInt(br.readLine());
		}
		
		sort(A);
		
		StringBuilder sb = new StringBuilder(); //일반 String보다 속도가 빠르다.
		for(int i : A) {
			sb.append(i).append("\n");
		}
		System.out.println(sb);
	}
	
	//임시 배열
	private static int[] temp;
	
	private static void sort(int[] arr) {
		temp = new int[arr.length];
		mergeSort(arr, 0, arr.length-1);
	}
	
	private static void mergeSort(int[] arr, int s, int e) {
		if(e - s < 1) return; //재귀 함수 종료
		
		//중앙점을 찾기
		int m = (s + e) / 2;
		
		//재귀 방식으로 분할
		mergeSort(arr, s, m); //왼쪽 배열
		mergeSort(arr, m+1, e); //오른쪽 배열
		
		//병합 작업 시작
		for(int i = s; i <= e; i++) {
			temp[i] = arr[i];
		}
		
		int p1 = s;
		int p2 = m+1;
		int insertSpot = s; 
		
		while(p1 <= m && p2 <= e) {
			if(temp[p1] < temp[p2]) {
				arr[insertSpot++] = temp[p1++];
			}
			else {
				arr[insertSpot++] = temp[p2++];
			}
		}
		while(p1 <= m) {
			arr[insertSpot++] = temp[p1++];
		}
		while(p2 <= e) {
			arr[insertSpot++] = temp[p2++];
		}
	}
}
