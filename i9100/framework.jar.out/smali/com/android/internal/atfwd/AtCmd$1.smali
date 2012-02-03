.class final Lcom/android/internal/atfwd/AtCmd$1;
.super Ljava/lang/Object;
.source "AtCmd.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/atfwd/AtCmd;
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
        "Lcom/android/internal/atfwd/AtCmd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/atfwd/AtCmd;
    .locals 2
    .parameter "source"

    .prologue
    .line 111
    new-instance v0, Lcom/android/internal/atfwd/AtCmd;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/atfwd/AtCmd;-><init>(Landroid/os/Parcel;Lcom/android/internal/atfwd/AtCmd$1;)V

    .line 112
    .local v0, ret:Lcom/android/internal/atfwd/AtCmd;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/android/internal/atfwd/AtCmd$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/atfwd/AtCmd;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/atfwd/AtCmd;
    .locals 1
    .parameter "size"

    .prologue
    .line 116
    new-array v0, p1, [Lcom/android/internal/atfwd/AtCmd;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/android/internal/atfwd/AtCmd$1;->newArray(I)[Lcom/android/internal/atfwd/AtCmd;

    move-result-object v0

    return-object v0
.end method
