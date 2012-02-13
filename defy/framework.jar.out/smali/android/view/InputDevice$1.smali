.class final Landroid/view/InputDevice$1;
.super Ljava/lang/Object;
.source "InputDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputDevice;
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
        "Landroid/view/InputDevice;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/InputDevice;
    .locals 2
    .parameter "in"

    .prologue
    new-instance v0, Landroid/view/InputDevice;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/InputDevice;-><init>(Landroid/view/InputDevice$1;)V

    .local v0, result:Landroid/view/InputDevice;
    #calls: Landroid/view/InputDevice;->readFromParcel(Landroid/os/Parcel;)V
    invoke-static {v0, p1}, Landroid/view/InputDevice;->access$200(Landroid/view/InputDevice;Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/InputDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/InputDevice;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/view/InputDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/InputDevice$1;->newArray(I)[Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method
