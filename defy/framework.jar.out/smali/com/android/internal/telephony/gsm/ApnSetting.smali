.class public Lcom/android/internal/telephony/gsm/ApnSetting;
.super Ljava/lang/Object;
.source "ApnSetting.java"


# static fields
.field static final V2_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV2\\]\\s*"


# instance fields
.field apn:Ljava/lang/String;

.field apnclass:I

.field authType:I

.field carrier:Ljava/lang/String;

.field enabled:Z

.field id:I

.field isDedicatedHiPri:Z

.field private mContext:Landroid/content/Context;

.field mmsPort:Ljava/lang/String;

.field mmsProxy:Ljava/lang/String;

.field mmsc:Ljava/lang/String;

.field numeric:Ljava/lang/String;

.field password:Ljava/lang/String;

.field port:Ljava/lang/String;

.field protocol:Ljava/lang/String;

.field proxy:Ljava/lang/String;

.field roamingProtocol:Ljava/lang/String;

.field timer:I

.field public types:[Ljava/lang/String;

.field user:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V
    .locals 18
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
    .parameter "enabled"
    .parameter "timer"
    .parameter "protocol"
    .parameter "types"
    .parameter "cls"
    .parameter "roamingProtocol"

    .prologue
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p16

    move-object/from16 v16, p15

    move-object/from16 v17, p18

    invoke-direct/range {v2 .. v17}, Lcom/android/internal/telephony/gsm/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, p13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->enabled:Z

    move/from16 v0, p14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->timer:I

    move/from16 v0, p17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->apnclass:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
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
    .parameter "protocol"
    .parameter "roamingProtocol"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->isDedicatedHiPri:Z

    iput p1, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->carrier:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->proxy:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->port:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsc:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsProxy:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsPort:Ljava/lang/String;

    move-object/from16 v0, p10

    move-object v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->user:Ljava/lang/String;

    move-object/from16 v0, p11

    move-object v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->password:Ljava/lang/String;

    move/from16 v0, p12

    move-object v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->authType:I

    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->protocol:Ljava/lang/String;

    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->roamingProtocol:Ljava/lang/String;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->enabled:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->timer:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->apnclass:I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .local v2, defaultPhone:Lcom/android/internal/telephony/Phone;
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10d0032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->isDedicatedHiPri:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v3, v4

    .local v3, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->isDedicatedHiPri:Z

    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/ApnSetting;
    .locals 21
    .parameter "data"

    .prologue
    if-nez p0, :cond_0

    const/16 p0, 0x0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const-string v5, "^\\[ApnSettingV2\\]\\s*.*"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    .local v5, version:I
    const-string v6, "^\\[ApnSettingV2\\]\\s*"

    const-string v7, ""

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move v6, v5

    .end local v5           #version:I
    .local v6, version:I
    :goto_1
    const-string v5, "\\s*,\\s*"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .local p0, a:[Ljava/lang/String;
    move-object/from16 v0, p0

    array-length v0, v0

    move v5, v0

    const/16 v7, 0xe

    if-ge v5, v7, :cond_2

    const/16 p0, 0x0

    goto :goto_0

    .end local v6           #version:I
    .local p0, data:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    .restart local v5       #version:I
    move v6, v5

    .end local v5           #version:I
    .restart local v6       #version:I
    goto :goto_1

    .local p0, a:[Ljava/lang/String;
    :cond_2
    const/16 v5, 0xc

    :try_start_0
    aget-object v5, p0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .local v17, authType:I
    :goto_2
    const/4 v5, 0x1

    if-ne v6, v5, :cond_3

    move-object/from16 v0, p0

    array-length v0, v0

    move v5, v0

    const/16 v6, 0xd

    sub-int/2addr v5, v6

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v6           #version:I
    .local v18, typeArray:[Ljava/lang/String;
    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move v7, v0

    const/16 v8, 0xd

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v18

    move v3, v6

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v19, "IP"

    .local v19, protocol:Ljava/lang/String;
    const-string v20, "IP"

    .local v20, roamingProtocol:Ljava/lang/String;
    :goto_3
    new-instance v5, Lcom/android/internal/telephony/gsm/ApnSetting;

    const/4 v6, -0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0xa

    aget-object v8, p0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xb

    aget-object v8, p0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, p0, v8

    const/4 v9, 0x1

    aget-object v9, p0, v9

    const/4 v10, 0x2

    aget-object v10, p0, v10

    const/4 v11, 0x3

    aget-object v11, p0, v11

    const/4 v12, 0x7

    aget-object v12, p0, v12

    const/16 v13, 0x8

    aget-object v13, p0, v13

    const/16 v14, 0x9

    aget-object v14, p0, v14

    const/4 v15, 0x4

    aget-object v15, p0, v15

    const/16 v16, 0x5

    aget-object v16, p0, v16

    invoke-direct/range {v5 .. v20}, Lcom/android/internal/telephony/gsm/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 p0, v5

    goto/16 :goto_0

    .end local v17           #authType:I
    .end local v18           #typeArray:[Ljava/lang/String;
    .end local v19           #protocol:Ljava/lang/String;
    .end local v20           #roamingProtocol:Ljava/lang/String;
    .restart local v6       #version:I
    :catch_0
    move-exception v5

    .local v5, e:Ljava/lang/Exception;
    const/16 v17, 0x0

    .restart local v17       #authType:I
    goto :goto_2

    .end local v5           #e:Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    array-length v0, v0

    move v5, v0

    const/16 v6, 0x10

    if-ge v5, v6, :cond_4

    .end local v6           #version:I
    const/16 p0, 0x0

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0xd

    aget-object v5, p0, v5

    const-string v6, "\\s*\\|\\s*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .restart local v18       #typeArray:[Ljava/lang/String;
    const/16 v5, 0xe

    aget-object v19, p0, v5

    .restart local v19       #protocol:Ljava/lang/String;
    const/16 v5, 0xf

    aget-object v20, p0, v5

    .restart local v20       #roamingProtocol:Ljava/lang/String;
    goto :goto_3
.end method


# virtual methods
.method public canHandleType(Ljava/lang/String;)Z
    .locals 7
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    const-string v6, "*"

    const-string v4, "entitle"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    .local v3, t:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .end local v3           #t:Ljava/lang/String;
    :goto_1
    return v4

    .restart local v3       #t:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #t:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_2
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    .restart local v3       #t:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->isDedicatedHiPri:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "hipri"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v4, v5

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v3           #t:Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, ", "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "[ApnSettingV2] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->authType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->timer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->apnclass:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/ApnSetting;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
