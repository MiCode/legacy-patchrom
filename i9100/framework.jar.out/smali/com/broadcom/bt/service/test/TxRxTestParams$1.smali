.class final Lcom/broadcom/bt/service/test/TxRxTestParams$1;
.super Ljava/lang/Object;
.source "TxRxTestParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/test/TxRxTestParams;
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
        "Lcom/broadcom/bt/service/test/TxRxTestParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/broadcom/bt/service/test/TxRxTestParams;
    .locals 2
    .parameter "in"

    .prologue
    .line 47
    new-instance v0, Lcom/broadcom/bt/service/test/TxRxTestParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/broadcom/bt/service/test/TxRxTestParams;-><init>(Landroid/os/Parcel;Lcom/broadcom/bt/service/test/TxRxTestParams$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/test/TxRxTestParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/broadcom/bt/service/test/TxRxTestParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/broadcom/bt/service/test/TxRxTestParams;
    .locals 1
    .parameter "size"

    .prologue
    .line 51
    new-array v0, p1, [Lcom/broadcom/bt/service/test/TxRxTestParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/test/TxRxTestParams$1;->newArray(I)[Lcom/broadcom/bt/service/test/TxRxTestParams;

    move-result-object v0

    return-object v0
.end method
