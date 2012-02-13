.class public final Landroid/nfc/TransceiveResult;
.super Ljava/lang/Object;
.source "TransceiveResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/TransceiveResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mResponseData:[B

.field private final mSuccess:Z

.field private final mTagLost:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/nfc/TransceiveResult$1;

    invoke-direct {v0}, Landroid/nfc/TransceiveResult$1;-><init>()V

    sput-object v0, Landroid/nfc/TransceiveResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 0
    .parameter "success"
    .parameter "tagIsLost"
    .parameter "data"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/nfc/TransceiveResult;->mSuccess:Z

    iput-boolean p2, p0, Landroid/nfc/TransceiveResult;->mTagLost:Z

    iput-object p3, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getResponseData()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/nfc/TransceiveResult;->mSuccess:Z

    return v0
.end method

.method public isTagLost()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/nfc/TransceiveResult;->mTagLost:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/nfc/TransceiveResult;->mSuccess:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/nfc/TransceiveResult;->mTagLost:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/nfc/TransceiveResult;->mSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/TransceiveResult;->mResponseData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
