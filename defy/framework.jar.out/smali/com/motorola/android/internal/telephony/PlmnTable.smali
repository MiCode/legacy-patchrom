.class public final Lcom/motorola/android/internal/telephony/PlmnTable;
.super Ljava/lang/Object;
.source "PlmnTable.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PlmnTable"

.field static final PLMN_SYSTEM_FILE_PATH:Ljava/lang/String; = "/system/etc/motorola/preferred_networks/plmn_text_table.bin"

.field protected static plmnTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/android/internal/telephony/Mcc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getMccFromPlmn(Ljava/lang/String;)Lcom/motorola/android/internal/telephony/Mcc;
    .locals 3
    .parameter "mccStr"

    .prologue
    const-string v2, "PlmnTable"

    const-string v0, "PlmnTable"

    const-string v0, ">>>>>>>>>> getMccFromPlmn"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "PlmnTable"

    const-string v0, "Loading PLMNTable"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/motorola/android/internal/telephony/PlmnTable;->loadPlmnTable()V

    :cond_0
    const-string v0, "PlmnTable"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mccStr :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "PlmnTable"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DON\'T HAVE the key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_2
    const-string v0, "PlmnTable"

    const-string v0, "getMccFromPlmn >>>>>>>>>> "

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/android/internal/telephony/Mcc;

    move-object v0, p0

    goto :goto_0
.end method

