.class final Landroid/nfc/LlcpPacket$1;
.super Ljava/lang/Object;
.source "LlcpPacket.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/LlcpPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/nfc/LlcpPacket;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/LlcpPacket;
    .locals 4
    .parameter "in"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-short v2, v3

    .local v2, sap:S
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, dataLength:I
    new-array v0, v1, [B

    .local v0, data:[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    new-instance v3, Landroid/nfc/LlcpPacket;

    invoke-direct {v3, v2, v0}, Landroid/nfc/LlcpPacket;-><init>(I[B)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/nfc/LlcpPacket$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/LlcpPacket;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/LlcpPacket;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/nfc/LlcpPacket;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/nfc/LlcpPacket$1;->newArray(I)[Landroid/nfc/LlcpPacket;

    move-result-object v0

    return-object v0
.end method
