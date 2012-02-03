.class final Landroid/net/wifi/WifiProgressStore$1;
.super Ljava/lang/Object;
.source "WifiProgressStore.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiProgressStore;
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
        "Landroid/net/wifi/WifiProgressStore;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiProgressStore;
    .locals 3
    .parameter "in"

    .prologue
    .line 119
    new-instance v0, Landroid/net/wifi/WifiProgressStore;

    invoke-direct {v0}, Landroid/net/wifi/WifiProgressStore;-><init>()V

    .line 120
    .local v0, storeInfo:Landroid/net/wifi/WifiProgressStore;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiProgressStore;->setLapseTime(I)V

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiProgressStore;->setProgressValue(I)V

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiProgressStore;->setProgressMode(I)V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiProgressStore;->setProgressPinNumber(I)V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiProgressStore;->setCurrentTime(J)V

    .line 125
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiProgressStore;->setWpsInProgress(Z)V

    .line 126
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiProgressStore$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiProgressStore;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiProgressStore;
    .locals 1
    .parameter "size"

    .prologue
    .line 130
    new-array v0, p1, [Landroid/net/wifi/WifiProgressStore;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiProgressStore$1;->newArray(I)[Landroid/net/wifi/WifiProgressStore;

    move-result-object v0

    return-object v0
.end method
