.class final Lcom/broadcom/bt/service/map/MessageInfo$1;
.super Ljava/lang/Object;
.source "MessageInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/map/MessageInfo;
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
        "Lcom/broadcom/bt/service/map/MessageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/broadcom/bt/service/map/MessageInfo;
    .locals 1
    .parameter "source"

    .prologue
    .line 213
    new-instance v0, Lcom/broadcom/bt/service/map/MessageInfo;

    invoke-direct {v0, p1}, Lcom/broadcom/bt/service/map/MessageInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MessageInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/broadcom/bt/service/map/MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/broadcom/bt/service/map/MessageInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 218
    new-array v0, p1, [Lcom/broadcom/bt/service/map/MessageInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MessageInfo$1;->newArray(I)[Lcom/broadcom/bt/service/map/MessageInfo;

    move-result-object v0

    return-object v0
.end method
