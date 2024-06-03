page 50101 "StudentApplicationFormCard"
{
    Caption = 'Student Application Form';
    PageType = Card;
    SourceTable = "StudentApplicationForm";

    layout
    {
        area(content)
        {
            group("General Information")
            {
                Caption = 'General Information';

                field("ApplicationID"; Rec."ApplicationID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ApplicationID field.';
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the First Name field.';
                }
                field("Middle Name"; Rec."Middle Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Middle Name field.';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Name field.';
                }
                field("Full Name"; Rec."Full Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Full Name field.';
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Birth field.';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.';
                }
                field(Title; Rec.Title)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Title field.';
                }
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ID field.';
                }
                field(Nationality; Rec.Nationality)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Nationality field.';
                    TableRelation = "Country/Region"."Name";
                }
            }

            group("Contact Information")
            {
                Caption = 'Contact Information';

                field("Phone Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone Number field.';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field(Location; Rec.Location)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Location field.';
                }
                field(County; Rec.County)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the County field.';
                }
                field("Sub-county"; Rec."Sub-county")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sub-county field.';
                }
                field("County of Residence"; Rec."County of Residence")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the County of Residence field.';
                }
            }

            group("Educational Background")
            {
                Caption = 'Educational Background';

                field("Attended Secondary School"; Rec."Attended Secondary School")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Attended Secondary School field.';
                }
                field("Attained Mean Grade"; Rec."Attained Mean Grade")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Attained Mean Grade field.';
                }
            }

            group("Parent/Guardian Information")
            {
                Caption = 'Parent/Guardian Information';

                field("Father Alive"; Rec."Father Alive")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Father Alive field.';
                }
                field("Name of Father"; Rec."Name of Father")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name of Father field.';
                }
                field("Father's Occupation"; Rec."Father's Occupation")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Father''s Occupation field.';
                }
                field("Father's Phone Number"; Rec."Father's Phone Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Father''s Phone Number field.';
                }
                field("Mother Alive"; Rec."Mother Alive")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mother Alive field.';
                }
                field("Name of Mother"; Rec."Mother's name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name of Mother field.';
                }
                field("Mother's Occupation"; Rec."Mother's Occupation")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mother''s Occupation field.';
                }
                field("Mother's Phone Number"; Rec."Mother's Phone Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mother''s Phone Number field.';
                }
            }

            group("Emergency Contact Information")
            {
                Caption = 'Emergency Contact Information';

                field("Emergency Contact Name"; Rec."Emergency Contact Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Emergency Contact Name field.';
                }
                field("Relationship With Emergency"; Rec."Relationship With Emergency")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Relationship With Emergency Contact field.';
                }
                field("Emergency Contact Occupation"; Rec."Emergency Contact Occupation")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Emergency Contact Occupation field.';
                }
                field("Emergency Contact Phone"; Rec."Emergency Contact Phone")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Emergency Contact Phone field.';
                }
            }

            group("Additional Information")
            {
                Caption = 'Additional Information';

                field("Financing of Studies"; Rec."Financing of Studies")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Financing of Studies field.';
                }
                field("How You Learnt About Us"; Rec."How You Learnt About Us")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the How You Learnt About The University field.';
                }
                field("Preferred Campus"; Rec."Preferred Campus")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Preferred Campus field.';
                }
                field("Preferred Intake"; Rec."Preferred Intake")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Preferred Intake field.';
                }
                field("Preferred Sport"; Rec."Preferred Sport")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Preferred Sport field.';
                }
                field("Programme Level"; Rec."Programme Level")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Programme Level field.';
                }
                field("Programme Name"; Rec."Programme Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Programme Name field.';

                }
                field(EnrollmentStatus; Rec.EnrollmentStatus)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enrollment Status';
                }
            }
        }
    }
    actions
    {
        area(processing)
        {
            action(New)
            {
                ApplicationArea = All;
                Caption = 'New Student Application';
                Image = NewDocument;

                trigger OnAction()
                begin
                    Rec.Reset();
                    Rec.Init();
                    Rec."ApplicationID" := '';
                    PAGE.RunModal(PAGE::"StudentApplicationFormCard", Rec);
                end;
            }
            action(EnrollStudents)
            {
                Caption = 'Enroll Student';
                ApplicationArea = All;
                Image = NewDocument;
                trigger OnAction()
                begin
                    EnrollStudent();
                end;
            }
        }
    }

    var
        EnrolledStudentsRec: Record "Enrolled Students";
    //StudentApplicationFormRec: Record "StudentApplicationForm";

    local procedure EnrollStudent()
    begin
        //populate the enrolled student form with data from the current student application form
        EnrolledStudentsRec.Init();

        // Check if student is already enrolled by setting a filter on the "Full Name" field
        EnrolledStudentsRec.SetRange("Full Name", Rec."Full Name");

        if EnrolledStudentsRec.FindFirst() then begin
            Message('Student %1 is already enrolled', Rec."Full Name");
            exit;
        end;

        // if EnrolledStudentsRec.Insert(true) then begin
        //     Rec.EnrollmentStatus := Rec.EnrollmentStatus
        // end;

        EnrolledStudentsRec."First Name" := Rec."First Name";
        EnrolledStudentsRec."Middle Name" := Rec."Middle Name";
        EnrolledStudentsRec."Last Name" := Rec."Last Name";
        EnrolledStudentsRec."Full Name" := Rec."Full Name";
        EnrolledStudentsRec."Date of Birth" := Rec."Date of Birth";
        EnrolledStudentsRec.Email := Rec.Email;
        EnrolledStudentsRec."Programme Name" := Rec."Programme Name";

        EnrolledStudentsRec.Insert(true);
        Message('Student %1 has been succesfully enrolled', EnrolledStudentsRec."Full Name");
        // // Insert the new enrollment and check if it was successful
        // if EnrolledStudentsRec.Insert(true) then begin
        //     // Update the enrollment status to 'Approved'
        //     Rec.EnrollmentStatus := Rec.EnrollmentStatus::Approved; // Assuming 'Approved' is the correct option value for the status
        //     Rec.Modify(true);
        //     Message('Student %1 has been successfully enrolled and status updated to Approved', EnrolledStudentsRec."Full Name");
        // end else begin
        //     Message('Failed to enroll student %1', Rec."Full Name");
        // end;
    end;
}
