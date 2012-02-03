.class final Landroid/sec/clipboard/data/ClipboardData$1;
.super Ljava/lang/Object;
.source "ClipboardData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/data/ClipboardData;
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
        "Landroid/sec/clipboard/data/ClipboardData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/sec/clipboard/data/ClipboardData;
    .locals 2
    .parameter "source"

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 176
    .local v1, format:I
    invoke-static {v1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 178
    .local v0, Result:Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardData;->readFormSource(Landroid/os/Parcel;)V

    .line 185
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .parameter "size"

    .prologue
    .line 190
    new-array v0, p1, [Landroid/sec/clipboard/data/ClipboardData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardData$1;->newArray(I)[Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method
