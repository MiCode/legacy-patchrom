.class final Landroid/nfc/TransceiveResult$1;
.super Ljava/lang/Object;
.source "TransceiveResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/TransceiveResult;
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
        "Landroid/nfc/TransceiveResult;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/TransceiveResult;
    .locals 7
    .parameter "in"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_0

    move v2, v5

    .local v2, success:Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_1

    move v3, v5

    .local v3, tagLost:Z
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, responseLength:I
    new-array v0, v1, [B

    .local v0, responseData:[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .end local v1           #responseLength:I
    :goto_2
    new-instance v4, Landroid/nfc/TransceiveResult;

    invoke-direct {v4, v2, v3, v0}, Landroid/nfc/TransceiveResult;-><init>(ZZ[B)V

    return-object v4

    .end local v0           #responseData:[B
    .end local v2           #success:Z
    .end local v3           #tagLost:Z
    :cond_0
    move v2, v6

    goto :goto_0

    .restart local v2       #success:Z
    :cond_1
    move v3, v6

    goto :goto_1

    .restart local v3       #tagLost:Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #responseData:[B
    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/nfc/TransceiveResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/TransceiveResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/TransceiveResult;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/nfc/TransceiveResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/nfc/TransceiveResult$1;->newArray(I)[Landroid/nfc/TransceiveResult;

    move-result-object v0

    return-object v0
.end method
