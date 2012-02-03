.class public Lcom/broadcom/bt/service/bpp/JobStatus;
.super Ljava/lang/Object;
.source "JobStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public JobState:I

.field public PrinterState:I

.field public PrinterStateReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/broadcom/bt/service/bpp/JobStatus$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/JobStatus$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/JobStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "jobState"
    .parameter "printerState"
    .parameter "printerStateReason"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/broadcom/bt/service/bpp/JobStatus;->JobState:I

    .line 70
    iput p2, p0, Lcom/broadcom/bt/service/bpp/JobStatus;->PrinterState:I

    .line 71
    iput p3, p0, Lcom/broadcom/bt/service/bpp/JobStatus;->PrinterStateReason:I

    .line 72
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/JobStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/JobStatus$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/JobStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/JobStatus;->JobState:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/JobStatus;->PrinterState:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/JobStatus;->PrinterStateReason:I

    .line 104
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 90
    iget v0, p0, Lcom/broadcom/bt/service/bpp/JobStatus;->JobState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Lcom/broadcom/bt/service/bpp/JobStatus;->PrinterState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/broadcom/bt/service/bpp/JobStatus;->PrinterStateReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return-void
.end method
