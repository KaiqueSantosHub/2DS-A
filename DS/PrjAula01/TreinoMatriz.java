
public class TreinoMatriz {

	public static void main(String[] args) {
		final int TAM=3, TAM2=4;
		int [] [] matriz  = new int[TAM][TAM2];
		int i,j;
		
		for(i=0;i<3;i++) {
			for(j=0;j<4;j++) {
				matriz[i][j] = 47;
			}
		}
		
		for(i=0;i<3;i++) {
			for(j=0;j<4;j++) {
				System.out.print(matriz[i][j]+ " ");
			}
			System.out.println();
		}
		

	}

}
