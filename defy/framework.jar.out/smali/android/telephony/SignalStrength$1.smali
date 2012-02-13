.class final Landroid/telephony/SignalStrength$1;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SignalStrength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "in"

    .prologue
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength$1;->newArray(I)[Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method
