.class public final enum Lcom/android/settings/ChooseLockPattern$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/ChooseLockPattern$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/ChooseLockPattern$Stage;

.field public static final enum ChoiceConfirmed:Lcom/android/settings/ChooseLockPattern$Stage;

.field public static final enum ChoiceTooShort:Lcom/android/settings/ChooseLockPattern$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/ChooseLockPattern$Stage;

.field public static final enum FirstChoiceValid:Lcom/android/settings/ChooseLockPattern$Stage;

.field public static final enum HelpScreen:Lcom/android/settings/ChooseLockPattern$Stage;

.field public static final enum Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/ChooseLockPattern$Stage;


# instance fields
.field final footerMessage:I

.field final headerMessage:I

.field final leftMode:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

.field final patternEnabled:Z

.field final rightMode:Lcom/android/settings/ChooseLockPattern$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 206
    new-instance v0, Lcom/android/settings/ChooseLockPattern$Stage;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f08033f

    sget-object v4, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->Cancel:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    sget-object v5, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->ContinueDisabled:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    const v6, 0x7f080340

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/ChooseLockPattern$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    .line 210
    new-instance v0, Lcom/android/settings/ChooseLockPattern$Stage;

    const-string v1, "HelpScreen"

    const/4 v2, 0x1

    const v3, 0x7f080351

    sget-object v4, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->Gone:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    sget-object v5, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->Ok:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/ChooseLockPattern$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->HelpScreen:Lcom/android/settings/ChooseLockPattern$Stage;

    .line 213
    new-instance v0, Lcom/android/settings/ChooseLockPattern$Stage;

    const-string v1, "ChoiceTooShort"

    const/4 v2, 0x2

    const v3, 0x7f080342

    sget-object v4, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->Retry:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    sget-object v5, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->ContinueDisabled:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/ChooseLockPattern$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->ChoiceTooShort:Lcom/android/settings/ChooseLockPattern$Stage;

    .line 217
    new-instance v0, Lcom/android/settings/ChooseLockPattern$Stage;

    const-string v1, "FirstChoiceValid"

    const/4 v2, 0x3

    const v3, 0x7f080343

    sget-object v4, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->Retry:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    sget-object v5, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->Continue:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/ChooseLockPattern$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->FirstChoiceValid:Lcom/android/settings/ChooseLockPattern$Stage;

    .line 220
    new-instance v0, Lcom/android/settings/ChooseLockPattern$Stage;

    const-string v1, "NeedToConfirm"

    const/4 v2, 0x4

    const v3, 0x7f080344

    sget-object v4, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->Cancel:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    sget-object v5, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->ConfirmDisabled:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/ChooseLockPattern$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPattern$Stage;

    .line 224
    new-instance v0, Lcom/android/settings/ChooseLockPattern$Stage;

    const-string v1, "ConfirmWrong"

    const/4 v2, 0x5

    const v3, 0x7f08033d

    sget-object v4, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->Cancel:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    sget-object v5, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->ConfirmDisabled:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/ChooseLockPattern$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPattern$Stage;

    .line 228
    new-instance v0, Lcom/android/settings/ChooseLockPattern$Stage;

    const-string v1, "ChoiceConfirmed"

    const/4 v2, 0x6

    const v3, 0x7f080345

    sget-object v4, Lcom/android/settings/ChooseLockPattern$LeftButtonMode;->Cancel:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    sget-object v5, Lcom/android/settings/ChooseLockPattern$RightButtonMode;->Confirm:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/ChooseLockPattern$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->ChoiceConfirmed:Lcom/android/settings/ChooseLockPattern$Stage;

    .line 204
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/ChooseLockPattern$Stage;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings/ChooseLockPattern$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$Stage;->HelpScreen:Lcom/android/settings/ChooseLockPattern$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/settings/ChooseLockPattern$Stage;->ChoiceTooShort:Lcom/android/settings/ChooseLockPattern$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/settings/ChooseLockPattern$Stage;->FirstChoiceValid:Lcom/android/settings/ChooseLockPattern$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings/ChooseLockPattern$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPattern$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/ChooseLockPattern$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPattern$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/ChooseLockPattern$Stage;->ChoiceConfirmed:Lcom/android/settings/ChooseLockPattern$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->$VALUES:[Lcom/android/settings/ChooseLockPattern$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/settings/ChooseLockPattern$LeftButtonMode;Lcom/android/settings/ChooseLockPattern$RightButtonMode;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "headerMessage"
    .parameter "leftMode"
    .parameter "rightMode"
    .parameter "footerMessage"
    .parameter "patternEnabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/settings/ChooseLockPattern$LeftButtonMode;",
            "Lcom/android/settings/ChooseLockPattern$RightButtonMode;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 243
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 244
    iput p3, p0, Lcom/android/settings/ChooseLockPattern$Stage;->headerMessage:I

    .line 245
    iput-object p4, p0, Lcom/android/settings/ChooseLockPattern$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$LeftButtonMode;

    .line 246
    iput-object p5, p0, Lcom/android/settings/ChooseLockPattern$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$RightButtonMode;

    .line 247
    iput p6, p0, Lcom/android/settings/ChooseLockPattern$Stage;->footerMessage:I

    .line 248
    iput-boolean p7, p0, Lcom/android/settings/ChooseLockPattern$Stage;->patternEnabled:Z

    .line 249
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockPattern$Stage;
    .locals 1
    .parameter

    .prologue
    .line 204
    const-class v0, Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/ChooseLockPattern$Stage;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/ChooseLockPattern$Stage;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/android/settings/ChooseLockPattern$Stage;->$VALUES:[Lcom/android/settings/ChooseLockPattern$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/ChooseLockPattern$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/ChooseLockPattern$Stage;

    return-object v0
.end method
