table 50102 Course
{
    Caption = 'Course';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Course ID"; Integer)
        {
            Caption = 'Course ID';
        }
        field(2; "Course Name"; Text[50])
        {
            Caption = 'Course Name';
        }
    }
    keys
    {
        key(PK; "Course ID", "Course Name")
        {
            Clustered = true;
        }
    }
}
