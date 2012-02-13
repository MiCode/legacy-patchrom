.class final Landroid/os/Message$1;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Message;
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
        "Landroid/os/Message;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/Message;
    .locals 1
    .parameter "source"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    #calls: Landroid/os/Message;->readFromParcel(Landroid/os/Parcel;)V
    invoke-static {v0, p1}, Landroid/os/Message;->access$000(Landroid/os/Message;Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/os/Message$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/Message;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/os/Message;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/os/Message$1;->newArray(I)[Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method
