.class Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 157
    const-string v0, "telephony.db"

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getVersion(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 158
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 23
    .parameter "parser"

    .prologue
    .line 437
    const-string v20, "apn"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 438
    const/16 v20, 0x0

    .line 533
    :goto_0
    return-object v20

    .line 441
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 443
    .local v6, map:Landroid/content/ContentValues;
    const/16 v20, 0x0

    const-string v21, "mcc"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 444
    .local v7, mcc:Ljava/lang/String;
    const/16 v20, 0x0

    const-string v21, "mnc"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 445
    .local v10, mnc:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 447
    .local v11, numeric:Ljava/lang/String;
    const-string v20, "numeric"

    move-object v0, v6

    move-object/from16 v1, v20

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v20, "mcc"

    move-object v0, v6

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v20, "mnc"

    move-object v0, v6

    move-object/from16 v1, v20

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v20, "name"

    const/16 v21, 0x0

    const-string v22, "carrier"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v20, "apn"

    const/16 v21, 0x0

    const-string v22, "apn"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v20, "user"

    const/16 v21, 0x0

    const-string v22, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v20, "server"

    const/16 v21, 0x0

    const-string v22, "server"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v20, "password"

    const/16 v21, 0x0

    const-string v22, "password"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/16 v20, 0x0

    const-string v21, "proxy"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 458
    .local v15, proxy:Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 459
    const-string v20, "proxy"

    move-object v0, v6

    move-object/from16 v1, v20

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_1
    const/16 v20, 0x0

    const-string v21, "port"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 462
    .local v12, port:Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 463
    const-string v20, "port"

    move-object v0, v6

    move-object/from16 v1, v20

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_2
    const/16 v20, 0x0

    const-string v21, "mmsproxy"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 466
    .local v9, mmsproxy:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 467
    const-string v20, "mmsproxy"

    move-object v0, v6

    move-object/from16 v1, v20

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_3
    const/16 v20, 0x0

    const-string v21, "mmsport"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 470
    .local v8, mmsport:Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 471
    const-string v20, "mmsport"

    move-object v0, v6

    move-object/from16 v1, v20

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_4
    const-string v20, "mmsc"

    const/16 v21, 0x0

    const-string v22, "mmsc"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const/16 v20, 0x0

    const-string v21, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 475
    .local v19, type:Ljava/lang/String;
    if-eqz v19, :cond_5

    .line 476
    const-string v20, "type"

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_5
    const/16 v20, 0x0

    const-string v21, "authtype"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, auth:Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 481
    const-string v20, "authtype"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 486
    :cond_6
    const/16 v20, 0x0

    const-string v21, "inactivetimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 487
    .local v18, timer:Ljava/lang/String;
    if-eqz v18, :cond_7

    .line 488
    const-string v20, "inactivetimer"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 490
    :cond_7
    const/16 v20, 0x0

    const-string v21, "enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 491
    .local v5, enabled:Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 492
    const-string v20, "enabled"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v21

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 494
    :cond_8
    const/16 v20, 0x0

    const-string v21, "class"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, apnclass:Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 496
    const-string v20, "class"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    :cond_9
    const/16 v20, 0x0

    const-string v21, "spn"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 503
    .local v17, spn:Ljava/lang/String;
    if-eqz v17, :cond_a

    .line 504
    const-string v20, "spn"

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_a
    const/16 v20, 0x0

    const-string v21, "preloaded"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 511
    .local v13, preloaded:Ljava/lang/String;
    if-eqz v13, :cond_d

    .line 512
    const-string v20, "preloaded"

    move-object v0, v6

    move-object/from16 v1, v20

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :goto_1
    const/16 v20, 0x0

    const-string v21, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 523
    .local v14, protocol:Ljava/lang/String;
    if-eqz v14, :cond_b

    .line 524
    const-string v20, "protocol"

    move-object v0, v6

    move-object/from16 v1, v20

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_b
    const/16 v20, 0x0

    const-string v21, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 528
    .local v16, roamingProtocol:Ljava/lang/String;
    if-eqz v16, :cond_c

    .line 529
    const-string v20, "roaming_protocol"

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    move-object/from16 v20, v6

    .line 533
    goto/16 :goto_0

    .line 515
    .end local v14           #protocol:Ljava/lang/String;
    .end local v16           #roamingProtocol:Ljava/lang/String;
    :cond_d
    const-string v20, "preloaded"

    const-string v21, "true"

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getVersion(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    const/high16 v6, 0xc

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 164
    .local v3, r:Landroid/content/res/Resources;
    const/high16 v4, 0x605

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 166
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v4, "apns"

    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 167
    const/4 v4, 0x0

    const-string v5, "version"

    invoke-interface {v1, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 168
    .local v2, publicversion:I
    or-int v4, v6, v2

    .line 175
    if-eqz v1, :cond_0

    .line 176
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .end local v2           #publicversion:I
    :cond_0
    :goto_0
    return v4

    .line 169
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 170
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "TelephonyProvider"

    const-string v5, "Can\'t get version of APN database"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    if-eqz v1, :cond_1

    .line 176
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    move v4, v6

    goto :goto_0

    .line 175
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    .line 176
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v4
.end method

.method private initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .parameter "db"

    .prologue
    const-string v9, "version"

    const-string v9, "apns"

    const-string v9, "TelephonyProvider"

    .line 232
    iget-object v9, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 233
    .local v8, r:Landroid/content/res/Resources;
    const/high16 v9, 0x605

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 234
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    const/4 v7, -0x1

    .line 236
    .local v7, publicversion:I
    :try_start_0
    const-string v9, "apns"

    invoke-static {v6, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 237
    const/4 v9, 0x0

    const-string v10, "version"

    invoke-interface {v6, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 238
    invoke-direct {p0, p1, v6}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    if-eqz v6, :cond_0

    .line 245
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 252
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 254
    .local v1, confparser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "etc/apns-conf.xml"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 255
    .local v0, confFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 257
    .local v2, confreader:Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 258
    .end local v2           #confreader:Ljava/io/FileReader;
    .local v3, confreader:Ljava/io/FileReader;
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 259
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 260
    const-string v9, "apns"

    invoke-static {v1, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 263
    const/4 v9, 0x0

    const-string v10, "version"

    invoke-interface {v1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 264
    .local v4, confversion:I
    if-eq v7, v4, :cond_3

    .line 265
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Internal APNS file version doesn\'t match "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 270
    .end local v4           #confversion:I
    :catch_0
    move-exception v9

    move-object v2, v3

    .line 276
    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 278
    :cond_1
    :goto_2
    return-void

    .line 239
    .end local v0           #confFile:Ljava/io/File;
    .end local v1           #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v2           #confreader:Ljava/io/FileReader;
    :catch_1
    move-exception v9

    move-object v5, v9

    .line 240
    .local v5, e:Ljava/lang/Exception;
    :try_start_4
    const-string v9, "TelephonyProvider"

    const-string v10, "Got exception while loading APN database."

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 244
    if-eqz v6, :cond_0

    .line 245
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 244
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v6, :cond_2

    .line 245
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v9

    .line 269
    .restart local v0       #confFile:Ljava/io/File;
    .restart local v1       #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3       #confreader:Ljava/io/FileReader;
    .restart local v4       #confversion:I
    :cond_3
    :try_start_5
    invoke-direct {p0, p1, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 276
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_4
    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_2

    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_2
    move-exception v9

    move-object v2, v3

    .line 277
    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_2

    .line 273
    .end local v4           #confversion:I
    :catch_3
    move-exception v9

    move-object v5, v9

    .line 274
    .restart local v5       #e:Ljava/lang/Exception;
    :goto_3
    :try_start_7
    const-string v9, "TelephonyProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while parsing \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 276
    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    :catch_4
    move-exception v9

    goto :goto_2

    .end local v5           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    :goto_4
    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_5
    :goto_5
    throw v9

    :catch_5
    move-exception v9

    goto :goto_2

    :catch_6
    move-exception v10

    goto :goto_5

    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_4

    .line 273
    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_7
    move-exception v9

    move-object v5, v9

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_3

    .line 270
    :catch_8
    move-exception v9

    goto :goto_1
.end method

.method private insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 5
    .parameter "db"
    .parameter "table"
    .parameter "row"

    .prologue
    const-string v4, "roaming_protocol"

    const-string v3, "protocol"

    const-string v2, "authtype"

    const-string v1, "IP"

    .line 565
    const-string v0, "authtype"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    const-string v0, "authtype"

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 569
    :cond_0
    const-string v0, "protocol"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 570
    const-string v0, "protocol"

    const-string v0, "IP"

    invoke-virtual {p3, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_1
    const-string v0, "roaming_protocol"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 573
    const-string v0, "roaming_protocol"

    const-string v0, "IP"

    invoke-virtual {p3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_2
    const-string v0, "carriers"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 577
    return-void
.end method

.method private loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .parameter "db"
    .parameter "parser"

    .prologue
    const-string v4, "TelephonyProvider"

    const-string v3, "Got execption while getting perferred time zone."

    .line 544
    if-eqz p2, :cond_0

    .line 547
    :goto_0
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 548
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v1

    .line 549
    .local v1, row:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 550
    const-string v2, "carriers"

    invoke-direct {p0, p1, v2, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 555
    .end local v1           #row:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 556
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "TelephonyProvider"

    const-string v2, "Got execption while getting perferred time zone."

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_0
    :goto_1
    return-void

    .line 557
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 558
    .local v0, e:Ljava/io/IOException;
    const-string v2, "TelephonyProvider"

    const-string v2, "Got execption while getting perferred time zone."

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 186
    const-string v0, "CREATE TABLE carriers(_id INTEGER PRIMARY KEY,name TEXT,numeric TEXT,mcc TEXT,mnc TEXT,apn TEXT,user TEXT,server TEXT,password TEXT,proxy TEXT,port TEXT,mmsproxy TEXT,mmsport TEXT,mmsc TEXT,mmsc2 TEXT,authtype INTEGER,type TEXT,inactivetimer INTEGER,enabled BOOLEAN,class INTEGER,current INTEGER,spn TEXT,protocol TEXT,roaming_protocol TEXT,preloaded TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 227
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 228
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v4, 0x0

    .line 282
    const v3, 0x50006

    if-ge p2, v3, :cond_0

    .line 294
    const-string v3, "ALTER TABLE carriers ADD COLUMN authtype INTEGER DEFAULT -1;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 297
    const p2, 0x50006

    .line 302
    :cond_0
    const v3, 0x60006

    if-ge p2, v3, :cond_4

    .line 307
    const-string v3, "select sql from sqlite_master where sql like \'%mmsc2 text%\'"

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 310
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 311
    :cond_1
    const-string v3, "ALTER TABLE carriers ADD COLUMN mmsc2 TEXT;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 314
    :cond_2
    if-eqz v0, :cond_3

    .line 315
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_3
    const p2, 0x60006

    .line 321
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_4
    const v3, 0x70006

    if-ge p2, v3, :cond_8

    .line 325
    const-string v3, "select sql from sqlite_master where sql like \'%spn text%\'"

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 328
    .local v1, cursor2:Landroid/database/Cursor;
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_6

    .line 331
    :cond_5
    const-string v3, "ALTER TABLE carriers ADD COLUMN spn TEXT;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 334
    :cond_6
    if-eqz v1, :cond_7

    .line 335
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_7
    const p2, 0x70006

    .line 341
    .end local v1           #cursor2:Landroid/database/Cursor;
    :cond_8
    const v3, 0x80006

    if-ge p2, v3, :cond_c

    .line 345
    const-string v3, "select sql from sqlite_master where sql like \'%preloaded text%\'"

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 348
    .local v2, cursor3:Landroid/database/Cursor;
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_a

    .line 349
    :cond_9
    const-string v3, "ALTER TABLE carriers ADD COLUMN preloaded TEXT;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 351
    :cond_a
    if-eqz v2, :cond_b

    .line 352
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 354
    :cond_b
    const p2, 0x80006

    .line 360
    .end local v2           #cursor3:Landroid/database/Cursor;
    :cond_c
    const v3, 0x90006

    if-ge p2, v3, :cond_10

    .line 364
    const-string v3, "select sql from sqlite_master where sql like \'%class INTEGER%\'"

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 368
    .restart local v0       #cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_e

    .line 369
    :cond_d
    const-string v3, "ALTER TABLE carriers ADD COLUMN inactivetimer INTEGER DEFAULT -1;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 371
    const-string v3, "ALTER TABLE carriers ADD COLUMN enabled BOOLEAN;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 373
    const-string v3, "ALTER TABLE carriers ADD COLUMN iptype TEXT;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 375
    const-string v3, "ALTER TABLE carriers ADD COLUMN class INTEGER DEFAULT 0;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 378
    :cond_e
    if-eqz v0, :cond_f

    .line 379
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 382
    :cond_f
    const p2, 0x90006

    .line 388
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_10
    const v3, 0xb0006

    if-ge p2, v3, :cond_14

    .line 392
    const-string v3, "select sql from sqlite_master where sql like \'%roaming_protocol TEXT%\'"

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 396
    .restart local v0       #cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_12

    .line 398
    :cond_11
    const-string v3, "ALTER TABLE carriers ADD COLUMN protocol TEXT DEFAULT IP;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 400
    const-string v3, "ALTER TABLE carriers ADD COLUMN roaming_protocol TEXT DEFAULT IP;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 403
    :cond_12
    if-eqz v0, :cond_13

    .line 404
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 407
    :cond_13
    const p2, 0xb0006

    .line 410
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_14
    const v3, 0xc0006

    if-ge p2, v3, :cond_17

    .line 412
    const-string v3, "select sql from sqlite_master where sql like \'%iptype TEXT%\'"

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 416
    .restart local v0       #cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_15

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_15

    .line 418
    const-string v3, "UPDATE carriers SET protocol = iptype;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 421
    :cond_15
    if-eqz v0, :cond_16

    .line 422
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 425
    :cond_16
    const p2, 0xc0006

    .line 428
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_17
    return-void
.end method
