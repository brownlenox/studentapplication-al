page 50104 "Enrolled Students List"
{
    ApplicationArea = All;
    Caption = 'Enrolled Students List';
    PageType = List;
    SourceTable = "Enrolled Students";
    UsageCategory = Lists;
    CardPageId = "Enrolled Students Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student ID field.';
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Full Name field.';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field("Programme Name"; Rec."Programme Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Programme Name field.';
                }
            }
        }
    }
}
