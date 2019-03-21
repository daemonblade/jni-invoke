public class M
{
	static final boolean IS_64 = longConst() == (long /*int*/)longConst();

	static long longConst ()
	{
		return 0x1FFFFFFFFL;
	}

	public static void main (
		String args[])
	{
		System.out.println ("IS_64=" + IS_64);
	}
}
