public class ManagerEmployee extends Employee {

	public ManagerEmployee(String id, int salary) {
		super(id, salary);
	}

	@Override
	public int calculateSalary() {
		int holder=salary/12;
		return (int) (holder+(holder*0.20));
	}

}