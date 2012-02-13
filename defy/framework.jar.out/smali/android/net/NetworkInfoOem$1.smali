.class final Landroid/net/NetworkInfoOem$1;
.super Ljava/lang/Object;
.source "NetworkInfoOem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkInfoOem;
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
        "Landroid/net/NetworkInfoOem;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkInfoOem;
    .locals 19
    .parameter "in"

    .prologue
    :try_start_0
    sget-object v18, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .local v3, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, info1:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, cntxtid:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, apni:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, ifn:Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, tmp:[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, addrlen:I
    const/4 v8, 0x0

    .local v8, addr:[Ljava/net/InetAddress;
    if-lez v12, :cond_1

    new-array v8, v12, [Ljava/net/InetAddress;

    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move v1, v12

    if-ge v0, v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-static/range {v17 .. v17}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v18

    aput-object v18, v8, v16

    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .end local v16           #i:I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, prfxlen:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, dnslen:I
    const/4 v10, 0x0

    .local v10, dnslist:[Ljava/net/InetAddress;
    if-lez v13, :cond_3

    new-array v10, v13, [Ljava/net/InetAddress;

    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_1
    move/from16 v0, v16

    move v1, v13

    if-ge v0, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-static/range {v17 .. v17}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v18

    aput-object v18, v10, v16

    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .end local v16           #i:I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .local v15, gatewaylen:I
    const/4 v11, 0x0

    .local v11, gatewaylist:[Ljava/net/InetAddress;
    if-lez v15, :cond_5

    new-array v11, v15, [Ljava/net/InetAddress;

    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_2
    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    if-eqz v17, :cond_4

    invoke-static/range {v17 .. v17}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v18

    aput-object v18, v11, v16

    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .end local v16           #i:I
    :cond_5
    new-instance v2, Landroid/net/NetworkInfoOem;

    invoke-direct/range {v2 .. v11}, Landroid/net/NetworkInfoOem;-><init>(Landroid/net/NetworkInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;I[Ljava/net/InetAddress;[Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, conInfo:Landroid/net/NetworkInfoOem;
    move-object/from16 v18, v2

    .end local v2           #conInfo:Landroid/net/NetworkInfoOem;
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #info1:Ljava/lang/String;
    .end local v5           #cntxtid:I
    .end local v6           #apni:Ljava/lang/String;
    .end local v7           #ifn:Ljava/lang/String;
    .end local v8           #addr:[Ljava/net/InetAddress;
    .end local v9           #prfxlen:I
    .end local v10           #dnslist:[Ljava/net/InetAddress;
    .end local v11           #gatewaylist:[Ljava/net/InetAddress;
    .end local v12           #addrlen:I
    .end local v13           #dnslen:I
    .end local v15           #gatewaylen:I
    .end local v17           #tmp:[B
    :goto_3
    return-object v18

    :catch_0
    move-exception v18

    move-object/from16 v14, v18

    .local v14, e:Ljava/lang/Exception;
    const/16 v18, 0x0

    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/NetworkInfoOem$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkInfoOem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/NetworkInfoOem;
    .locals 1
    .parameter "size"

    .prologue
    new-array v0, p1, [Landroid/net/NetworkInfoOem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/NetworkInfoOem$1;->newArray(I)[Landroid/net/NetworkInfoOem;

    move-result-object v0

    return-object v0
.end method
