.class final Lcom/android/internal/atfwd/AtCmdResponse$1;
.super Ljava/lang/Object;
.source "AtCmdResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/atfwd/AtCmdResponse;
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
        "Lcom/android/internal/atfwd/AtCmdResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/atfwd/AtCmdResponse;
    .locals 3
    .parameter "source"

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .local v1, result:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, response:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/atfwd/AtCmdResponse;

    invoke-direct {v2, v1, v0}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/internal/atfwd/AtCmdResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/atfwd/AtCmdResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/atfwd/AtCmdResponse;
    .locals 1
    .parameter "size"

    .prologue
    .line 96
    new-array v0, p1, [Lcom/android/internal/atfwd/AtCmdResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/internal/atfwd/AtCmdResponse$1;->newArray(I)[Lcom/android/internal/atfwd/AtCmdResponse;

    move-result-object v0

    return-object v0
.end method
