report 50100 StudentApplicationReport
{
    ApplicationArea = All;
    Caption = 'StudentApplicationReport';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'Layouts/StudentApplicationReport.RDL';
    dataset
    {
        dataitem(StudentApplicationForm; StudentApplicationForm)
        {
            column(ApplicationID; ApplicationID)
            {
            }
            column(FullName; "Full Name")
            {
            }
            column(Gender; Gender)
            {
            }
            column(Email; Email)
            {
            }
            column(PhoneNumber; "Phone Number")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
