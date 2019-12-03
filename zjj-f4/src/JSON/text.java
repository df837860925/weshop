package JSON;

public class text {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
   String nameString="ÃÔÄã°ü";
     char [] aa=  nameString.toCharArray();
     StringBuffer bbBuffer=new StringBuffer();
     for (int i = 0; i < aa.length; i++) {
		bbBuffer.append(aa[i]+" ");
	}
     System.out.println(bbBuffer.toString());
		
		
		
	}

}
