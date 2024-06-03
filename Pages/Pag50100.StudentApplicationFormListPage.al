page 50100 StudentApplicationFormListPage
{
    ApplicationArea = All;
    Caption = 'StudentApplicationFormListPage';
    PageType = List;
    SourceTable = StudentApplicationForm;
    UsageCategory = Lists;
    CardPageId = "StudentApplicationFormCard";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ApplicationID; Rec.ApplicationID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ApplicationID field.';
                }
                field(Title; Rec.Title)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Title field.';
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Full Name field.';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone Number field.';
                }
                field(EnrollmentStatus; Rec.EnrollmentStatus)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enrollment Status';
                }
            }
        }
        area(FactBoxes)
        {
            part(StudentApplicationList; StudentApplicationFormListPage)
            {
                ApplicationArea = All;
                SubPageLink = ApplicationID = field(ApplicationID);
            }
        }
    }
}
