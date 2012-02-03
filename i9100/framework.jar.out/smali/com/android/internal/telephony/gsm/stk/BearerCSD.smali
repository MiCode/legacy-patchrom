.class public Lcom/android/internal/telephony/gsm/stk/BearerCSD;
.super Ljava/lang/Object;
.source "BearerCSD.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/BearerCSD;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bearerService:I

.field public connectionElement:I

.field public dataRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/BearerCSD$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/BearerCSD$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/BearerCSD;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerCSD;->dataRate:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerCSD;->bearerService:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerCSD;->connectionElement:I

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/gsm/stk/BearerCSD$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/BearerCSD;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public writeParametersTobuffer(Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .parameter "buf"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerCSD;->dataRate:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 53
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerCSD;->bearerService:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 54
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerCSD;->connectionElement:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 55
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerCSD;->dataRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerCSD;->bearerService:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/BearerCSD;->connectionElement:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    return-void
.end method
