.class public Landroid/nfc/LlcpPacket;
.super Ljava/lang/Object;
.source "LlcpPacket.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/LlcpPacket;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDataBuffer:[B

.field private final mRemoteSap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/nfc/LlcpPacket$1;

    invoke-direct {v0}, Landroid/nfc/LlcpPacket$1;-><init>()V

    sput-object v0, Landroid/nfc/LlcpPacket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .parameter "sap"
    .parameter "data"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/nfc/LlcpPacket;->mRemoteSap:I

    iput-object p2, p0, Landroid/nfc/LlcpPacket;->mDataBuffer:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getDataBuffer()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/LlcpPacket;->mDataBuffer:[B

    return-object v0
.end method

.method public getRemoteSap()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/nfc/LlcpPacket;->mRemoteSap:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Landroid/nfc/LlcpPacket;->mRemoteSap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/LlcpPacket;->mDataBuffer:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/LlcpPacket;->mDataBuffer:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
