.class public Landroid/net/NetworkInfoOem;
.super Ljava/lang/Object;
.source "NetworkInfoOem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkInfoOem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:[Ljava/net/InetAddress;

.field private apn:Ljava/lang/String;

.field private cid:I

.field private dns:[Ljava/net/InetAddress;

.field private feature:Ljava/lang/String;

.field private gateways:[Ljava/net/InetAddress;

.field private ifaceName:Ljava/lang/String;

.field private networkInfo:Landroid/net/NetworkInfo;

.field private prefixLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/NetworkInfoOem$1;

    invoke-direct {v0}, Landroid/net/NetworkInfoOem$1;-><init>()V

    sput-object v0, Landroid/net/NetworkInfoOem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkInfo;)V
    .locals 3
    .parameter "networkInfo"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid networkInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/net/NetworkInfoOem;->networkInfo:Landroid/net/NetworkInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkInfoOem;->feature:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 3
    .parameter "networkInfo"
    .parameter "feature"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid networkInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/net/NetworkInfoOem;->networkInfo:Landroid/net/NetworkInfo;

    iput-object p2, p0, Landroid/net/NetworkInfoOem;->feature:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;I[Ljava/net/InetAddress;[Ljava/net/InetAddress;)V
    .locals 3
    .parameter "netInfo"
    .parameter "ftr"
    .parameter "cid"
    .parameter "apnni"
    .parameter "ifn"
    .parameter "pdpaddr"
    .parameter "masklen"
    .parameter "dnslist"
    .parameter "gateways"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid networkInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkInfoOem;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/net/NetworkInfoOem;->networkInfo:Landroid/net/NetworkInfo;

    iput-object p2, p0, Landroid/net/NetworkInfoOem;->feature:Ljava/lang/String;

    iput p3, p0, Landroid/net/NetworkInfoOem;->cid:I

    iput-object p4, p0, Landroid/net/NetworkInfoOem;->apn:Ljava/lang/String;

    iput-object p5, p0, Landroid/net/NetworkInfoOem;->ifaceName:Ljava/lang/String;

    invoke-direct {p0, p6}, Landroid/net/NetworkInfoOem;->refineInetAddr([Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkInfoOem;->address:[Ljava/net/InetAddress;

    iput p7, p0, Landroid/net/NetworkInfoOem;->prefixLen:I

    invoke-direct {p0, p8}, Landroid/net/NetworkInfoOem;->refineInetAddr([Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkInfoOem;->dns:[Ljava/net/InetAddress;

    invoke-direct {p0, p9}, Landroid/net/NetworkInfoOem;->refineInetAddr([Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkInfoOem;->gateways:[Ljava/net/InetAddress;

    return-void
.end method

.method private refineInetAddr([Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    .locals 5
    .parameter "inetAddr"

    .prologue
    const/4 v3, 0x0

    .local v3, resultAddr:[Ljava/net/InetAddress;
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .local v0, addrSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    aget-object v4, p1, v1

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_3

    new-array v3, v0, [Ljava/net/InetAddress;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_3

    aget-object v4, p1, v1

    if-eqz v4, :cond_2

    aget-object v4, p1, v1

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #addrSize:I
    .end local v1           #i:I
    .end local v2           #j:I
    :cond_3
    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkInfoOem;->address:[Ljava/net/InetAddress;

    return-object v0
.end method

.method public getApn()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkInfoOem;->apn:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/NetworkInfoOem;->cid:I

    return v0
.end method

.method public getDNS()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkInfoOem;->dns:[Ljava/net/InetAddress;

    return-object v0
.end method

.method public getFeature()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkInfoOem;->feature:Ljava/lang/String;

    return-object v0
.end method

.method public getGateways()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkInfoOem;->gateways:[Ljava/net/InetAddress;

    return-object v0
.end method

.method public getIPMask()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/NetworkInfoOem;->prefixLen:I

    return v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/NetworkInfoOem;->networkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public setCid(I)V
    .locals 0
    .parameter "cid"

    .prologue
    iput p1, p0, Landroid/net/NetworkInfoOem;->cid:I

    return-void
.end method

.method public setFeature(Ljava/lang/String;)V
    .locals 0
    .parameter "feature"

    .prologue
    iput-object p1, p0, Landroid/net/NetworkInfoOem;->feature:Ljava/lang/String;

    return-void
.end method

.method public setNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "networkInfo"

    .prologue
    iput-object p1, p0, Landroid/net/NetworkInfoOem;->networkInfo:Landroid/net/NetworkInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, "]="

    const-string v4, "null"

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "NetworkInfoOem:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v1, sb:Ljava/lang/StringBuffer;
    iget-object v2, p0, Landroid/net/NetworkInfoOem;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", feature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Landroid/net/NetworkInfoOem;->feature:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "null"

    move-object v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", cid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/NetworkInfoOem;->cid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", apn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Landroid/net/NetworkInfoOem;->apn:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "null"

    move-object v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", ifaceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Landroid/net/NetworkInfoOem;->ifaceName:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, "null"

    move-object v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Landroid/net/NetworkInfoOem;->address:[Ljava/net/InetAddress;

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v2, p0, Landroid/net/NetworkInfoOem;->address:[Ljava/net/InetAddress;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", address["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Landroid/net/NetworkInfoOem;->address:[Ljava/net/InetAddress;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    const-string v2, "null"

    move-object v2, v4

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0           #i:I
    :cond_0
    iget-object v2, p0, Landroid/net/NetworkInfoOem;->feature:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/NetworkInfoOem;->apn:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/net/NetworkInfoOem;->ifaceName:Ljava/lang/String;

    goto :goto_2

    .restart local v0       #i:I
    :cond_3
    iget-object v2, p0, Landroid/net/NetworkInfoOem;->address:[Ljava/net/InetAddress;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .end local v0           #i:I
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", prefixLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/NetworkInfoOem;->prefixLen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Landroid/net/NetworkInfoOem;->dns:[Ljava/net/InetAddress;

    if-eqz v2, :cond_6

    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    iget-object v2, p0, Landroid/net/NetworkInfoOem;->dns:[Ljava/net/InetAddress;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", dns["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Landroid/net/NetworkInfoOem;->dns:[Ljava/net/InetAddress;

    aget-object v2, v2, v0

    if-nez v2, :cond_5

    const-string v2, "null"

    move-object v2, v4

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    iget-object v2, p0, Landroid/net/NetworkInfoOem;->dns:[Ljava/net/InetAddress;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .end local v0           #i:I
    :cond_6
    iget-object v2, p0, Landroid/net/NetworkInfoOem;->gateways:[Ljava/net/InetAddress;

    if-eqz v2, :cond_8

    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_7
    iget-object v2, p0, Landroid/net/NetworkInfoOem;->gateways:[Ljava/net/InetAddress;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", gateways["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Landroid/net/NetworkInfoOem;->gateways:[Ljava/net/InetAddress;

    aget-object v2, v2, v0

    if-nez v2, :cond_7

    const-string v2, "null"

    move-object v2, v4

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    iget-object v2, p0, Landroid/net/NetworkInfoOem;->gateways:[Ljava/net/InetAddress;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .end local v0           #i:I
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/net/NetworkInfoOem;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, p1, p2}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v1, p0, Landroid/net/NetworkInfoOem;->feature:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Landroid/net/NetworkInfoOem;->cid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/net/NetworkInfoOem;->apn:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkInfoOem;->ifaceName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkInfoOem;->address:[Ljava/net/InetAddress;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/NetworkInfoOem;->address:[Ljava/net/InetAddress;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/net/NetworkInfoOem;->address:[Ljava/net/InetAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/net/NetworkInfoOem;->address:[Ljava/net/InetAddress;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkInfoOem;->address:[Ljava/net/InetAddress;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v3

    goto :goto_1

    .end local v0           #i:I
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2
    iget v1, p0, Landroid/net/NetworkInfoOem;->prefixLen:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/net/NetworkInfoOem;->dns:[Ljava/net/InetAddress;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/net/NetworkInfoOem;->dns:[Ljava/net/InetAddress;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Landroid/net/NetworkInfoOem;->dns:[Ljava/net/InetAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Landroid/net/NetworkInfoOem;->dns:[Ljava/net/InetAddress;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/NetworkInfoOem;->dns:[Ljava/net/InetAddress;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v1, v3

    goto :goto_3

    .end local v0           #i:I
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5
    iget-object v1, p0, Landroid/net/NetworkInfoOem;->gateways:[Ljava/net/InetAddress;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/net/NetworkInfoOem;->gateways:[Ljava/net/InetAddress;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    iget-object v1, p0, Landroid/net/NetworkInfoOem;->gateways:[Ljava/net/InetAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Landroid/net/NetworkInfoOem;->gateways:[Ljava/net/InetAddress;

    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/net/NetworkInfoOem;->gateways:[Ljava/net/InetAddress;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move-object v1, v3

    goto :goto_5

    .end local v0           #i:I
    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_8
    return-void
.end method
