.class public final Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;
.super Ljava/lang/Object;
.source "GsmNumberHandleForAssistedDialing.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final USIDD_LEN:I

.field private final US_CC:Ljava/lang/String;

.field private final US_IDD:Ljava/lang/String;

.field private final US_NDD:Ljava/lang/String;

.field private cr:Landroid/content/ContentResolver;

.field private isoCountryName:Ljava/lang/String;

.field private mCurrentMcc:I

.field private mMccTable:Lcom/motorola/android/telephony/MCCTables;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, "1"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GsmNumberHandleForAssistedDialing"

    iput-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->LOG_TAG:Ljava/lang/String;

    const-string v0, "011"

    iput-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->US_IDD:Ljava/lang/String;

    const-string v0, "1"

    iput-object v1, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->US_CC:Ljava/lang/String;

    const-string v0, "1"

    iput-object v1, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->US_NDD:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->USIDD_LEN:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->mCurrentMcc:I

    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    new-instance v0, Lcom/motorola/android/telephony/MCCTables;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/MCCTables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    return-void
.end method

.method private manipulateNumberinGsmNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .parameter "sourceNumber"
    .parameter "byWhom"

    .prologue
    move-object/from16 v6, p1

    .local v6, manipulatedNumber:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, numLength:I
    const-string v3, ""

    .local v3, areaCode:Ljava/lang/String;
    sget-object v19, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v19

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v20, v0

    const-string v21, "cur_country_idd"

    invoke-static/range {v20 .. v21}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, otaIdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v20, v0

    const-string v21, "cur_country_ndd"

    invoke-static/range {v20 .. v21}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, otaNdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v20, v0

    const-string v21, "cur_country_code"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, otaCC:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v20, v0

    const-string v21, "ref_country_idd"

    invoke-static/range {v20 .. v21}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, refIdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v20, v0

    const-string v21, "ref_country_ndd"

    invoke-static/range {v20 .. v21}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, refNdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v20, v0

    const-string v21, "ref_country_code"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .local v14, refCC:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v20, v0

    const-string v21, "cur_country_updated_by_user"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .local v4, areaCodeUpdated:I
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v20, v0

    const-string v21, "ref_country_area_code"

    invoke-static/range {v20 .. v21}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    .local v5, mMdn:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    const/16 v19, 0x0

    const/16 v20, 0x3

    move-object v0, v5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .end local v5           #mMdn:Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    .local v11, otaIddLength:I
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    :cond_2
    const/4 v13, 0x0

    .local v13, otaNddLength:I
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    :cond_3
    const/4 v9, 0x0

    .local v9, otaCCLength:I
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    :cond_4
    const/16 v16, 0x0

    .local v16, refIddLength:I
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    :cond_5
    const/16 v18, 0x0

    .local v18, refNddLength:I
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    :cond_6
    if-eqz v7, :cond_7

    move v0, v7

    move/from16 v1, v16

    if-lt v0, v1, :cond_9

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    const-string v19, "+"

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_7
    :goto_0
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    const/4 v6, 0x0

    :cond_8
    return-object v6

    .end local v4           #areaCodeUpdated:I
    .end local v8           #otaCC:Ljava/lang/String;
    .end local v9           #otaCCLength:I
    .end local v10           #otaIdd:Ljava/lang/String;
    .end local v11           #otaIddLength:I
    .end local v12           #otaNdd:Ljava/lang/String;
    .end local v13           #otaNddLength:I
    .end local v14           #refCC:Ljava/lang/String;
    .end local v15           #refIdd:Ljava/lang/String;
    .end local v16           #refIddLength:I
    .end local v17           #refNdd:Ljava/lang/String;
    .end local v18           #refNddLength:I
    :catchall_0
    move-exception v20

    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    .restart local v4       #areaCodeUpdated:I
    .restart local v8       #otaCC:Ljava/lang/String;
    .restart local v9       #otaCCLength:I
    .restart local v10       #otaIdd:Ljava/lang/String;
    .restart local v11       #otaIddLength:I
    .restart local v12       #otaNdd:Ljava/lang/String;
    .restart local v13       #otaNddLength:I
    .restart local v14       #refCC:Ljava/lang/String;
    .restart local v15       #refIdd:Ljava/lang/String;
    .restart local v16       #refIddLength:I
    .restart local v17       #refNdd:Ljava/lang/String;
    .restart local v18       #refNddLength:I
    :cond_9
    const-string v19, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v19, 0xb

    move v0, v7

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const-string v19, "1"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const-string v19, "+"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_a
    const-string v19, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    const-string v19, "1"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    const/16 v19, 0xa

    move v0, v7

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const-string v19, "+"

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_b
    const-string v19, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    const-string v19, "1"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    const/16 v19, 0x7

    move v0, v7

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    const-string v19, "+"

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_c
    const-string v19, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    const-string v19, "1"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    move v0, v7

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    const/16 v19, 0x3

    move v0, v7

    move/from16 v1, v19

    if-lt v0, v1, :cond_d

    const/16 v19, 0x0

    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "011"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const-string v19, "+"

    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_d
    const-string v19, "+"

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method


# virtual methods
.method public getManipulatedNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "sourceNumber"
    .parameter "byWhom"

    .prologue
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    const-string v2, "cur_country_mcc"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->mCurrentMcc:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->mCurrentMcc:I

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->manipulateNumberinGsmNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
