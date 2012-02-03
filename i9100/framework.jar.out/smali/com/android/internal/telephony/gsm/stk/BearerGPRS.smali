.class public Lcom/android/internal/telephony/gsm/stk/BearerGPRS;
.super Ljava/lang/Object;
.source "BearerGPRS.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/BearerGPRS;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public delayClass:I

.field public meanThroughputClass:I

.field public packetDataProtocolType:I

.field public peakThroughputClass:I

.field public precedenceClass:I

.field public reliabilityClass:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/BearerGPRS$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->precedenceClass:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->delayClass:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->reliabilityClass:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->peakThroughputClass:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->meanThroughputClass:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->packetDataProtocolType:I

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/gsm/stk/BearerGPRS$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public writeParametersTobuffer(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .parameter "buf"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->precedenceClass:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 54
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->delayClass:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 55
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->reliabilityClass:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 56
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->peakThroughputClass:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 57
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->meanThroughputClass:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 58
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->packetDataProtocolType:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->precedenceClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->delayClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->reliabilityClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->peakThroughputClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->meanThroughputClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->packetDataProtocolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void
.end method
