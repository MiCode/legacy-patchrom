.class public Landroid/telephony/NeighboringCell;
.super Ljava/lang/Object;
.source "NeighboringCell.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/NeighboringCell;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_BSIC:I = -0x1

.field public static final UNKNOWN_CID:I = -0x1

.field public static final UNKNOWN_RSSI:I = 0x63

.field public static final UNKNOWN_UARFCN:I = -0x1


# instance fields
.field private mBsic:I

.field private mCid:I

.field private mRssi:I

.field private mUarfcn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/telephony/NeighboringCell$1;

    invoke-direct {v0}, Landroid/telephony/NeighboringCell$1;-><init>()V

    sput-object v0, Landroid/telephony/NeighboringCell;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/telephony/NeighboringCell;->mCid:I

    iput v1, p0, Landroid/telephony/NeighboringCell;->mUarfcn:I

    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/NeighboringCell;->mRssi:I

    iput v1, p0, Landroid/telephony/NeighboringCell;->mBsic:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "cid"
    .parameter "uarfcn"
    .parameter "rssi"
    .parameter "bsic"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/NeighboringCell;->mCid:I

    iput p2, p0, Landroid/telephony/NeighboringCell;->mUarfcn:I

    iput p3, p0, Landroid/telephony/NeighboringCell;->mRssi:I

    iput p4, p0, Landroid/telephony/NeighboringCell;->mBsic:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCell;->mCid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCell;->mUarfcn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCell;->mRssi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCell;->mBsic:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getBsic()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/NeighboringCell;->mBsic:I

    return v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/NeighboringCell;->mCid:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/NeighboringCell;->mRssi:I

    return v0
.end method

.method public getUarfcn()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/NeighboringCell;->mUarfcn:I

    return v0
.end method

.method public setBsic(I)V
    .locals 0
    .parameter "bsic"

    .prologue
    iput p1, p0, Landroid/telephony/NeighboringCell;->mBsic:I

    return-void
.end method

.method public setCid(I)V
    .locals 0
    .parameter "cid"

    .prologue
    iput p1, p0, Landroid/telephony/NeighboringCell;->mCid:I

    return-void
.end method

.method public setRssi(I)V
    .locals 0
    .parameter "rssi"

    .prologue
    iput p1, p0, Landroid/telephony/NeighboringCell;->mRssi:I

    return-void
.end method

.method public setUarfcn(I)V
    .locals 0
    .parameter "uarfcn"

    .prologue
    iput p1, p0, Landroid/telephony/NeighboringCell;->mUarfcn:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, -0x1

    const-string v3, "/"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NeighboringCell;->mCid:I

    if-ne v1, v4, :cond_0

    const-string v1, "/"

    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Uarfcn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NeighboringCell;->mUarfcn:I

    if-ne v1, v4, :cond_1

    const-string v1, "/"

    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RSSI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NeighboringCell;->mRssi:I

    const/16 v2, 0x63

    if-ne v1, v2, :cond_2

    const-string v1, "/"

    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BSIC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NeighboringCell;->mBsic:I

    if-ne v1, v4, :cond_3

    const-string v1, "/"

    move-object v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v1, p0, Landroid/telephony/NeighboringCell;->mCid:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/telephony/NeighboringCell;->mUarfcn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget v1, p0, Landroid/telephony/NeighboringCell;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/telephony/NeighboringCell;->mBsic:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Landroid/telephony/NeighboringCell;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/NeighboringCell;->mUarfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/NeighboringCell;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/NeighboringCell;->mBsic:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
