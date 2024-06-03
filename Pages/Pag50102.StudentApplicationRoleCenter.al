page 50102 "Student ApplicationRoleCenter"
{
    Caption = 'Student ApplicationRoleCenter';
    PageType = RoleCenter;

    actions
    {
        area(Sections)
        {
            group(StudentApplication)
            {
                Caption = 'Student Application';
                action(StudentListPage)
                {
                    Caption = 'Student List Page';
                    RunObject = Page "StudentApplicationFormListPage";
                    ApplicationArea = all;
                }
                action(StudentListReport)
                {
                    Caption = 'Student List Report';
                    RunObject = Report "StudentApplicationReport";
                    ApplicationArea = all;
                }
            }
            group(Courses)
            {
                Caption = 'Student Courses';
                action(CourseListPage)
                {
                    Caption = 'Course List Page';
                    RunObject = Page "CourseList";
                    ApplicationArea = all;
                }
            }
            group(EnrolledStudents)
            {
                Caption = 'Enrolled Students';
                action(EnrolledStudentsListPage)
                {
                    Caption = 'Enrolled Students List Page';
                    RunObject = Page "Enrolled Students List";
                    ApplicationArea = all;
                }
            }
        }
        area(Embedding)
        {
            action(Application)
            {
                Caption = 'Application lists';
                RunObject = Page "StudentApplicationFormListPage";
                ApplicationArea = all;
            }
        }
    }
}
profile MyProfile
{
    ProfileDescription = 'Student Applications Profile';
    RoleCenter = "Student ApplicationRoleCenter";
    Caption = 'Student Applications Profile';
}