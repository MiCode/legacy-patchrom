.class public Lcom/motorola/android/wifi/StaInfo;
.super Ljava/lang/Object;
.source "StaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/android/wifi/StaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "StaInfo"


# instance fields
.field public ip:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/motorola/android/wifi/StaInfo$1;

    invoke-direct {v0}, Lcom/motorola/android/wifi/StaInfo$1;-><init>()V

    sput-object v0, Lcom/motorola/android/wifi/StaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/motorola/android/wifi/StaInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "mac"
    .parameter "ip"
    .parameter "name"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/motorola/android/wifi/StaInfo;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/android/wifi/StaInfo;->mac:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/android/wifi/StaInfo;->ip:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/android/wifi/StaInfo;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    instance-of v0, p1, Lcom/motorola/android/wifi/StaInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/wifi/StaInfo;->mac:Ljava/lang/String;

    check-cast p1, Lcom/motorola/android/wifi/StaInfo;

    .end local p1
    iget-object v1, p1, Lcom/motorola/android/wifi/StaInfo;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/android/wifi/StaInfo;->mac:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fillNetworkInfo(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/android/wifi/StaNetworkInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, staNetworkInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/wifi/StaNetworkInfo;>;"
    const-string v5, " "

    const-string v2, "0.0.0.0"

    iput-object v2, p0, Lcom/motorola/android/wifi/StaInfo;->ip:Ljava/lang/String;

    const-string v2, "Unknown"

    iput-object v2, p0, Lcom/motorola/android/wifi/StaInfo;->name:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/wifi/StaNetworkInfo;

    .local v1, networkInfo:Lcom/motorola/android/wifi/StaNetworkInfo;
    iget-object v2, v1, Lcom/motorola/android/wifi/StaNetworkInfo;->mac:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/android/wifi/StaInfo;->mac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/motorola/android/wifi/StaNetworkInfo;->ip:Ljava/lang/String;

    iput-object v2, p0, Lcom/motorola/android/wifi/StaInfo;->ip:Ljava/lang/String;

    iget-object v2, v1, Lcom/motorola/android/wifi/StaNetworkInfo;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/motorola/android/wifi/StaInfo;->name:Ljava/lang/String;

    const-string v2, "StaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "match network info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/wifi/StaInfo;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/wifi/StaInfo;->ip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/wifi/StaInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #i:I
    .end local v1           #networkInfo:Lcom/motorola/android/wifi/StaNetworkInfo;
    :cond_0
    return-void

    .restart local v0       #i:I
    .restart local v1       #networkInfo:Lcom/motorola/android/wifi/StaNetworkInfo;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/wifi/StaInfo;->mac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .local v0, none:Ljava/lang/String;
    const-string v2, "mac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/wifi/StaInfo;->mac:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", ip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/wifi/StaInfo;->ip:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/wifi/StaInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, "Unknown"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/motorola/android/wifi/StaInfo;->mac:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/motorola/android/wifi/StaInfo;->ip:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/motorola/android/wifi/StaInfo;->name:Ljava/lang/String;

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/wifi/StaInfo;->mac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/android/wifi/StaInfo;->ip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/android/wifi/StaInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
