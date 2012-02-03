.class Lcom/android/internal/telephony/gsm/stk/CommandDetails;
.super Lcom/android/internal/telephony/gsm/stk/ValueObject;
.source "CommandDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public commandNumber:I

.field public commandQualifier:I

.field public compRequired:Z

.field public typeOfCommand:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/CommandDetails$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ValueObject;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ValueObject;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    .line 56
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    iget-boolean v1, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    iget v1, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    iget v1, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    iget v1, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getTag()Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    .line 59
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
