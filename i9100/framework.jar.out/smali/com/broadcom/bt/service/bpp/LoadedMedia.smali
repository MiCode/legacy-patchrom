.class public Lcom/broadcom/bt/service/bpp/LoadedMedia;
.super Ljava/lang/Object;
.source "LoadedMedia.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/LoadedMedia;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public MediaType:I

.field public Size:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/broadcom/bt/service/bpp/LoadedMedia$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/LoadedMedia$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/LoadedMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "mediaType"
    .parameter "size"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/broadcom/bt/service/bpp/LoadedMedia;->MediaType:I

    .line 63
    iput-object p2, p0, Lcom/broadcom/bt/service/bpp/LoadedMedia;->Size:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/LoadedMedia;->readFromParcel(Landroid/os/Parcel;)V

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/bpp/LoadedMedia$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/LoadedMedia;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/service/bpp/LoadedMedia;->MediaType:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/LoadedMedia;->Size:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 81
    iget v0, p0, Lcom/broadcom/bt/service/bpp/LoadedMedia;->MediaType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/LoadedMedia;->Size:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return-void
.end method
