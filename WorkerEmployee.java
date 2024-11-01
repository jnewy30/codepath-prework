public class WorkerEmployee extends Employee {
	
	public WorkerEmployee(String id, int salary) {
		super(id, salary);
	}

	@Override
	public int calculateSalary() {
		return ((salary/12)-100);
	}

}