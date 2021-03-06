/****** Object:  StoredProcedure [dbo].[InsertEmployeeRecord]    Script Date: 9/6/2019 11:00:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure InsertEmployeeRecord
@name varchar(50),
@salary decimal(18,2),
@location varchar(50),
@deptid int
as
begin
insert into employees(employeename,employeesalary,employeelocation,departmentid) values(@name,@salary,@location,@deptid)
end
GO
/****** Object:  StoredProcedure [dbo].[GetAllEmployeeRecords]    Script Date: 9/6/2019 11:00:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure GetAllEmployeeRecords
as
begin
select employeename as Name, employeeid as ID, employeesalary as Salary, employeelocation as Location from employees
end
GO
/****** Object:  StoredProcedure [dbo].[GetDepartments]    Script Date: 9/6/2019 11:00:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure GetDepartments
as
begin
select * from departments
end
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeesFromADepartment]    Script Date: 9/6/2019 11:00:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure GetEmployeesFromADepartment
@deptid int
as
begin
select * from employees where departmentid=@deptid
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteEmployeeRecord]    Script Date: 9/6/2019 11:00:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure DeleteEmployeeRecord
@id int
as
begin
delete from employees where employeeid=@id
end
GO
