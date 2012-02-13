.class public Lcom/motorola/CameraF/WebUpload/Email/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field mAddress:Ljava/lang/String;

.field mPersonal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/motorola/CameraF/WebUpload/Email/Address;->mAddress:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "address"
    .parameter "personal"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/motorola/CameraF/WebUpload/Email/Address;->mAddress:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/motorola/CameraF/WebUpload/Email/Address;->mPersonal:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static pack([Lcom/motorola/CameraF/WebUpload/Email/Address;)Ljava/lang/String;
    .locals 8
    .parameter "addresses"

    .prologue
    const/4 v7, 0x0

    const-string v5, "UTF-8"

    .line 123
    if-nez p0, :cond_0

    move-object v5, v7

    .line 143
    :goto_0
    return-object v5

    .line 126
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    array-length v1, p0

    .local v1, count:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 128
    aget-object v0, p0, v2

    .line 130
    .local v0, address:Lcom/motorola/CameraF/WebUpload/Email/Address;
    :try_start_0
    invoke-virtual {v0}, Lcom/motorola/CameraF/WebUpload/Email/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v0}, Lcom/motorola/CameraF/WebUpload/Email/Address;->getPersonal()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 132
    const/16 v5, 0x3b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v0}, Lcom/motorola/CameraF/WebUpload/Email/Address;->getPersonal()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    :cond_1
    const/4 v5, 0x1

    sub-int v5, v1, v5

    if-ge v2, v5, :cond_2

    .line 136
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 139
    :catch_0
    move-exception v5

    move-object v4, v5

    .local v4, uee:Ljava/io/UnsupportedEncodingException;
    move-object v5, v7

    .line 140
    goto :goto_0

    .line 143
    .end local v0           #address:Lcom/motorola/CameraF/WebUpload/Email/Address;
    .end local v4           #uee:Ljava/io/UnsupportedEncodingException;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static toString([Lcom/motorola/CameraF/WebUpload/Email/Address;)Ljava/lang/String;
    .locals 4
    .parameter "addresses"

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v2, 0x0

    .line 76
    :goto_0
    return-object v2

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 71
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/motorola/CameraF/WebUpload/Email/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    .line 73
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 70
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static unpack(Ljava/lang/String;)[Lcom/motorola/CameraF/WebUpload/Email/Address;
    .locals 10
    .parameter "addressList"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 85
    if-nez p0, :cond_0

    .line 86
    new-array v7, v9, [Lcom/motorola/CameraF/WebUpload/Email/Address;

    .line 111
    .end local p0
    :goto_0
    return-object v7

    .line 88
    .restart local p0
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v2, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/CameraF/WebUpload/Email/Address;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 90
    .local v3, length:I
    const/4 v5, 0x0

    .line 91
    .local v5, pairStartIndex:I
    const/4 v4, 0x0

    .line 92
    .local v4, pairEndIndex:I
    const/4 v1, 0x0

    .line 93
    .local v1, addressEndIndex:I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 94
    const/16 v7, 0x2c

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 95
    if-ne v4, v8, :cond_1

    .line 96
    move v4, v3

    .line 98
    :cond_1
    const/16 v7, 0x3b

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, address:Ljava/lang/String;
    const/4 v6, 0x0

    .line 101
    .local v6, personal:Ljava/lang/String;
    if-eq v1, v8, :cond_2

    if-le v1, v4, :cond_3

    .line 102
    :cond_2
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/CameraF/WebUpload/Email/Utility;->fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_2
    new-instance v7, Lcom/motorola/CameraF/WebUpload/Email/Address;

    invoke-direct {v7, v0, v6}, Lcom/motorola/CameraF/WebUpload/Email/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v5, v4, 0x1

    .line 110
    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/CameraF/WebUpload/Email/Utility;->fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/CameraF/WebUpload/Email/Utility;->fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 111
    .end local v0           #address:Ljava/lang/String;
    .end local v6           #personal:Ljava/lang/String;
    :cond_4
    new-array v7, v9, [Lcom/motorola/CameraF/WebUpload/Email/Address;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/motorola/CameraF/WebUpload/Email/Address;

    move-object v7, p0

    goto :goto_0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/motorola/CameraF/WebUpload/Email/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/motorola/CameraF/WebUpload/Email/Address;->mPersonal:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/motorola/CameraF/WebUpload/Email/Address;->mAddress:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .locals 0
    .parameter "personal"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/motorola/CameraF/WebUpload/Email/Address;->mPersonal:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, ">"

    const-string v2, " <"

    .line 54
    iget-object v0, p0, Lcom/motorola/CameraF/WebUpload/Email/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/motorola/CameraF/WebUpload/Email/Address;->mPersonal:Ljava/lang/String;

    const-string v1, ".*[\\(\\)<>@,;:\\\\\".\\[\\]].*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/motorola/CameraF/WebUpload/Email/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/CameraF/WebUpload/Email/Utility;->quoteString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/CameraF/WebUpload/Email/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/motorola/CameraF/WebUpload/Email/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/CameraF/WebUpload/Email/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/motorola/CameraF/WebUpload/Email/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method
