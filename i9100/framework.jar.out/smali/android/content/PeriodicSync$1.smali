.class final Landroid/content/PeriodicSync$1;
.super Ljava/lang/Object;
.source "PeriodicSync.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/PeriodicSync;
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
        "Landroid/content/PeriodicSync;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/PeriodicSync;
    .locals 6
    .parameter "source"

    .prologue
    .line 59
    new-instance v0, Landroid/content/PeriodicSync;

    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/content/PeriodicSync$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/PeriodicSync;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/PeriodicSync;
    .locals 1
    .parameter "size"

    .prologue
    .line 64
    new-array v0, p1, [Landroid/content/PeriodicSync;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/content/PeriodicSync$1;->newArray(I)[Landroid/content/PeriodicSync;

    move-result-object v0

    return-object v0
.end method
