.class final Lcom/vzw/location/VzwLocation$1;
.super Ljava/lang/Object;
.source "VzwLocation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocation;
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
        "Lcom/vzw/location/VzwLocation;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwLocation;
    .locals 2
    .parameter "in"

    .prologue
    const-string v0, "VzwLocation"

    const-string v1, "VzwLocation CREATOR createFromParcel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vzw/location/VzwLocation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/vzw/location/VzwLocation;-><init>(Landroid/os/Parcel;Lcom/vzw/location/VzwLocation$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwLocation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwLocation;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Lcom/vzw/location/VzwLocation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwLocation$1;->newArray(I)[Lcom/vzw/location/VzwLocation;

    move-result-object v0

    return-object v0
.end method
