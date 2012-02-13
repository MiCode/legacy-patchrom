.class public final Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;
.super Ljava/lang/Object;
.source "CdmaNumberHandleForAssistedDialing.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

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

    const-string v0, "CdmaNumberHandleForAssistedDialing"

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->LOG_TAG:Ljava/lang/String;

    const-string v0, "011"

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->US_IDD:Ljava/lang/String;

    const-string v0, "1"

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->US_CC:Ljava/lang/String;

    const-string v0, "1"

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->US_NDD:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mCurrentMcc:I

    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    new-instance v0, Lcom/motorola/android/telephony/MCCTables;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/MCCTables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    return-void
.end method

.method private checkAndProcessNonLeadingPlusCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"
    .parameter "otaIdd"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v0           #c:C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private hasPlusCode(Ljava/lang/String;)Z
    .locals 6
    .parameter "phoneNumber"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, len:I
    if-eqz p1, :cond_0

    if-ge v1, v5, :cond_1

    :cond_0
    move v2, v4

    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method private hasSpecialChar(Ljava/lang/String;)Z
    .locals 6
    .parameter "phoneNumber"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, len:I
    if-eqz p1, :cond_0

    if-ge v2, v5, :cond_1

    :cond_0
    move v3, v4

    :goto_0
    return v3

    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    const/16 v3, 0x39

    if-le v0, v3, :cond_3

    :cond_2
    const/16 v3, 0x2b

    if-eq v0, v3, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #c:C
    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method private isValidCountryCode(Ljava/lang/String;)Z
    .locals 1
    .parameter "countryCode"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isValidIDD(Ljava/lang/String;)Z
    .locals 1
    .parameter "idd"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isValidIDD(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isValidNANPAreaCode(Ljava/lang/String;)Z
    .locals 1
    .parameter "areaCode"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isValidNANPAreaCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private manipulateNumInVZWNetwork(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 9
    .parameter "sourceNumber"
    .parameter "byWhom"
    .parameter "isNBPCDAllowed"
    .parameter "lastNBPCDStatus"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "011"

    move-object v0, p1

    .local v0, manipulatedNumber:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, numLength:I
    if-eqz v1, :cond_4

    if-nez p3, :cond_1

    const-string v2, "011"

    invoke-direct {p0, p1, v6}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->checkAndProcessNonLeadingPlusCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "011"

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->hasPlusCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->hasSpecialChar(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez p3, :cond_4

    const/16 v2, 0xc

    if-ne v1, v2, :cond_6

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidNANPAreaCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x0

    :cond_5
    move-object v2, v0

    goto :goto_0

    :cond_6
    const/16 v2, 0xc

    if-lt v1, v2, :cond_4

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x4

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_7
    const-string v2, "011"

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    const/16 v2, 0xb

    if-ne v1, v2, :cond_9

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_9
    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    const-string v2, "BY_DIALER"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "011"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p4, :cond_a

    const-string v2, "+"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    const-string v2, "011"

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_b
    const-string v2, "BY_CONTACT"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "011"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0xb

    if-ne v1, v2, :cond_d

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    if-eqz p4, :cond_c

    const-string v2, "+"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    const-string v2, "011"

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_f
    if-eqz p4, :cond_10

    const-string v2, "+"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_10
    const-string v2, "011"

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_11
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x4

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_12
    if-eqz p4, :cond_13

    const-string v2, "+"

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_13
    const-string v2, "011"

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_14
    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x5

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    const/4 v2, 0x4

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_15
    if-eqz p4, :cond_16

    const-string v2, "+"

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_16
    const-string v2, "011"

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_17
    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x6

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x5

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x4

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_18
    if-eqz p4, :cond_19

    const-string v2, "+"

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_19
    const-string v2, "011"

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1a
    const/4 v2, 0x4

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x4

    const/4 v3, 0x7

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x4

    const/4 v3, 0x5

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1b
    if-eqz p4, :cond_1c

    const-string v2, "+"

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1c
    const-string v2, "011"

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1d
    const/4 v2, 0x5

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1e
    if-eqz p4, :cond_1f

    const-string v2, "+"

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1f
    const-string v2, "011"

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private manipulateNumberinNonVZWNetwork(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 20
    .parameter "sourceNumber"
    .parameter "byWhom"
    .parameter "isNBPCDAllowed"
    .parameter "lastNBPCDStatus"

    .prologue
    move-object/from16 v6, p1

    .local v6, manipulatedNumber:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, numLength:I
    const-string v3, ""

    .local v3, areaCode:Ljava/lang/String;
    sget-object v16, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "cur_country_idd"

    invoke-static/range {v17 .. v18}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, otaIdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "cur_country_ndd"

    invoke-static/range {v17 .. v18}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, otaNdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "cur_country_code"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, otaCC:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "ref_country_idd"

    invoke-static/range {v17 .. v18}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, refIdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "cur_country_updated_by_user"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .local v4, areaCodeUpdated:I
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "ref_country_area_code"

    invoke-static/range {v17 .. v18}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    .local v5, mMdn:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_1

    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object v0, v5

    move/from16 v1, v16

    move/from16 v2, v17

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
    const/4 v15, 0x0

    .local v15, refIddLength:I
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    :cond_5
    if-eqz v7, :cond_a

    if-nez p3, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->checkAndProcessNonLeadingPlusCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v0, v6

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const-string v17, "+"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x1

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_6
    move-object/from16 v16, v6

    :goto_0
    return-object v16

    .end local v4           #areaCodeUpdated:I
    .end local v8           #otaCC:Ljava/lang/String;
    .end local v9           #otaCCLength:I
    .end local v10           #otaIdd:Ljava/lang/String;
    .end local v11           #otaIddLength:I
    .end local v12           #otaNdd:Ljava/lang/String;
    .end local v13           #otaNddLength:I
    .end local v14           #refIdd:Ljava/lang/String;
    .end local v15           #refIddLength:I
    :catchall_0
    move-exception v17

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .restart local v4       #areaCodeUpdated:I
    .restart local v8       #otaCC:Ljava/lang/String;
    .restart local v9       #otaCCLength:I
    .restart local v10       #otaIdd:Ljava/lang/String;
    .restart local v11       #otaIddLength:I
    .restart local v12       #otaNdd:Ljava/lang/String;
    .restart local v13       #otaNddLength:I
    .restart local v14       #refIdd:Ljava/lang/String;
    .restart local v15       #refIddLength:I
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->hasPlusCode(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x0

    goto :goto_0

    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->hasSpecialChar(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    const/16 v16, 0x0

    goto :goto_0

    :cond_9
    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const-string v17, "+"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    if-nez p3, :cond_a

    add-int/lit8 v16, v9, 0x1

    move v0, v7

    move/from16 v1, v16

    if-lt v0, v1, :cond_c

    const/16 v16, 0x1

    add-int/lit8 v17, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    add-int/lit8 v16, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_a
    :goto_1
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/4 v6, 0x0

    :cond_b
    move-object/from16 v16, v6

    goto :goto_0

    :cond_c
    const/16 v16, 0x2

    move v0, v7

    move/from16 v1, v16

    if-ne v0, v1, :cond_d

    const/16 v16, 0x1

    const/16 v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_f

    :cond_d
    const/16 v16, 0x3

    move v0, v7

    move/from16 v1, v16

    if-ne v0, v1, :cond_e

    const/16 v16, 0x1

    const/16 v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_f

    const/16 v16, 0x1

    const/16 v17, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_f

    :cond_e
    const/16 v16, 0x3

    move v0, v7

    move/from16 v1, v16

    if-le v0, v1, :cond_a

    const/16 v16, 0x1

    const/16 v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_f

    const/16 v16, 0x1

    const/16 v17, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_f

    const/16 v16, 0x1

    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    :cond_f
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_10
    const-string v16, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    const/16 v16, 0xb

    move v0, v7

    move/from16 v1, v16

    if-ne v0, v1, :cond_12

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const-string v17, "1"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    const-string v16, "1"

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_12

    if-eqz p4, :cond_11

    const-string v16, "+"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_11
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_12
    const-string v16, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    add-int/lit8 v16, v13, 0xa

    move v0, v7

    move/from16 v1, v16

    if-ne v0, v1, :cond_14

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    const-string v16, "1"

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_14

    if-eqz p4, :cond_13

    const-string v16, "+"

    const-string v17, "1"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_13
    const-string v16, "1"

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_14
    const-string v16, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    const/16 v16, 0xa

    move v0, v7

    move/from16 v1, v16

    if-ne v0, v1, :cond_16

    const-string v16, "1"

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_16

    if-eqz p4, :cond_15

    const-string v16, "+"

    const-string v17, "1"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_15
    const-string v16, "1"

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_16
    const-string v16, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_18

    const/16 v16, 0x7

    move v0, v7

    move/from16 v1, v16

    if-ne v0, v1, :cond_18

    const-string v16, "1"

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_18

    if-eqz p4, :cond_17

    const-string v16, "+"

    const-string v17, "1"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_17
    const-string v16, "1"

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_18
    add-int v16, v11, v9

    move v0, v7

    move/from16 v1, v16

    if-lt v0, v1, :cond_1a

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    if-eqz p4, :cond_19

    const-string v16, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    const-string v16, "+"

    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_19
    add-int v16, v11, v9

    move-object/from16 v0, p1

    move v1, v11

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    add-int v16, v11, v9

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_1a
    if-lt v7, v15, :cond_a

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    if-eqz p4, :cond_1b

    const-string v16, "+"

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_1b
    add-int v16, v15, v9

    move v0, v7

    move/from16 v1, v16

    if-lt v0, v1, :cond_1c

    add-int v16, v15, v9

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    add-int v16, v15, v9

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1
.end method


# virtual methods
.method public getManipulatedNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "sourceNumber"
    .parameter "byWhom"

    .prologue
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed()Z

    move-result v0

    .local v0, isNBPCDAllowed:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->getLastNBPCDStatus()Z

    move-result v1

    .local v1, lastNBPCDStatus:Z
    sget-object v2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    const-string v4, "cur_country_mcc"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mCurrentMcc:I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v2, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mCurrentMcc:I

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v3, "us"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v3, "pr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v3, "vi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v3, "gu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->manipulateNumInVZWNetwork(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->manipulateNumberinNonVZWNetwork(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
