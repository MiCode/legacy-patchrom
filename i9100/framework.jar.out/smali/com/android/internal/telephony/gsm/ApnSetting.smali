.class public Lcom/android/internal/telephony/gsm/ApnSetting;
.super Ljava/lang/Object;
.source "ApnSetting.java"


# instance fields
.field apn:Ljava/lang/String;

.field authType:I

.field carrier:Ljava/lang/String;

.field id:I

.field mmsPort:Ljava/lang/String;

.field mmsProxy:Ljava/lang/String;

.field mmsc:Ljava/lang/String;

.field numeric:Ljava/lang/String;

.field password:Ljava/lang/String;

.field port:Ljava/lang/String;

.field proxy:Ljava/lang/String;

.field public types:[Ljava/lang/String;

.field user:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "numeric"
    .parameter "carrier"
    .parameter "apn"
    .parameter "proxy"
    .parameter "port"
    .parameter "mmsc"
    .parameter "mmsProxy"
    .parameter "mmsPort"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "types"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    .line 44
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->carrier:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->proxy:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->port:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsc:Ljava/lang/String;

    .line 50
    iput-object p8, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 51
    iput-object p9, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 52
    iput-object p10, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->user:Ljava/lang/String;

    .line 53
    iput-object p11, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->password:Ljava/lang/String;

    .line 54
    iput p12, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->authType:I

    .line 55
    iput-object p13, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/ApnSetting;
    .locals 15
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v2, 0xd

    .line 73
    if-nez p0, :cond_0

    move-object v0, v3

    .line 83
    :goto_0
    return-object v0

    .line 74
    :cond_0
    const-string v0, "\\s*,\\s*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 75
    .local v14, a:[Ljava/lang/String;
    array-length v0, v14

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    move-object v0, v3

    goto :goto_0

    .line 76
    :cond_1
    const/4 v12, 0x0

    .line 78
    .local v12, authType:I
    const/16 v0, 0xc

    :try_start_0
    aget-object v0, v14, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 81
    :goto_1
    array-length v0, v14

    sub-int/2addr v0, v2

    new-array v13, v0, [Ljava/lang/String;

    .line 82
    .local v13, typeArray:[Ljava/lang/String;
    array-length v0, v14

    sub-int/2addr v0, v2

    invoke-static {v14, v2, v13, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    new-instance v0, Lcom/android/internal/telephony/gsm/ApnSetting;

    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    aget-object v3, v14, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    aget-object v3, v14, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v14, v4

    const/4 v4, 0x1

    aget-object v4, v14, v4

    const/4 v5, 0x2

    aget-object v5, v14, v5

    const/4 v6, 0x3

    aget-object v6, v14, v6

    const/4 v7, 0x7

    aget-object v7, v14, v7

    const/16 v8, 0x8

    aget-object v8, v14, v8

    const/16 v9, 0x9

    aget-object v9, v14, v9

    const/4 v10, 0x4

    aget-object v10, v14, v10

    const/4 v11, 0x5

    aget-object v11, v14, v11

    invoke-direct/range {v0 .. v13}, Lcom/android/internal/telephony/gsm/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v13           #typeArray:[Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public canHandleType(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 108
    .local v3, t:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "hipri"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    :cond_0
    const/4 v4, 0x1

    .line 114
    .end local v3           #t:Ljava/lang/String;
    :goto_1
    return v4

    .line 106
    .restart local v3       #t:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v3           #t:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const-string v7, ", "

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->authType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 100
    .local v4, t:Ljava/lang/String;
    const-string v5, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v4           #t:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
