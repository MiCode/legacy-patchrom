.class public Lcom/broadcom/bt/service/bpp/BipParameters;
.super Ljava/lang/Object;
.source "BipParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/BipParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Encoding:[B

.field public Pixel:Lcom/broadcom/bt/service/bpp/BipPixel;

.field public Size:I

.field public Transform:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/broadcom/bt/service/bpp/BipParameters$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/BipParameters$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/BipParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(ILcom/broadcom/bt/service/bpp/BipPixel;[BI)V
    .locals 0
    .parameter "size"
    .parameter "pixel"
    .parameter "encoding"
    .parameter "transform"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Size:I

    .line 72
    iput-object p2, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Pixel:Lcom/broadcom/bt/service/bpp/BipPixel;

    .line 73
    iput-object p3, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Encoding:[B

    .line 74
    iput p4, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Transform:I

    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BipParameters;->readFromParcel(Landroid/os/Parcel;)V

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/BipParameters$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BipParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Size:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .local v0, temp:I
    if-eqz v0, :cond_0

    .line 113
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Encoding:[B

    .line 114
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Encoding:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 118
    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/bpp/BipPixel;

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Pixel:Lcom/broadcom/bt/service/bpp/BipPixel;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Transform:I

    .line 120
    return-void

    .line 116
    :cond_0
    iput-object v2, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Encoding:[B

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 91
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Encoding:[B

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Encoding:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Encoding:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Pixel:Lcom/broadcom/bt/service/bpp/BipPixel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    iget v0, p0, Lcom/broadcom/bt/service/bpp/BipParameters;->Transform:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
