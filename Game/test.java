public class test {

    public static int[][] multiplyMatrix( int[][] a, int[][] b ) {
	int[][] result = new int[a.length][b[0].length];
	for ( int i = 0; i < a.length; i++ ) { 
	    for ( int j = 0; j < b[0].length; j++ ) { 
		for ( int k = 0; k < a[0].length; k++ ) { 
		    result[i][j] += a[i][k] * b[k][j];
		}
	    }
	}
	return result;
    }

    public static int[][] transpose( int[][] a ) {
	int[][] ans = new int[a[0].length][a.length];
	for ( int i = 0; i < a.length; i++ ) {
	    for ( int j = 0; j < a[0].length; j++ ) {
		ans[j][i] = a[i][j];
	    }
	}
	return ans;
    }

    public static String printArray( int[][] ary ) {
	String ans = "";
	for( int i = 0; i < ary.length; i++ ) {
	    for ( int j = 0; j < ary[0].length; j++ ) {
		ans += ary[i][j] + " ";
		if ( j == ary[0].length-1 ) {
		    ans += "\n";
		}
	    }
	}
	return ans;
    }
    
    public static void main( String[] args ) {

	int a1[][] = { {1, 1, 1}, {0, 0, 1}, {0, 0, 0} };
	int aT[][] = transpose( a1 );
	int m[][] = { {0, 0, 1}, {0, 1, 0}, {1, 0, 0} };
	int a3[][] = multiplyMatrix( aT, m );

	System.out.println( printArray(a1) );
	System.out.println( printArray( a3 ) );
    }
}