.method public static getMncLength(Ljava/lang/String;I)I
    .locals 8
    .parameter "imsi"
    .parameter "mncLengthInit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const-string v6, "PlmnTable"

    const-string v4, "PlmnTable"

    const-string v4, ">>>>>>>>>> getMncLength"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    .local v1, mccStr:Ljava/lang/String;
    move v2, p1

    .local v2, mncLength:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v4, "PlmnTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mccStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mncLenght: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/motorola/android/internal/telephony/PlmnTable;->getMccFromPlmn(Ljava/lang/String;)Lcom/motorola/android/internal/telephony/Mcc;

    move-result-object v0

    .local v0, mcc:Lcom/motorola/android/internal/telephony/Mcc;
    if-nez v0, :cond_2

    const-string v4, "PlmnTable"

    const-string v4, " mcc is NULL "

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .end local v2           #mncLength:I
    .local v3, mncLength:I
    :goto_0
    return v3

    .end local v3           #mncLength:I
    .restart local v2       #mncLength:I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    :cond_2
    if-lez v2, :cond_3

    add-int/lit8 v4, v2, 0x3

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/android/internal/telephony/Mcc;->hasMnc(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    .end local v2           #mncLength:I
    .restart local v3       #mncLength:I
    goto :goto_0

    .end local v3           #mncLength:I
    .restart local v2       #mncLength:I
    :cond_3
    const-string v4, "PlmnTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mncLength: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_4

    const-string v4, "PlmnTable"

    const-string v4, "no mnc found"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x6

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/android/internal/telephony/Mcc;->hasMnc(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "PlmnTable"

    const-string v4, "mnc has 3 digits."

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    :cond_4
    const-string v4, "PlmnTable"

    const-string v4, "getMncLength >>>>>>>>>>"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .end local v2           #mncLength:I
    .restart local v3       #mncLength:I
    goto :goto_0
.end method

.method protected static loadPlmnTable()V
    .locals 16

    .prologue
    const/4 v15, -0x1

    const-string v11, " - "

    const-string v14, "PlmnTable"

    const-string v11, "PlmnTable"

    const-string v11, "loadPlmnTable >>>>>>>>>>>"

    invoke-static {v14, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    if-eqz v11, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    .local v3, inputStream:Ljava/io/FileInputStream;
    :try_start_0
    const-string v11, "PlmnTable"

    const-string v12, "Try to open the following file /system/etc/motorola/preferred_networks/plmn_text_table.bin"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/FileInputStream;

    .end local v3           #inputStream:Ljava/io/FileInputStream;
    new-instance v11, Ljava/io/File;

    const-string v12, "/system/etc/motorola/preferred_networks/plmn_text_table.bin"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3       #inputStream:Ljava/io/FileInputStream;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    sput-object v11, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    const/4 v11, 0x3

    new-array v9, v11, [I

    .local v9, plmnBytes:[I
    const/4 v4, 0x0

    .local v4, length:I
    const/4 v11, 0x6

    :try_start_1
    new-array v10, v11, [Ljava/lang/String;

    .local v10, plmnStr:[Ljava/lang/String;
    new-array v8, v4, [B

    .local v8, notUsed:[B
    const/4 v5, 0x0

    .local v5, mcc:Lcom/motorola/android/internal/telephony/Mcc;
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v12

    aput v12, v9, v11

    if-eq v12, v15, :cond_4

    const/4 v11, 0x1

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v12

    aput v12, v9, v11

    if-eq v12, v15, :cond_4

    const/4 v11, 0x2

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v12

    aput v12, v9, v11

    if-eq v12, v15, :cond_4

    const-string v11, "PlmnTable"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "values read: plmnBytes:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v9, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget v13, v9, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x2

    aget v13, v9, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v11, v9

    if-ge v2, v11, :cond_2

    mul-int/lit8 v11, v2, 0x2

    aget v12, v9, v2

    and-int/lit16 v12, v12, 0xf0

    div-int/lit8 v12, v12, 0x10

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    mul-int/lit8 v11, v2, 0x2

    add-int/lit8 v11, v11, 0x1

    aget v12, v9, v2

    and-int/lit8 v12, v12, 0xf

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2           #i:I
    .end local v3           #inputStream:Ljava/io/FileInputStream;
    .end local v4           #length:I
    .end local v5           #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    .end local v8           #notUsed:[B
    .end local v9           #plmnBytes:[I
    .end local v10           #plmnStr:[Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v1, v11

    .local v1, exSystem:Ljava/io/FileNotFoundException;
    const-string v11, "PlmnTable"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #exSystem:Ljava/io/FileNotFoundException;
    .restart local v2       #i:I
    .restart local v3       #inputStream:Ljava/io/FileInputStream;
    .restart local v4       #length:I
    .restart local v5       #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    .restart local v8       #notUsed:[B
    .restart local v9       #plmnBytes:[I
    .restart local v10       #plmnStr:[Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v11, "PlmnTable"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "values MCC STR: plmnStr:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x3

    aget-object v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "PlmnTable"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "values MNC STR: plmnStr:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x5

    aget-object v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x4

    aget-object v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " * "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x5

    aget-object v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x4

    aget-object v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x2

    aget-object v13, v10, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, mccStr:Ljava/lang/String;
    const/4 v11, 0x2

    aget-object v11, v10, v11

    const-string v12, "15"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x5

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x4

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .local v7, mncStr:Ljava/lang/String;
    :goto_2
    sget-object v11, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "PlmnTable"

    const-string v12, "plmnTable contains the key"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    check-cast v5, Lcom/motorola/android/internal/telephony/Mcc;

    .restart local v5       #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    :goto_3
    if-eqz v5, :cond_3

    invoke-virtual {v5, v7}, Lcom/motorola/android/internal/telephony/Mcc;->addMnc(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v11

    if-ne v11, v15, :cond_7

    .end local v2           #i:I
    .end local v5           #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    .end local v6           #mccStr:Ljava/lang/String;
    .end local v7           #mncStr:Ljava/lang/String;
    .end local v8           #notUsed:[B
    .end local v10           #plmnStr:[Ljava/lang/String;
    :cond_4
    :goto_4
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_5
    const-string v11, "PlmnTable"

    const-string v11, ">>>>>>>>>>>>>> loadPlmnTable"

    invoke-static {v14, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v2       #i:I
    .restart local v5       #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    .restart local v6       #mccStr:Ljava/lang/String;
    .restart local v8       #notUsed:[B
    .restart local v10       #plmnStr:[Ljava/lang/String;
    :cond_5
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x5

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x4

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    goto :goto_2

    .restart local v7       #mncStr:Ljava/lang/String;
    :cond_6
    new-instance v5, Lcom/motorola/android/internal/telephony/Mcc;

    .end local v5           #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    invoke-direct {v5, v6}, Lcom/motorola/android/internal/telephony/Mcc;-><init>(Ljava/lang/String;)V

    .restart local v5       #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    sget-object v11, Lcom/motorola/android/internal/telephony/PlmnTable;->plmnTable:Ljava/util/HashMap;

    invoke-virtual {v11, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .end local v2           #i:I
    .end local v5           #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    .end local v6           #mccStr:Ljava/lang/String;
    .end local v7           #mncStr:Ljava/lang/String;
    .end local v8           #notUsed:[B
    .end local v10           #plmnStr:[Ljava/lang/String;
    :catch_1
    move-exception v11

    move-object v0, v11

    .local v0, e:Ljava/io/IOException;
    const-string v11, "PlmnTable"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #i:I
    .restart local v5       #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    .restart local v6       #mccStr:Ljava/lang/String;
    .restart local v7       #mncStr:Ljava/lang/String;
    .restart local v8       #notUsed:[B
    .restart local v10       #plmnStr:[Ljava/lang/String;
    :cond_7
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v4

    if-eq v4, v15, :cond_4

    invoke-virtual {v3, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v11

    if-ne v11, v15, :cond_1

    goto :goto_4

    .end local v2           #i:I
    .end local v5           #mcc:Lcom/motorola/android/internal/telephony/Mcc;
    .end local v6           #mccStr:Ljava/lang/String;
    .end local v7           #mncStr:Ljava/lang/String;
    .end local v8           #notUsed:[B
    .end local v10           #plmnStr:[Ljava/lang/String;
    :catch_2
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    const-string v11, "PlmnTable"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method
