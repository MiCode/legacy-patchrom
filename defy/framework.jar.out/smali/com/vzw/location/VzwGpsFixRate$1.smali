.class final Lcom/vzw/location/VzwGpsFixRate$1;
.super Ljava/lang/Object;
.source "VzwGpsFixRate.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsFixRate;
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
        "Lcom/vzw/location/VzwGpsFixRate;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsFixRate;
    .locals 2
    .parameter "in"

    .prologue
    new-instance v0, Lcom/vzw/location/VzwGpsFixRate;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/vzw/location/VzwGpsFixRate;-><init>(Landroid/os/Parcel;Lcom/vzw/location/VzwGpsFixRate$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsFixRate$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwGpsFixRate;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Lcom/vzw/location/VzwGpsFixRate;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsFixRate$1;->newArray(I)[Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v0

    return-object v0
.end method
