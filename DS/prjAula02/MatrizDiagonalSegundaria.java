package prjAula02;

public class MatrizDiagonalSegundaria {

	public static void main(String[] args) {
		int [][] matriz = new int [3][3];
		int soma = 0, i,j;
		
		for(i=0;i<matriz.length;i++) {
			for(j=0;j<matriz.length;j++) {
				matriz[i][j] = soma+1;
				soma++;
			}
		}
		
		
		for(i=0;i<matriz.length;i++) {
			for(j=0;j<matriz.length;j++) {
				System.out.print(matriz[i][j]+ " ");

			}
			
			System.out.println();
		}
		
		
		for(i=0;i<matriz.length;i++) {
			for(j=matriz.length-1;j>=0;j--) {
				System.out.print(matriz[i][matriz.length-1-i]+ " ");

			}
			
			
		}
		
		
	
		

	}
}
