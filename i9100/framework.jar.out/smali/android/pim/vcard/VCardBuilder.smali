.class public Landroid/pim/vcard/VCardBuilder;
.super Ljava/lang/Object;
.source "VCardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/vcard/VCardBuilder$PostalStruct;
    }
.end annotation


# static fields
.field public static final DEFAULT_EMAIL_TYPE:I = 0x3

.field public static final DEFAULT_ORG_TYPE:I = 0x1

.field public static final DEFAULT_PHONE_TYPE:I = 0x1

.field public static final DEFAULT_POSTAL_TYPE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "VCardBuilder"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final VCARD_DATA_PUBLIC:Ljava/lang/String; = "PUBLIC"

.field private static final VCARD_DATA_SEPARATOR:Ljava/lang/String; = ":"

.field private static final VCARD_DATA_VCARD:Ljava/lang/String; = "VCARD"

.field private static final VCARD_END_OF_LINE:Ljava/lang/String; = "\r\n"

.field private static final VCARD_ITEM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_PARAM_ENCODING_BASE64_AS_B:Ljava/lang/String; = "ENCODING=B"

.field private static final VCARD_PARAM_ENCODING_BASE64_V21:Ljava/lang/String; = "ENCODING=BASE64"

.field private static final VCARD_PARAM_ENCODING_QP:Ljava/lang/String; = "ENCODING=QUOTED-PRINTABLE"

.field private static final VCARD_PARAM_EQUAL:Ljava/lang/String; = "="

.field private static final VCARD_PARAM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_WS:Ljava/lang/String; = " "

.field private static final sAllowedAndroidPropertySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPostalTypePriorityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppendTypeParamName:Z

.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mCharset:Ljava/lang/String;

.field private mEndAppended:Z

.field private final mIsDoCoMo:Z

.field private final mIsJapaneseMobilePhone:Z

.field private final mIsSamsungMobilePhone:Z

.field private final mIsV30OrV40:Z

.field private final mNeedsToConvertPhoneticString:Z

.field private final mOnlyOneNoteFieldIsAvailable:Z

.field private final mRefrainsQPToNameProperties:Z

.field private final mShouldAppendCharsetParam:Z

.field private final mShouldUseQuotedPrintable:Z

.field private final mUsesAndroidProperty:Z

.field private final mUsesDefactProperty:Z

.field private final mVCardCharsetParameter:Ljava/lang/String;

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v1, v3

    const-string/jumbo v2, "vnd.android.cursor.item/contact_event"

    aput-object v2, v1, v4

    const-string/jumbo v2, "vnd.android.cursor.item/relation"

    aput-object v2, v1, v5

    const-string/jumbo v2, "vnd.android.cursor.item/im"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/pim/vcard/VCardBuilder;->sAllowedAndroidPropertySet:Ljava/util/Set;

    .line 1032
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    .line 1033
    sget-object v0, Landroid/pim/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    sget-object v0, Landroid/pim/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    sget-object v0, Landroid/pim/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    sget-object v0, Landroid/pim/vcard/VCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/pim/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .line 129
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 7
    .parameter "vcardType"
    .parameter "charset"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v6, "CHARSET=UTF-8"

    const-string v5, "UTF-8"

    const-string v3, "VCardBuilder"

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p1, p0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    .line 139
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->isVersion40(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "VCardBuilder"

    const-string v1, "Should not use vCard 4.0 when building vCard. It is not officially published yet."

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->isVersion40(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Landroid/pim/vcard/VCardBuilder;->mIsV30OrV40:Z

    .line 146
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    .line 149
    const/high16 v1, -0x3bf0

    if-ne p1, v1, :cond_4

    .line 150
    iput-boolean v4, p0, Landroid/pim/vcard/VCardBuilder;->mIsSamsungMobilePhone:Z

    .line 155
    :goto_1
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    .line 156
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/pim/vcard/VCardBuilder;->mIsJapaneseMobilePhone:Z

    .line 157
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->onlyOneNoteFieldIsAvailable(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/pim/vcard/VCardBuilder;->mOnlyOneNoteFieldIsAvailable:Z

    .line 158
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/pim/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    .line 159
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->usesDefactProperty(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/pim/vcard/VCardBuilder;->mUsesDefactProperty:Z

    .line 160
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->shouldRefrainQPToNameProperties(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/pim/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    .line 161
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->appendTypeParamName(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/pim/vcard/VCardBuilder;->mAppendTypeParamName:Z

    .line 162
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/pim/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    .line 168
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "UTF-8"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_2
    move v1, v4

    :goto_2
    iput-boolean v1, p0, Landroid/pim/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    .line 171
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 212
    const-string v1, "VCardBuilder"

    const-string v1, "Use the charset \"UTF-8\" for export."

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v1, "UTF-8"

    iput-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 216
    const-string v1, "CHARSET=UTF-8"

    iput-object v6, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    .line 237
    :goto_3
    invoke-virtual {p0}, Landroid/pim/vcard/VCardBuilder;->clear()V

    .line 238
    return-void

    :cond_3
    move v1, v2

    .line 145
    goto :goto_0

    .line 152
    :cond_4
    iput-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mIsSamsungMobilePhone:Z

    goto :goto_1

    :cond_5
    move v1, v2

    .line 168
    goto :goto_2

    .line 219
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 220
    const-string v1, "VCardBuilder"

    const-string v1, "Use the charset \"UTF-8\" for export."

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v1, "UTF-8"

    iput-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 224
    const-string v1, "CHARSET=UTF-8"

    iput-object v6, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_3

    .line 227
    :cond_7
    :try_start_0
    invoke-static {p2}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 233
    :goto_4
    iput-object p2, p0, Landroid/pim/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHARSET="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_3

    .line 228
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 229
    .local v0, e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v1, "VCardBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Career-specific \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" was not found (as usual). "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Use it as is."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private appendNamePropertiesV40(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .locals 22
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    move v3, v0

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    move v3, v0

    if-eqz v3, :cond_1

    .line 327
    :cond_0
    const-string v3, "VCardBuilder"

    const-string v4, "Invalid flag is used in vCard 4.0 construction. Ignored."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 331
    :cond_2
    const-string v3, "FN"

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_0
    return-object p0

    .line 340
    :cond_3
    invoke-direct/range {p0 .. p1}, Landroid/pim/vcard/VCardBuilder;->getPrimaryContentValue(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v9

    .line 341
    .local v9, contentValues:Landroid/content/ContentValues;
    const-string v3, "data3"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, familyName:Ljava/lang/String;
    const-string v3, "data5"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 343
    .local v5, middleName:Ljava/lang/String;
    const-string v3, "data2"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 344
    .local v6, givenName:Ljava/lang/String;
    const-string v3, "data4"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 345
    .local v7, prefix:Ljava/lang/String;
    const-string v3, "data6"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 346
    .local v8, suffix:Ljava/lang/String;
    const-string v3, "data1"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 347
    .local v17, formattedName:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 352
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 353
    const-string v3, "FN"

    const-string v4, ""

    .end local v4           #familyName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 356
    .restart local v4       #familyName:Ljava/lang/String;
    :cond_4
    move-object/from16 v4, v17

    .line 359
    :cond_5
    const-string v3, "data9"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 361
    .local v18, phoneticFamilyName:Ljava/lang/String;
    const-string v3, "data8"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 363
    .local v20, phoneticMiddleName:Ljava/lang/String;
    const-string v3, "data7"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 365
    .local v19, phoneticGivenName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 366
    .local v11, escapedFamily:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 367
    .local v13, escapedGiven:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 368
    .local v14, escapedMiddle:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 369
    .local v15, escapedPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 371
    .local v16, escapedSuffix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v10, "N"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 376
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v10, ";"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x3b

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x3b

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 380
    .local v21, sortAs:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v10, "SORT-AS="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Landroid/pim/vcard/VCardUtils;->toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .end local v21           #sortAs:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v10, ":"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v10, ";"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v10, ";"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v10, ";"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v10, ";"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v10, "\r\n"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 401
    const-string v3, "VCardBuilder"

    const-string v10, "DISPLAY_NAME is empty."

    invoke-static {v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    move v3, v0

    invoke-static {v3}, Landroid/pim/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v3

    invoke-static/range {v3 .. v8}, Landroid/pim/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 406
    .local v10, escaped:Ljava/lang/String;
    const-string v3, "FN"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .end local v4           #familyName:Ljava/lang/String;
    .end local v10           #escaped:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendPhoneticNameFields(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 408
    .restart local v4       #familyName:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 409
    .local v12, escapedFormatted:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "FN"

    .end local v4           #familyName:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private appendPhoneticNameFields(Landroid/content/ContentValues;)V
    .locals 14
    .parameter "contentValues"

    .prologue
    .line 619
    const-string v12, "data9"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 621
    .local v9, tmpPhoneticFamilyName:Ljava/lang/String;
    const-string v12, "data8"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 623
    .local v11, tmpPhoneticMiddleName:Ljava/lang/String;
    const-string v12, "data7"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 625
    .local v10, tmpPhoneticGivenName:Ljava/lang/String;
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mNeedsToConvertPhoneticString:Z

    if-eqz v12, :cond_1

    .line 626
    invoke-static {v9}, Landroid/pim/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 627
    .local v4, phoneticFamilyName:Ljava/lang/String;
    invoke-static {v11}, Landroid/pim/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 628
    .local v6, phoneticMiddleName:Ljava/lang/String;
    invoke-static {v10}, Landroid/pim/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 636
    .local v5, phoneticGivenName:Ljava/lang/String;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 639
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v12, :cond_0

    .line 640
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "SOUND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-IRMC-N"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    :cond_0
    :goto_1
    return-void

    .line 630
    .end local v4           #phoneticFamilyName:Ljava/lang/String;
    .end local v5           #phoneticGivenName:Ljava/lang/String;
    .end local v6           #phoneticMiddleName:Ljava/lang/String;
    :cond_1
    move-object v4, v9

    .line 631
    .restart local v4       #phoneticFamilyName:Ljava/lang/String;
    move-object v6, v11

    .line 632
    .restart local v6       #phoneticMiddleName:Ljava/lang/String;
    move-object v5, v10

    .restart local v5       #phoneticGivenName:Ljava/lang/String;
    goto :goto_0

    .line 653
    :cond_2
    iget v12, p0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12}, Landroid/pim/vcard/VCardConfig;->isVersion40(I)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 770
    :cond_3
    :goto_2
    const-string v12, "@@@"

    const-string v13, "hoge"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mUsesDefactProperty:Z

    if-eqz v12, :cond_0

    .line 772
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 773
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_1d

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v12}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1d

    const/4 v12, 0x1

    move v7, v12

    .line 777
    .local v7, reallyUseQuotedPrintable:Z
    :goto_3
    if-eqz v7, :cond_1e

    .line 778
    invoke-direct {p0, v5}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, encodedPhoneticGivenName:Ljava/lang/String;
    :goto_4
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-PHONETIC-FIRST-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-direct {p0, v12}, Landroid/pim/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 784
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    :cond_4
    if-eqz v7, :cond_5

    .line 788
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    :cond_5
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .end local v1           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 796
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_1f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-static {v12}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1f

    const/4 v12, 0x1

    move v7, v12

    .line 800
    .restart local v7       #reallyUseQuotedPrintable:Z
    :goto_5
    if-eqz v7, :cond_20

    .line 801
    invoke-direct {p0, v6}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 805
    .local v2, encodedPhoneticMiddleName:Ljava/lang/String;
    :goto_6
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-PHONETIC-MIDDLE-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-direct {p0, v12}, Landroid/pim/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 807
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    :cond_7
    if-eqz v7, :cond_8

    .line 811
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    :cond_8
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    .end local v2           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 819
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_21

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v12}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_21

    const/4 v12, 0x1

    move v7, v12

    .line 823
    .restart local v7       #reallyUseQuotedPrintable:Z
    :goto_7
    if-eqz v7, :cond_22

    .line 824
    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, encodedPhoneticFamilyName:Ljava/lang/String;
    :goto_8
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-PHONETIC-LAST-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-direct {p0, v12}, Landroid/pim/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 830
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    :cond_a
    if-eqz v7, :cond_b

    .line 834
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    :cond_b
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 655
    .end local v0           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_c
    iget v12, p0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 656
    iget v12, p0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12, v4, v6, v5}, Landroid/pim/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 659
    .local v8, sortString:Ljava/lang/String;
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "SORT-STRING"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    iget v12, p0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v12}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-direct {p0, v12}, Landroid/pim/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 665
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    :cond_d
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 671
    .end local v8           #sortString:Ljava/lang/String;
    :cond_e
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mIsJapaneseMobilePhone:Z

    if-eqz v12, :cond_3

    .line 685
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "SOUND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-IRMC-N"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v12, :cond_14

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v12}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-static {v12}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v12}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_14

    :cond_f
    const/4 v12, 0x1

    move v7, v12

    .line 701
    .restart local v7       #reallyUseQuotedPrintable:Z
    :goto_9
    if-eqz v7, :cond_15

    .line 702
    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    .restart local v0       #encodedPhoneticFamilyName:Ljava/lang/String;
    invoke-direct {p0, v6}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 704
    .restart local v2       #encodedPhoneticMiddleName:Ljava/lang/String;
    invoke-direct {p0, v5}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 711
    .restart local v1       #encodedPhoneticGivenName:Ljava/lang/String;
    :goto_a
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v12, :cond_16

    .line 712
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v13, 0x1

    aput-object v2, v12, v13

    const/4 v13, 0x2

    aput-object v1, v12, v13

    invoke-direct {p0, v12}, Landroid/pim/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 714
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    :cond_10
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 720
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    :cond_11
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 724
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    :cond_12
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_13

    .line 728
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :cond_13
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 689
    .end local v0           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v1           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v2           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_14
    const/4 v12, 0x0

    move v7, v12

    goto/16 :goto_9

    .line 706
    .restart local v7       #reallyUseQuotedPrintable:Z
    :cond_15
    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    .restart local v0       #encodedPhoneticFamilyName:Ljava/lang/String;
    invoke-direct {p0, v6}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 708
    .restart local v2       #encodedPhoneticMiddleName:Ljava/lang/String;
    invoke-direct {p0, v5}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #encodedPhoneticGivenName:Ljava/lang/String;
    goto/16 :goto_a

    .line 734
    :cond_16
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v13, 0x1

    aput-object v2, v12, v13

    const/4 v13, 0x2

    aput-object v1, v12, v13

    invoke-direct {p0, v12}, Landroid/pim/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 736
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    :cond_17
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    const/4 v3, 0x1

    .line 742
    .local v3, first:Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_18

    .line 743
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    const/4 v3, 0x0

    .line 746
    :cond_18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_19

    .line 747
    if-eqz v3, :cond_1c

    .line 748
    const/4 v3, 0x0

    .line 752
    :goto_b
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    :cond_19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1b

    .line 755
    if-nez v3, :cond_1a

    .line 756
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 758
    :cond_1a
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    :cond_1b
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 750
    :cond_1c
    iget-object v12, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 773
    .end local v0           #encodedPhoneticFamilyName:Ljava/lang/String;
    .end local v1           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v2           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v3           #first:Z
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_1d
    const/4 v12, 0x0

    move v7, v12

    goto/16 :goto_3

    .line 780
    .restart local v7       #reallyUseQuotedPrintable:Z
    :cond_1e
    invoke-direct {p0, v5}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #encodedPhoneticGivenName:Ljava/lang/String;
    goto/16 :goto_4

    .line 796
    .end local v1           #encodedPhoneticGivenName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_1f
    const/4 v12, 0x0

    move v7, v12

    goto/16 :goto_5

    .line 803
    .restart local v7       #reallyUseQuotedPrintable:Z
    :cond_20
    invoke-direct {p0, v6}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #encodedPhoneticMiddleName:Ljava/lang/String;
    goto/16 :goto_6

    .line 819
    .end local v2           #encodedPhoneticMiddleName:Ljava/lang/String;
    .end local v7           #reallyUseQuotedPrintable:Z
    :cond_21
    const/4 v12, 0x0

    move v7, v12

    goto/16 :goto_7

    .line 826
    .restart local v7       #reallyUseQuotedPrintable:Z
    :cond_22
    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedPhoneticFamilyName:Ljava/lang/String;
    goto/16 :goto_8
.end method

.method private appendPostalsForDoCoMo(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v5, 0x1

    .line 1044
    const v6, 0x7fffffff

    .line 1045
    .local v6, currentPriority:I
    const v1, 0x7fffffff

    .line 1047
    .local v1, currentType:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1048
    .local v3, contentValues:Landroid/content/ContentValues;
    if-eqz v3, :cond_0

    .line 1051
    const-string v0, "data2"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1064
    .local v8, typeAsInteger:Ljava/lang/Integer;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 1065
    :goto_1
    const-string v0, "data3"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1066
    .local v2, label:Ljava/lang/String;
    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/pim/vcard/VCardBuilder;->appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    goto :goto_0

    .end local v2           #label:Ljava/lang/String;
    :cond_1
    move v1, v5

    .line 1064
    goto :goto_1

    .line 1073
    .end local v3           #contentValues:Landroid/content/ContentValues;
    .end local v8           #typeAsInteger:Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method private appendPostalsForGeneric(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 1076
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1077
    .local v3, contentValues:Landroid/content/ContentValues;
    if-eqz v3, :cond_0

    .line 1080
    const-string v0, "data2"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1081
    .local v8, typeAsInteger:Ljava/lang/Integer;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 1083
    .local v1, type:I
    :goto_1
    const-string v0, "data3"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1084
    .local v2, label:Ljava/lang/String;
    const-string v0, "is_primary"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1086
    .local v7, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    move v4, v9

    .local v4, isPrimary:Z
    :goto_2
    move-object v0, p0

    .line 1088
    invoke-virtual/range {v0 .. v5}, Landroid/pim/vcard/VCardBuilder;->appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    goto :goto_0

    .end local v1           #type:I
    .end local v2           #label:Ljava/lang/String;
    .end local v4           #isPrimary:Z
    .end local v7           #isPrimaryAsInteger:Ljava/lang/Integer;
    :cond_1
    move v1, v9

    .line 1081
    goto :goto_1

    .restart local v1       #type:I
    .restart local v2       #label:Ljava/lang/String;
    .restart local v7       #isPrimaryAsInteger:Ljava/lang/Integer;
    :cond_2
    move v4, v5

    .line 1086
    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_2

    .line 1090
    .end local v1           #type:I
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #contentValues:Landroid/content/ContentValues;
    .end local v7           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v8           #typeAsInteger:Ljava/lang/Integer;
    :cond_4
    return-void
.end method

.method private appendTypeParameter(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 2237
    iget-object v0, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Landroid/pim/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2238
    return-void
.end method

.method private appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .parameter "builder"
    .parameter "type"

    .prologue
    .line 2245
    iget v0, p0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Landroid/pim/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mAppendTypeParamName:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v0, :cond_2

    .line 2247
    :cond_1
    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2249
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2250
    return-void
.end method

.method private appendTypeParameters(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, types:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, ";"

    .line 2199
    const/4 v1, 0x1

    .line 2200
    .local v1, first:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2201
    .local v3, typeValue:Ljava/lang/String;
    iget v4, p0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v4}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2202
    invoke-static {v3}, Landroid/pim/vcard/VCardUtils;->toStringAsV30ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2203
    .local v0, encoded:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2213
    if-eqz v1, :cond_1

    .line 2214
    const/4 v1, 0x0

    .line 2218
    :goto_1
    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 2216
    :cond_1
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2220
    .end local v0           #encoded:Ljava/lang/String;
    :cond_2
    iget-boolean v4, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v4, :cond_3

    invoke-static {v3}, Landroid/pim/vcard/VCardUtils;->isV21Word(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2223
    :cond_3
    if-eqz v1, :cond_4

    .line 2224
    const/4 v1, 0x0

    .line 2228
    :goto_2
    invoke-direct {p0, v3}, Landroid/pim/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 2226
    :cond_4
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2231
    .end local v3           #typeValue:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .locals 4
    .parameter "builder"
    .parameter "type"

    .prologue
    .line 1958
    iget-boolean v1, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v1, :cond_0

    .line 1961
    const-string v1, "OTHER"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1970
    :goto_0
    return-void

    .line 1963
    :cond_0
    invoke-static {p2}, Landroid/pim/vcard/VCardUtils;->getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 1964
    .local v0, phoneType:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1965
    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1967
    :cond_1
    const-string v1, "VCardBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported (by vCard) Phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private containsNonEmptyName(Landroid/content/ContentValues;)Z
    .locals 10
    .parameter "contentValues"

    .prologue
    .line 257
    const-string v9, "data3"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, familyName:Ljava/lang/String;
    const-string v9, "data5"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, middleName:Ljava/lang/String;
    const-string v9, "data2"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, givenName:Ljava/lang/String;
    const-string v9, "data4"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, prefix:Ljava/lang/String;
    const-string v9, "data6"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 262
    .local v8, suffix:Ljava/lang/String;
    const-string v9, "data9"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, phoneticFamilyName:Ljava/lang/String;
    const-string v9, "data8"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, phoneticMiddleName:Ljava/lang/String;
    const-string v9, "data7"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, phoneticGivenName:Ljava/lang/String;
    const-string v9, "data1"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, displayName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "str"

    .prologue
    .line 2278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2279
    const-string v5, ""

    .line 2312
    :goto_0
    return-object v5

    .line 2282
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2283
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 2284
    .local v2, index:I
    const/4 v3, 0x0

    .line 2285
    .local v3, lineCount:I
    const/4 v4, 0x0

    .line 2288
    .local v4, strArray:[B
    :try_start_0
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2294
    :cond_1
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 2295
    const-string v5, "=%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-byte v8, v4, v2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2296
    add-int/lit8 v2, v2, 0x1

    .line 2297
    add-int/lit8 v3, v3, 0x3

    .line 2299
    const/16 v5, 0x43

    if-lt v3, v5, :cond_1

    .line 2307
    const-string v5, "=\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2308
    const/4 v3, 0x0

    goto :goto_1

    .line 2289
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 2290
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v5, "VCardBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Charset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/pim/vcard/VCardBuilder;->mCharset:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be used. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Try default charset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    goto :goto_1

    .line 2312
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "unescaped"

    .prologue
    const/16 v6, 0x5c

    .line 2323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2324
    const-string v5, ""

    .line 2387
    :goto_0
    return-object v5

    .line 2327
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2328
    .local v4, tmpBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2329
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 2330
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2331
    .local v0, ch:C
    sparse-switch v0, :sswitch_data_0

    .line 2382
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2329
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2333
    :sswitch_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2334
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2338
    :sswitch_1
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_2

    .line 2339
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2340
    .local v3, nextChar:C
    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    .line 2352
    .end local v3           #nextChar:C
    :cond_2
    :sswitch_2
    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2356
    :sswitch_3
    iget-boolean v5, p0, Landroid/pim/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v5, :cond_3

    .line 2357
    const-string v5, "\\\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2365
    :cond_3
    :sswitch_4
    iget-boolean v5, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v5, :cond_4

    .line 2366
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2367
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2369
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2374
    :sswitch_5
    iget-boolean v5, p0, Landroid/pim/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v5, :cond_5

    .line 2375
    const-string v5, "\\,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2377
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2387
    .end local v0           #ch:C
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 2331
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x2c -> :sswitch_5
        0x3b -> :sswitch_0
        0x3c -> :sswitch_4
        0x3e -> :sswitch_4
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method private getPrimaryContentValue(Ljava/util/List;)Landroid/content/ContentValues;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v4, 0x0

    .line 278
    .local v4, primaryContentValues:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 279
    .local v5, subprimaryContentValues:Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 280
    .local v0, contentValues:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 283
    const-string v6, "is_super_primary"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 284
    .local v3, isSuperPrimary:Ljava/lang/Integer;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_3

    .line 286
    move-object v4, v0

    .line 304
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v3           #isSuperPrimary:Ljava/lang/Integer;
    :cond_1
    if-nez v4, :cond_2

    .line 305
    if-eqz v5, :cond_5

    .line 307
    move-object v4, v5

    .line 314
    :cond_2
    :goto_1
    return-object v4

    .line 288
    .restart local v0       #contentValues:Landroid/content/ContentValues;
    .restart local v3       #isSuperPrimary:Ljava/lang/Integer;
    :cond_3
    if-nez v4, :cond_0

    .line 291
    const-string v6, "is_primary"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 292
    .local v2, isPrimary:Ljava/lang/Integer;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_4

    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 294
    move-object v4, v0

    goto :goto_0

    .line 297
    :cond_4
    if-nez v5, :cond_0

    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 299
    move-object v5, v0

    goto :goto_0

    .line 309
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #isPrimary:Ljava/lang/Integer;
    .end local v3           #isSuperPrimary:Ljava/lang/Integer;
    :cond_5
    const-string v6, "VCardBuilder"

    const-string v7, "All ContentValues given from database is empty."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v4, Landroid/content/ContentValues;

    .end local v4           #primaryContentValues:Landroid/content/ContentValues;
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .restart local v4       #primaryContentValues:Landroid/content/ContentValues;
    goto :goto_1
.end method

.method private varargs shouldAppendCharsetParam([Ljava/lang/String;)Z
    .locals 7
    .parameter "propertyValueList"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2266
    iget-boolean v4, p0, Landroid/pim/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    if-nez v4, :cond_0

    move v4, v5

    .line 2274
    :goto_0
    return v4

    .line 2269
    :cond_0
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 2270
    .local v3, propertyValue:Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    aput-object v3, v4, v5

    invoke-static {v4}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    .line 2271
    goto :goto_0

    .line 2269
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #propertyValue:Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 2274
    goto :goto_0
.end method

.method private splitAndTrimPhoneNumbers(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "phoneNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 955
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 957
    .local v4, phoneList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 958
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 959
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 960
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 961
    .local v1, ch:C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x2b

    if-eq v1, v5, :cond_0

    const/16 v5, 0x2c

    if-ne v1, v5, :cond_2

    .line 962
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 959
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 963
    :cond_2
    const/16 v5, 0x3b

    if-eq v1, v5, :cond_3

    const/16 v5, 0xa

    if-ne v1, v5, :cond_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 964
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v0       #builder:Ljava/lang/StringBuilder;
    goto :goto_1

    .line 968
    .end local v1           #ch:C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 969
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    :cond_5
    return-object v4
.end method

.method private tryConstructPostalStruct(Landroid/content/ContentValues;)Landroid/pim/vcard/VCardBuilder$PostalStruct;
    .locals 27
    .parameter "contentValues"

    .prologue
    .line 1111
    const-string v25, "data5"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1112
    .local v20, rawPoBox:Ljava/lang/String;
    const-string v25, "data6"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1113
    .local v19, rawNeighborhood:Ljava/lang/String;
    const-string v25, "data4"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1114
    .local v23, rawStreet:Ljava/lang/String;
    const-string v25, "data7"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1115
    .local v17, rawLocality:Ljava/lang/String;
    const-string v25, "data8"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1116
    .local v22, rawRegion:Ljava/lang/String;
    const-string v25, "data9"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1117
    .local v21, rawPostalCode:Ljava/lang/String;
    const-string v25, "data10"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1118
    .local v15, rawCountry:Ljava/lang/String;
    const/16 v25, 0x7

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object v14, v0

    const/16 v25, 0x0

    aput-object v20, v14, v25

    const/16 v25, 0x1

    aput-object v19, v14, v25

    const/16 v25, 0x2

    aput-object v23, v14, v25

    const/16 v25, 0x3

    aput-object v17, v14, v25

    const/16 v25, 0x4

    aput-object v22, v14, v25

    const/16 v25, 0x5

    aput-object v21, v14, v25

    const/16 v25, 0x6

    aput-object v15, v14, v25

    .line 1121
    .local v14, rawAddressArray:[Ljava/lang/String;
    invoke-static {v14}, Landroid/pim/vcard/VCardUtils;->areAllEmpty([Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 1122
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    invoke-static {v14}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_1

    const/16 v25, 0x1

    move/from16 v24, v25

    .line 1125
    .local v24, reallyUseQuotedPrintable:Z
    :goto_0
    invoke-static {v14}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_2

    const/16 v25, 0x1

    move/from16 v5, v25

    .line 1145
    .local v5, appendCharset:Z
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 1146
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 1147
    const-string v18, ""

    .line 1158
    .local v18, rawLocality2:Ljava/lang/String;
    :goto_2
    if-eqz v24, :cond_7

    .line 1159
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    .line 1160
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1161
    .local v10, encodedPoBox:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1162
    .local v13, encodedStreet:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1163
    .local v8, encodedLocality:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1164
    .local v12, encodedRegion:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1165
    .local v11, encodedPostalCode:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1166
    .local v6, encodedCountry:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1195
    .local v9, encodedNeighborhood:Ljava/lang/String;
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1196
    .local v4, addressBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    const-string v25, ";"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 1199
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    :cond_0
    const-string v25, ";"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    const-string v25, ";"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    const-string v25, ";"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    const-string v25, ";"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    const-string v25, ";"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    new-instance v25, Landroid/pim/vcard/VCardBuilder$PostalStruct;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move/from16 v1, v24

    move v2, v5

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/pim/vcard/VCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    .line 1243
    .end local v4           #addressBuilder:Ljava/lang/StringBuilder;
    .end local v5           #appendCharset:Z
    .end local v6           #encodedCountry:Ljava/lang/String;
    .end local v8           #encodedLocality:Ljava/lang/String;
    .end local v9           #encodedNeighborhood:Ljava/lang/String;
    .end local v10           #encodedPoBox:Ljava/lang/String;
    .end local v11           #encodedPostalCode:Ljava/lang/String;
    .end local v12           #encodedRegion:Ljava/lang/String;
    .end local v13           #encodedStreet:Ljava/lang/String;
    .end local v18           #rawLocality2:Ljava/lang/String;
    .end local v24           #reallyUseQuotedPrintable:Z
    :goto_4
    return-object v25

    .line 1122
    :cond_1
    const/16 v25, 0x0

    move/from16 v24, v25

    goto/16 :goto_0

    .line 1125
    .restart local v24       #reallyUseQuotedPrintable:Z
    :cond_2
    const/16 v25, 0x0

    move/from16 v5, v25

    goto/16 :goto_1

    .line 1149
    .restart local v5       #appendCharset:Z
    :cond_3
    move-object/from16 v18, v19

    .restart local v18       #rawLocality2:Ljava/lang/String;
    goto/16 :goto_2

    .line 1152
    .end local v18           #rawLocality2:Ljava/lang/String;
    :cond_4
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 1153
    move-object/from16 v18, v17

    .restart local v18       #rawLocality2:Ljava/lang/String;
    goto/16 :goto_2

    .line 1155
    .end local v18           #rawLocality2:Ljava/lang/String;
    :cond_5
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .restart local v18       #rawLocality2:Ljava/lang/String;
    goto/16 :goto_2

    .line 1168
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1169
    .restart local v10       #encodedPoBox:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1170
    .restart local v13       #encodedStreet:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1171
    .restart local v8       #encodedLocality:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1172
    .restart local v12       #encodedRegion:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1173
    .restart local v11       #encodedPostalCode:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1174
    .restart local v6       #encodedCountry:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #encodedNeighborhood:Ljava/lang/String;
    goto/16 :goto_3

    .line 1177
    .end local v6           #encodedCountry:Ljava/lang/String;
    .end local v8           #encodedLocality:Ljava/lang/String;
    .end local v9           #encodedNeighborhood:Ljava/lang/String;
    .end local v10           #encodedPoBox:Ljava/lang/String;
    .end local v11           #encodedPostalCode:Ljava/lang/String;
    .end local v12           #encodedRegion:Ljava/lang/String;
    .end local v13           #encodedStreet:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 1178
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1179
    .restart local v10       #encodedPoBox:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1180
    .restart local v13       #encodedStreet:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1181
    .restart local v8       #encodedLocality:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1182
    .restart local v12       #encodedRegion:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1183
    .restart local v11       #encodedPostalCode:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1184
    .restart local v6       #encodedCountry:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #encodedNeighborhood:Ljava/lang/String;
    goto/16 :goto_3

    .line 1186
    .end local v6           #encodedCountry:Ljava/lang/String;
    .end local v8           #encodedLocality:Ljava/lang/String;
    .end local v9           #encodedNeighborhood:Ljava/lang/String;
    .end local v10           #encodedPoBox:Ljava/lang/String;
    .end local v11           #encodedPostalCode:Ljava/lang/String;
    .end local v12           #encodedRegion:Ljava/lang/String;
    .end local v13           #encodedStreet:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1187
    .restart local v10       #encodedPoBox:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1188
    .restart local v13       #encodedStreet:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1189
    .restart local v8       #encodedLocality:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1190
    .restart local v12       #encodedRegion:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1191
    .restart local v11       #encodedPostalCode:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1192
    .restart local v6       #encodedCountry:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #encodedNeighborhood:Ljava/lang/String;
    goto/16 :goto_3

    .line 1215
    .end local v5           #appendCharset:Z
    .end local v6           #encodedCountry:Ljava/lang/String;
    .end local v8           #encodedLocality:Ljava/lang/String;
    .end local v9           #encodedNeighborhood:Ljava/lang/String;
    .end local v10           #encodedPoBox:Ljava/lang/String;
    .end local v11           #encodedPostalCode:Ljava/lang/String;
    .end local v12           #encodedRegion:Ljava/lang/String;
    .end local v13           #encodedStreet:Ljava/lang/String;
    .end local v18           #rawLocality2:Ljava/lang/String;
    .end local v24           #reallyUseQuotedPrintable:Z
    :cond_9
    const-string v25, "data1"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1217
    .local v16, rawFormattedAddress:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 1218
    const/16 v25, 0x0

    goto/16 :goto_4

    .line 1220
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v16, v25, v26

    invoke-static/range {v25 .. v25}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_b

    const/16 v25, 0x1

    move/from16 v24, v25

    .line 1223
    .restart local v24       #reallyUseQuotedPrintable:Z
    :goto_5
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v16, v25, v26

    invoke-static/range {v25 .. v25}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_c

    const/16 v25, 0x1

    move/from16 v5, v25

    .line 1226
    .restart local v5       #appendCharset:Z
    :goto_6
    if-eqz v24, :cond_d

    .line 1227
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1235
    .local v7, encodedFormattedAddress:Ljava/lang/String;
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1236
    .restart local v4       #addressBuilder:Ljava/lang/StringBuilder;
    const-string v25, ";"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    const-string v25, ";"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    const-string v25, ";"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    const-string v25, ";"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    const-string v25, ";"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    const-string v25, ";"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    new-instance v25, Landroid/pim/vcard/VCardBuilder$PostalStruct;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move/from16 v1, v24

    move v2, v5

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/pim/vcard/VCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    goto/16 :goto_4

    .line 1220
    .end local v4           #addressBuilder:Ljava/lang/StringBuilder;
    .end local v5           #appendCharset:Z
    .end local v7           #encodedFormattedAddress:Ljava/lang/String;
    .end local v24           #reallyUseQuotedPrintable:Z
    :cond_b
    const/16 v25, 0x0

    move/from16 v24, v25

    goto :goto_5

    .line 1223
    .restart local v24       #reallyUseQuotedPrintable:Z
    :cond_c
    const/16 v25, 0x0

    move/from16 v5, v25

    goto :goto_6

    .line 1229
    .restart local v5       #appendCharset:Z
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #encodedFormattedAddress:Ljava/lang/String;
    goto :goto_7
.end method


# virtual methods
.method public appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 13
    .parameter "mimeType"
    .parameter "contentValues"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v10, ";"

    .line 2015
    sget-object v8, Landroid/pim/vcard/VCardBuilder;->sAllowedAndroidPropertySet:Ljava/util/Set;

    invoke-interface {v8, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2059
    :goto_0
    return-void

    .line 2018
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2019
    .local v5, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    const/16 v8, 0xf

    if-gt v1, v8, :cond_2

    .line 2020
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2021
    .local v7, value:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 2022
    const-string v7, ""

    .line 2024
    :cond_1
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2019
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2027
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    iget-boolean v8, p0, Landroid/pim/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    if-eqz v8, :cond_5

    invoke-static {v5}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_5

    move v3, v12

    .line 2030
    .local v3, needCharset:Z
    :goto_2
    iget-boolean v8, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v8, :cond_6

    invoke-static {v5}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_6

    move v6, v12

    .line 2033
    .local v6, reallyUseQuotedPrintable:Z
    :goto_3
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "X-ANDROID-CUSTOM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2034
    if-eqz v3, :cond_3

    .line 2035
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2036
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    :cond_3
    if-eqz v6, :cond_4

    .line 2039
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2040
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2042
    :cond_4
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2044
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2046
    .local v4, rawValue:Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 2047
    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2055
    .local v0, encodedValue:Ljava/lang/String;
    :goto_5
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .end local v0           #encodedValue:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #needCharset:Z
    .end local v4           #rawValue:Ljava/lang/String;
    .end local v6           #reallyUseQuotedPrintable:Z
    :cond_5
    move v3, v11

    .line 2027
    goto :goto_2

    .restart local v3       #needCharset:Z
    :cond_6
    move v6, v11

    .line 2030
    goto :goto_3

    .line 2053
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #rawValue:Ljava/lang/String;
    .restart local v6       #reallyUseQuotedPrintable:Z
    :cond_7
    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedValue:Ljava/lang/String;
    goto :goto_5

    .line 2058
    .end local v0           #encodedValue:Ljava/lang/String;
    .end local v4           #rawValue:Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "type"
    .parameter "label"
    .parameter "rawValue"
    .parameter "isPrimary"

    .prologue
    .line 1743
    packed-switch p1, :pswitch_data_0

    .line 1776
    const-string v2, "VCardBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Email type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    const/4 v1, 0x0

    .line 1782
    .local v1, typeAsString:Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1783
    .local v0, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    .line 1784
    const-string v2, "PREF"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1786
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1787
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1790
    :cond_1
    const-string v2, "EMAIL"

    invoke-virtual {p0, v2, v0, p3}, Landroid/pim/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1792
    return-void

    .line 1745
    .end local v0           #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_0
    invoke-static {p2}, Landroid/pim/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1746
    const-string v1, "CELL"

    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1747
    .end local v1           #typeAsString:Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Landroid/pim/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1749
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1751
    .end local v1           #typeAsString:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    .line 1753
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1756
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_1
    const-string v1, "HOME"

    .line 1757
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1760
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_2
    const-string v1, "WORK"

    .line 1761
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1764
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_3
    iget-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v2, :cond_5

    .line 1765
    const-string v1, "OTHER"

    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1767
    .end local v1           #typeAsString:Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    .line 1769
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1772
    .end local v1           #typeAsString:Ljava/lang/String;
    :pswitch_4
    const-string v1, "CELL"

    .line 1773
    .restart local v1       #typeAsString:Ljava/lang/String;
    goto :goto_0

    .line 1743
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public appendEmails(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v13, ""

    .line 976
    const/4 v3, 0x0

    .line 977
    .local v3, emailAddressExists:Z
    if-eqz p1, :cond_5

    .line 978
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 979
    .local v0, addressSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 980
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v10, "data1"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 981
    .local v2, emailAddress:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 982
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 984
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 987
    const-string v10, "data2"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 988
    .local v9, typeAsObject:Ljava/lang/Integer;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v8, v10

    .line 990
    .local v8, type:I
    :goto_1
    const-string v10, "data3"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 991
    .local v7, label:Ljava/lang/String;
    const-string v10, "is_primary"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 992
    .local v6, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_3

    move v5, v12

    .line 994
    .local v5, isPrimary:Z
    :goto_2
    const/4 v3, 0x1

    .line 995
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 996
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 997
    invoke-virtual {p0, v8, v7, v2, v5}, Landroid/pim/vcard/VCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 988
    .end local v5           #isPrimary:Z
    .end local v6           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v7           #label:Ljava/lang/String;
    .end local v8           #type:I
    :cond_2
    const/4 v10, 0x3

    move v8, v10

    goto :goto_1

    .restart local v6       #isPrimaryAsInteger:Ljava/lang/Integer;
    .restart local v7       #label:Ljava/lang/String;
    .restart local v8       #type:I
    :cond_3
    move v5, v11

    .line 992
    goto :goto_2

    :cond_4
    move v5, v11

    goto :goto_2

    .line 1002
    .end local v0           #addressSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #contentValues:Landroid/content/ContentValues;
    .end local v2           #emailAddress:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v7           #label:Ljava/lang/String;
    .end local v8           #type:I
    .end local v9           #typeAsObject:Ljava/lang/Integer;
    :cond_5
    if-nez v3, :cond_6

    iget-boolean v10, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v10, :cond_6

    .line 1003
    const-string v10, ""

    const-string v10, ""

    invoke-virtual {p0, v12, v13, v13, v11}, Landroid/pim/vcard/VCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1006
    :cond_6
    return-object p0
.end method

.method public appendEvents(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1566
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_4

    .line 1567
    const/4 v10, 0x0

    .line 1568
    .local v10, primaryBirthday:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1569
    .local v11, secondaryBirthday:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1570
    .local v2, contentValues:Landroid/content/ContentValues;
    if-eqz v2, :cond_0

    .line 1573
    const-string v12, "data2"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1575
    .local v4, eventTypeAsInteger:Ljava/lang/Integer;
    if-eqz v4, :cond_5

    .line 1576
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1580
    .local v3, eventType:I
    :goto_1
    const/4 v12, 0x3

    if-ne v3, v12, :cond_c

    .line 1581
    const-string v12, "data1"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1582
    .local v0, birthdayCandidate:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1585
    const-string v12, "is_super_primary"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 1587
    .local v9, isSuperPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_6

    const/4 v12, 0x1

    move v8, v12

    .line 1589
    .local v8, isSuperPrimary:Z
    :goto_2
    if-eqz v8, :cond_8

    .line 1591
    move-object v10, v0

    .line 1619
    .end local v0           #birthdayCandidate:Ljava/lang/String;
    .end local v2           #contentValues:Landroid/content/ContentValues;
    .end local v3           #eventType:I
    .end local v4           #eventTypeAsInteger:Ljava/lang/Integer;
    .end local v8           #isSuperPrimary:Z
    .end local v9           #isSuperPrimaryAsInteger:Ljava/lang/Integer;
    :cond_1
    if-eqz v10, :cond_e

    .line 1621
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mIsSamsungMobilePhone:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 1622
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "-"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 1623
    :cond_2
    const-string v12, "-"

    const-string v13, ""

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1627
    :cond_3
    const-string v12, "BDAY"

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Landroid/pim/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v10           #primaryBirthday:Ljava/lang/String;
    .end local v11           #secondaryBirthday:Ljava/lang/String;
    :cond_4
    :goto_3
    return-object p0

    .line 1578
    .restart local v2       #contentValues:Landroid/content/ContentValues;
    .restart local v4       #eventTypeAsInteger:Ljava/lang/Integer;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v10       #primaryBirthday:Ljava/lang/String;
    .restart local v11       #secondaryBirthday:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x2

    .restart local v3       #eventType:I
    goto :goto_1

    .line 1587
    .restart local v0       #birthdayCandidate:Ljava/lang/String;
    .restart local v9       #isSuperPrimaryAsInteger:Ljava/lang/Integer;
    :cond_6
    const/4 v12, 0x0

    move v8, v12

    goto :goto_2

    :cond_7
    const/4 v12, 0x0

    move v8, v12

    goto :goto_2

    .line 1594
    .restart local v8       #isSuperPrimary:Z
    :cond_8
    const-string v12, "is_primary"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1596
    .local v7, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_9

    const/4 v12, 0x1

    move v6, v12

    .line 1598
    .local v6, isPrimary:Z
    :goto_4
    if-eqz v6, :cond_b

    .line 1600
    move-object v10, v0

    goto :goto_0

    .line 1596
    .end local v6           #isPrimary:Z
    :cond_9
    const/4 v12, 0x0

    move v6, v12

    goto :goto_4

    :cond_a
    const/4 v12, 0x0

    move v6, v12

    goto :goto_4

    .line 1601
    .restart local v6       #isPrimary:Z
    :cond_b
    if-nez v11, :cond_0

    .line 1603
    move-object v11, v0

    .line 1606
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mIsSamsungMobilePhone:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 1607
    const-string v12, "data15"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1609
    .local v1, birthdayType:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1610
    const-string v12, "X-BDAY-SOLATYPE"

    invoke-virtual {p0, v12, v1}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1614
    .end local v0           #birthdayCandidate:Ljava/lang/String;
    .end local v1           #birthdayType:Ljava/lang/String;
    .end local v6           #isPrimary:Z
    .end local v7           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v8           #isSuperPrimary:Z
    .end local v9           #isSuperPrimaryAsInteger:Ljava/lang/Integer;
    :cond_c
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-nez v12, :cond_d

    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v12, :cond_0

    .line 1616
    :cond_d
    const-string/jumbo v12, "vnd.android.cursor.item/contact_event"

    invoke-virtual {p0, v12, v2}, Landroid/pim/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 1629
    .end local v2           #contentValues:Landroid/content/ContentValues;
    .end local v3           #eventType:I
    .end local v4           #eventTypeAsInteger:Ljava/lang/Integer;
    :cond_e
    if-eqz v11, :cond_4

    .line 1631
    iget-boolean v12, p0, Landroid/pim/vcard/VCardBuilder;->mIsSamsungMobilePhone:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_10

    .line 1632
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_f

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_10

    .line 1633
    :cond_f
    const-string v12, "-"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 1637
    :cond_10
    const-string v12, "BDAY"

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Landroid/pim/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public appendIms(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v13, 0x0

    .line 1249
    if-eqz p1, :cond_9

    .line 1250
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1251
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v11, "data5"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1252
    .local v8, protocolAsObject:Ljava/lang/Integer;
    if-eqz v8, :cond_0

    .line 1255
    iget-boolean v11, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v11, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 1256
    const-string/jumbo v11, "vnd.android.cursor.item/im"

    invoke-virtual {p0, v11, v0}, Landroid/pim/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1259
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/pim/vcard/VCardUtils;->getPropertyNameForIm(I)Ljava/lang/String;

    move-result-object v7

    .line 1260
    .local v7, propertyName:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1263
    const-string v11, "data1"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1264
    .local v1, data:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1265
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1267
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1272
    const-string v11, "data2"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 1273
    .local v9, typeAsInteger:Ljava/lang/Integer;
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_1
    packed-switch v11, :pswitch_data_0

    .line 1289
    const/4 v10, 0x0

    .line 1295
    .local v10, typeAsString:Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1296
    .local v6, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1297
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1299
    :cond_3
    const-string v11, "is_primary"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1300
    .local v4, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v11, 0x1

    move v3, v11

    .line 1302
    .local v3, isPrimary:Z
    :goto_3
    if-eqz v3, :cond_4

    .line 1303
    const-string v11, "PREF"

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1306
    :cond_4
    invoke-virtual {p0, v7, v6, v1}, Landroid/pim/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 1273
    .end local v3           #isPrimary:Z
    .end local v4           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v6           #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #typeAsString:Ljava/lang/String;
    :cond_5
    const/4 v11, 0x3

    goto :goto_1

    .line 1275
    :pswitch_0
    const-string v10, "HOME"

    .line 1276
    .restart local v10       #typeAsString:Ljava/lang/String;
    goto :goto_2

    .line 1279
    .end local v10           #typeAsString:Ljava/lang/String;
    :pswitch_1
    const-string v10, "WORK"

    .line 1280
    .restart local v10       #typeAsString:Ljava/lang/String;
    goto :goto_2

    .line 1283
    .end local v10           #typeAsString:Ljava/lang/String;
    :pswitch_2
    const-string v11, "data3"

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1284
    .local v5, label:Ljava/lang/String;
    if-eqz v5, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "X-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 1285
    .restart local v10       #typeAsString:Ljava/lang/String;
    :goto_4
    goto :goto_2

    .line 1284
    .end local v10           #typeAsString:Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    move-object v10, v11

    goto :goto_4

    .end local v5           #label:Ljava/lang/String;
    .restart local v4       #isPrimaryAsInteger:Ljava/lang/Integer;
    .restart local v6       #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10       #typeAsString:Ljava/lang/String;
    :cond_7
    move v3, v13

    .line 1300
    goto :goto_3

    :cond_8
    move v3, v13

    goto :goto_3

    .line 1309
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v6           #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #propertyName:Ljava/lang/String;
    .end local v8           #protocolAsObject:Ljava/lang/Integer;
    .end local v9           #typeAsInteger:Ljava/lang/Integer;
    .end local v10           #typeAsString:Ljava/lang/String;
    :cond_9
    return-object p0

    .line 1273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "propertyName"
    .parameter "rawValue"

    .prologue
    const/4 v0, 0x0

    .line 2098
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2099
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .parameter "propertyName"
    .parameter "rawValue"
    .parameter "needCharset"
    .parameter "reallyUseQuotedPrintable"

    .prologue
    .line 2108
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 2109
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "propertyName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2102
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 2103
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter "propertyName"
    .parameter
    .parameter "rawValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2113
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 2114
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 4
    .parameter "propertyName"
    .parameter
    .parameter "rawValue"
    .parameter "needCharset"
    .parameter "reallyUseQuotedPrintable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .local p2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, ";"

    .line 2119
    iget-object v1, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2120
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2121
    iget-object v1, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2122
    invoke-direct {p0, p2}, Landroid/pim/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 2124
    :cond_0
    if-eqz p4, :cond_1

    .line 2125
    iget-object v1, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    iget-object v1, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2130
    :cond_1
    if-eqz p5, :cond_2

    .line 2131
    iget-object v1, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2132
    iget-object v1, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2133
    invoke-direct {p0, p3}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2142
    .local v0, encodedValue:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2143
    iget-object v1, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2144
    iget-object v1, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2145
    return-void

    .line 2134
    .end local v0           #encodedValue:Ljava/lang/String;
    :cond_2
    iget-boolean v1, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v1, :cond_3

    .line 2135
    move-object v0, p3

    .restart local v0       #encodedValue:Ljava/lang/String;
    goto :goto_0

    .line 2139
    .end local v0           #encodedValue:Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p3}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V
    .locals 7
    .parameter "propertyName"
    .parameter
    .parameter
    .parameter "needCharset"
    .parameter "needQuotedPrintable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, ";"

    .line 2155
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2156
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2157
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2158
    invoke-direct {p0, p2}, Landroid/pim/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 2160
    :cond_0
    if-eqz p4, :cond_1

    .line 2161
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2162
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2164
    :cond_1
    if-eqz p5, :cond_2

    .line 2165
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2166
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2169
    :cond_2
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2170
    const/4 v1, 0x1

    .line 2171
    .local v1, first:Z
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2173
    .local v3, rawValue:Ljava/lang/String;
    if-eqz p5, :cond_3

    .line 2174
    invoke-direct {p0, v3}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2183
    .local v0, encodedValue:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_4

    .line 2184
    const/4 v1, 0x0

    .line 2188
    :goto_2
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2180
    .end local v0           #encodedValue:Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v3}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedValue:Ljava/lang/String;
    goto :goto_1

    .line 2186
    :cond_4
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2190
    .end local v0           #encodedValue:Ljava/lang/String;
    .end local v3           #rawValue:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2191
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 6
    .parameter "propertyName"
    .parameter
    .parameter "needCharset"
    .parameter "needQuotedPrintable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 2149
    .local p2, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 2150
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "propertyName"
    .parameter "rawValue"

    .prologue
    .line 2063
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/pim/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 2064
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "propertyName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2068
    .local p2, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/pim/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 2069
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter "propertyName"
    .parameter
    .parameter "rawValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2073
    new-array v0, v2, [Ljava/lang/String;

    aput-object p3, v0, v1

    invoke-static {v0}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v4, v2

    .line 2075
    .local v4, needCharset:Z
    :goto_0
    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    aput-object p3, v0, v1

    invoke-static {v0}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v5, v2

    .local v5, reallyUseQuotedPrintable:Z
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2078
    invoke-virtual/range {v0 .. v5}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 2080
    return-void

    .end local v4           #needCharset:Z
    .end local v5           #reallyUseQuotedPrintable:Z
    :cond_0
    move v4, v1

    .line 2073
    goto :goto_0

    .restart local v4       #needCharset:Z
    :cond_1
    move v5, v1

    .line 2075
    goto :goto_1
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .parameter "propertyName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, rawValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2084
    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mShouldAppendCharsetParam:Z

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    move v4, v2

    .line 2087
    .local v4, needCharset:Z
    :goto_0
    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    move v5, v2

    .local v5, reallyUseQuotedPrintable:Z
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2090
    invoke-virtual/range {v0 .. v5}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 2092
    return-void

    .end local v4           #needCharset:Z
    .end local v5           #reallyUseQuotedPrintable:Z
    :cond_0
    move v4, v1

    .line 2084
    goto :goto_0

    .restart local v4       #needCharset:Z
    :cond_1
    move v5, v1

    .line 2087
    goto :goto_1
.end method

.method public appendNameProperties(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .locals 24
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    move v3, v0

    invoke-static {v3}, Landroid/pim/vcard/VCardConfig;->isVersion40(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    invoke-direct/range {p0 .. p1}, Landroid/pim/vcard/VCardBuilder;->appendNamePropertiesV40(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v3

    .line 608
    :goto_0
    return-object v3

    .line 430
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 431
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    move v3, v0

    invoke-static {v3}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 435
    const-string v3, "N"

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v3, "FN"

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    move-object/from16 v3, p0

    .line 440
    goto :goto_0

    .line 437
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    move v3, v0

    if-eqz v3, :cond_2

    .line 438
    const-string v3, "N"

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 443
    :cond_4
    invoke-direct/range {p0 .. p1}, Landroid/pim/vcard/VCardBuilder;->getPrimaryContentValue(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v9

    .line 444
    .local v9, contentValues:Landroid/content/ContentValues;
    const-string v3, "data3"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 445
    .local v4, familyName:Ljava/lang/String;
    const-string v3, "data5"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 446
    .local v5, middleName:Ljava/lang/String;
    const-string v3, "data2"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 447
    .local v6, givenName:Ljava/lang/String;
    const-string v3, "data4"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 448
    .local v7, prefix:Ljava/lang/String;
    const-string v3, "data6"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 449
    .local v8, suffix:Ljava/lang/String;
    const-string v3, "data1"

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 451
    .local v10, displayName:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 452
    :cond_5
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v3, v11

    const/4 v11, 0x1

    aput-object v6, v3, v11

    const/4 v11, 0x2

    aput-object v5, v3, v11

    const/4 v11, 0x3

    aput-object v7, v3, v11

    const/4 v11, 0x4

    aput-object v8, v3, v11

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v20

    .line 454
    .local v20, reallyAppendCharsetParameterToName:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    move v3, v0

    if-nez v3, :cond_c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v3, v11

    invoke-static {v3}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v6, v3, v11

    invoke-static {v3}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v3, v11

    invoke-static {v3}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v7, v3, v11

    invoke-static {v3}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v8, v3, v11

    invoke-static {v3}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_6
    const/4 v3, 0x1

    move/from16 v23, v3

    .line 463
    .local v23, reallyUseQuotedPrintableToName:Z
    :goto_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 464
    move-object/from16 v18, v10

    .line 470
    .local v18, formattedName:Ljava/lang/String;
    :goto_3
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v18, v3, v10

    .end local v10           #displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v19

    .line 472
    .local v19, reallyAppendCharsetParameterToFN:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    move v3, v0

    if-nez v3, :cond_e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v18, v3, v10

    invoke-static {v3}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x1

    move/from16 v22, v3

    .line 481
    .local v22, reallyUseQuotedPrintableToFN:Z
    :goto_4
    if-eqz v23, :cond_f

    .line 482
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 483
    .local v12, encodedFamily:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 484
    .local v14, encodedGiven:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 485
    .local v15, encodedMiddle:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 486
    .local v16, encodedPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 495
    .local v17, encodedSuffix:Ljava/lang/String;
    :goto_5
    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    .line 499
    .local v13, encodedFormattedname:Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "N"

    .end local v4           #familyName:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    if-eqz v20, :cond_7

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    :cond_7
    if-eqz v23, :cond_8

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "FN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    if-eqz v19, :cond_9

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :cond_9
    if-eqz v22, :cond_a

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .end local v12           #encodedFamily:Ljava/lang/String;
    .end local v13           #encodedFormattedname:Ljava/lang/String;
    .end local v14           #encodedGiven:Ljava/lang/String;
    .end local v15           #encodedMiddle:Ljava/lang/String;
    .end local v16           #encodedPrefix:Ljava/lang/String;
    .end local v17           #encodedSuffix:Ljava/lang/String;
    .end local v18           #formattedName:Ljava/lang/String;
    .end local v19           #reallyAppendCharsetParameterToFN:Z
    .end local v20           #reallyAppendCharsetParameterToName:Z
    .end local v22           #reallyUseQuotedPrintableToFN:Z
    .end local v23           #reallyUseQuotedPrintableToName:Z
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendPhoneticNameFields(Landroid/content/ContentValues;)V

    move-object/from16 v3, p0

    .line 608
    goto/16 :goto_0

    .line 454
    .restart local v4       #familyName:Ljava/lang/String;
    .restart local v10       #displayName:Ljava/lang/String;
    .restart local v20       #reallyAppendCharsetParameterToName:Z
    :cond_c
    const/4 v3, 0x0

    move/from16 v23, v3

    goto/16 :goto_2

    .line 466
    .restart local v23       #reallyUseQuotedPrintableToName:Z
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    move v3, v0

    invoke-static {v3}, Landroid/pim/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v3

    invoke-static/range {v3 .. v8}, Landroid/pim/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .restart local v18       #formattedName:Ljava/lang/String;
    goto/16 :goto_3

    .line 472
    .end local v10           #displayName:Ljava/lang/String;
    .restart local v19       #reallyAppendCharsetParameterToFN:Z
    :cond_e
    const/4 v3, 0x0

    move/from16 v22, v3

    goto/16 :goto_4

    .line 488
    .restart local v22       #reallyUseQuotedPrintableToFN:Z
    :cond_f
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 489
    .restart local v12       #encodedFamily:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 490
    .restart local v14       #encodedGiven:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 491
    .restart local v15       #encodedMiddle:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 492
    .restart local v16       #encodedPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .restart local v17       #encodedSuffix:Ljava/lang/String;
    goto/16 :goto_5

    .line 495
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto/16 :goto_6

    .line 560
    .end local v12           #encodedFamily:Ljava/lang/String;
    .end local v14           #encodedGiven:Ljava/lang/String;
    .end local v15           #encodedMiddle:Ljava/lang/String;
    .end local v16           #encodedPrefix:Ljava/lang/String;
    .end local v17           #encodedSuffix:Ljava/lang/String;
    .end local v18           #formattedName:Ljava/lang/String;
    .end local v19           #reallyAppendCharsetParameterToFN:Z
    .end local v20           #reallyAppendCharsetParameterToName:Z
    .end local v22           #reallyUseQuotedPrintableToFN:Z
    .end local v23           #reallyUseQuotedPrintableToName:Z
    .restart local v10       #displayName:Ljava/lang/String;
    :cond_11
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 561
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mRefrainsQPToNameProperties:Z

    move v3, v0

    if-nez v3, :cond_15

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    .end local v4           #familyName:Ljava/lang/String;
    invoke-static {v3}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    const/4 v3, 0x1

    move/from16 v21, v3

    .line 564
    .local v21, reallyUseQuotedPrintableToDisplayName:Z
    :goto_8
    if-eqz v21, :cond_16

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 570
    .local v11, encodedDisplayName:Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "N"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    :cond_12
    if-eqz v21, :cond_13

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "FN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 561
    .end local v11           #encodedDisplayName:Ljava/lang/String;
    .end local v21           #reallyUseQuotedPrintableToDisplayName:Z
    :cond_15
    const/4 v3, 0x0

    move/from16 v21, v3

    goto/16 :goto_8

    .line 564
    .restart local v21       #reallyUseQuotedPrintableToDisplayName:Z
    :cond_16
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto/16 :goto_9

    .line 600
    .end local v21           #reallyUseQuotedPrintableToDisplayName:Z
    .restart local v4       #familyName:Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    move v3, v0

    invoke-static {v3}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 601
    const-string v3, "N"

    const-string v4, ""

    .end local v4           #familyName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v3, "FN"

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 603
    .restart local v4       #familyName:Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    move v3, v0

    if-eqz v3, :cond_b

    .line 604
    const-string v3, "N"

    const-string v4, ""

    .end local v4           #familyName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method public appendNickNames(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 846
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-boolean v4, p0, Landroid/pim/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v4, :cond_2

    .line 847
    :cond_0
    const/4 v3, 0x0

    .line 854
    .local v3, useAndroidProperty:Z
    :goto_0
    if-eqz p1, :cond_4

    .line 855
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 856
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v4, "data1"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 857
    .local v2, nickname:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 860
    if-eqz v3, :cond_3

    .line 861
    const-string/jumbo v4, "vnd.android.cursor.item/nickname"

    invoke-virtual {p0, v4, v0}, Landroid/pim/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 848
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #nickname:Ljava/lang/String;
    .end local v3           #useAndroidProperty:Z
    :cond_2
    iget-boolean v4, p0, Landroid/pim/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v4, :cond_4

    .line 849
    const/4 v3, 0x1

    .restart local v3       #useAndroidProperty:Z
    goto :goto_0

    .line 863
    .restart local v0       #contentValues:Landroid/content/ContentValues;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #nickname:Ljava/lang/String;
    :cond_3
    const-string v4, "NICKNAME"

    invoke-virtual {p0, v4, v2}, Landroid/pim/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 867
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #nickname:Ljava/lang/String;
    .end local v3           #useAndroidProperty:Z
    :cond_4
    return-object p0
.end method

.method public appendNotes(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v12, "data1"

    const-string v11, "NOTE"

    .line 1517
    if-eqz p1, :cond_4

    .line 1518
    iget-boolean v8, p0, Landroid/pim/vcard/VCardBuilder;->mOnlyOneNoteFieldIsAvailable:Z

    if-eqz v8, :cond_7

    .line 1519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1520
    .local v4, noteBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1521
    .local v1, first:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1522
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v8, "data1"

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1523
    .local v3, note:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1524
    const-string v3, ""

    .line 1526
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 1527
    if-eqz v1, :cond_2

    .line 1528
    const/4 v1, 0x0

    .line 1532
    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1530
    :cond_2
    const/16 v8, 0xa

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1535
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v3           #note:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1538
    .local v5, noteStr:Ljava/lang/String;
    new-array v8, v10, [Ljava/lang/String;

    aput-object v5, v8, v9

    invoke-static {v8}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    move v7, v10

    .line 1540
    .local v7, shouldAppendCharsetInfo:Z
    :goto_2
    iget-boolean v8, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v8, :cond_6

    new-array v8, v10, [Ljava/lang/String;

    aput-object v5, v8, v9

    invoke-static {v8}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    move v6, v10

    .line 1543
    .local v6, reallyUseQuotedPrintable:Z
    :goto_3
    const-string v8, "NOTE"

    invoke-virtual {p0, v11, v5, v7, v6}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1560
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #noteBuilder:Ljava/lang/StringBuilder;
    .end local v5           #noteStr:Ljava/lang/String;
    .end local v6           #reallyUseQuotedPrintable:Z
    .end local v7           #shouldAppendCharsetInfo:Z
    :cond_4
    return-object p0

    .restart local v1       #first:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #noteBuilder:Ljava/lang/StringBuilder;
    .restart local v5       #noteStr:Ljava/lang/String;
    :cond_5
    move v7, v9

    .line 1538
    goto :goto_2

    .restart local v7       #shouldAppendCharsetInfo:Z
    :cond_6
    move v6, v9

    .line 1540
    goto :goto_3

    .line 1546
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #noteBuilder:Ljava/lang/StringBuilder;
    .end local v5           #noteStr:Ljava/lang/String;
    .end local v7           #shouldAppendCharsetInfo:Z
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1547
    .restart local v0       #contentValues:Landroid/content/ContentValues;
    const-string v8, "data1"

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1548
    .restart local v5       #noteStr:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1549
    new-array v8, v10, [Ljava/lang/String;

    aput-object v5, v8, v9

    invoke-static {v8}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    move v7, v10

    .line 1551
    .restart local v7       #shouldAppendCharsetInfo:Z
    :goto_5
    iget-boolean v8, p0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v8, :cond_a

    new-array v8, v10, [Ljava/lang/String;

    aput-object v5, v8, v9

    invoke-static {v8}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    move v6, v10

    .line 1554
    .restart local v6       #reallyUseQuotedPrintable:Z
    :goto_6
    const-string v8, "NOTE"

    invoke-virtual {p0, v11, v5, v7, v6}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_4

    .end local v6           #reallyUseQuotedPrintable:Z
    .end local v7           #shouldAppendCharsetInfo:Z
    :cond_9
    move v7, v9

    .line 1549
    goto :goto_5

    .restart local v7       #shouldAppendCharsetInfo:Z
    :cond_a
    move v6, v9

    .line 1551
    goto :goto_6
.end method

.method public appendOrganizations(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .locals 37
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1331
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_1d

    .line 1332
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_1d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 1333
    .local v7, contentValues:Landroid/content/ContentValues;
    const-string v33, "data1"

    move-object v0, v7

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1334
    .local v6, company:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1335
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1337
    :cond_1
    const-string v33, "data5"

    move-object v0, v7

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1338
    .local v8, department:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 1339
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1341
    :cond_2
    const-string v33, "data4"

    move-object v0, v7

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1342
    .local v30, title:Ljava/lang/String;
    if-eqz v30, :cond_3

    .line 1343
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    .line 1345
    :cond_3
    const-string v33, "data6"

    move-object v0, v7

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1346
    .local v19, jobDescription:Ljava/lang/String;
    if-eqz v19, :cond_4

    .line 1347
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 1349
    :cond_4
    const-string v33, "data7"

    move-object v0, v7

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1350
    .local v29, symbol:Ljava/lang/String;
    if-eqz v29, :cond_5

    .line 1351
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    .line 1353
    :cond_5
    const-string v33, "data8"

    move-object v0, v7

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1354
    .local v26, phoneticName:Ljava/lang/String;
    if-eqz v26, :cond_6

    .line 1355
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    .line 1357
    :cond_6
    const-string v33, "data9"

    move-object v0, v7

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1358
    .local v21, officeLocation:Ljava/lang/String;
    if-eqz v21, :cond_7

    .line 1359
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 1362
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    move/from16 v33, v0

    if-eqz v33, :cond_15

    .line 1363
    const/16 v33, 0x6

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v33, 0x0

    aput-object v6, v27, v33

    const/16 v33, 0x1

    aput-object v8, v27, v33

    const/16 v33, 0x2

    aput-object v19, v27, v33

    const/16 v33, 0x3

    aput-object v29, v27, v33

    const/16 v33, 0x4

    aput-object v26, v27, v33

    const/16 v33, 0x5

    aput-object v21, v27, v33

    .line 1364
    .local v27, rawOrganizationArray:[Ljava/lang/String;
    const-string v33, "data2"

    move-object v0, v7

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v32

    .line 1365
    .local v32, typeAsObject:Ljava/lang/Integer;
    const-string v33, "data3"

    move-object v0, v7

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1366
    .local v20, label:Ljava/lang/String;
    const-string v33, "is_primary"

    move-object v0, v7

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 1367
    .local v18, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v18, :cond_e

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v33

    if-lez v33, :cond_d

    const/16 v33, 0x1

    move/from16 v17, v33

    .line 1368
    .local v17, isPrimary:Z
    :goto_1
    if-eqz v32, :cond_f

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v33

    move/from16 v31, v33

    .line 1369
    .local v31, type:I
    :goto_2
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1370
    .local v25, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v17, :cond_8

    .line 1371
    const-string v33, "PREF"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1373
    :cond_8
    packed-switch v31, :pswitch_data_0

    .line 1390
    const-string v33, "VCardBuilder"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Unknown Organizationl type: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_9
    :goto_3
    invoke-static/range {v27 .. v27}, Landroid/pim/vcard/VCardUtils;->areAllEmpty([Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_14

    .line 1396
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    move/from16 v33, v0

    if-eqz v33, :cond_11

    invoke-static/range {v27 .. v27}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_11

    const/16 v33, 0x1

    move/from16 v28, v33

    .line 1399
    .local v28, reallyUseQuotedPrintable:Z
    :goto_4
    invoke-static/range {v27 .. v27}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_12

    const/16 v33, 0x1

    move/from16 v5, v33

    .line 1409
    .local v5, appendCharset:Z
    :goto_5
    if-eqz v28, :cond_13

    .line 1410
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1411
    .local v9, encodedCompany:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1412
    .local v10, encodedDepartment:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1413
    .local v15, encodedTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1414
    .local v11, encodedJobDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1415
    .local v14, encodedSymbol:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1416
    .local v13, encodedPhoneticName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1426
    .local v12, encodedOfficeLocation:Ljava/lang/String;
    :goto_6
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 1427
    .local v23, orgValue:Ljava/lang/StringBuilder;
    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    const-string v33, ";"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1429
    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    const-string v33, ";"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    move-object/from16 v0, v23

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    const-string v33, ";"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    move-object/from16 v0, v23

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    const-string v33, ";"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    move-object/from16 v0, v23

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    const-string v33, ";"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    move-object/from16 v0, v23

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    const-string v33, ";"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1439
    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    const-string v34, "ORG"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_a

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    const-string v34, ";"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 1446
    :cond_a
    if-eqz v5, :cond_b

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    const-string v34, ";"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    :cond_b
    if-eqz v28, :cond_c

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    const-string v34, ";"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    const-string v34, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    const-string v34, ":"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1460
    .end local v5           #appendCharset:Z
    .end local v9           #encodedCompany:Ljava/lang/String;
    .end local v10           #encodedDepartment:Ljava/lang/String;
    .end local v11           #encodedJobDescription:Ljava/lang/String;
    .end local v12           #encodedOfficeLocation:Ljava/lang/String;
    .end local v13           #encodedPhoneticName:Ljava/lang/String;
    .end local v14           #encodedSymbol:Ljava/lang/String;
    .end local v15           #encodedTitle:Ljava/lang/String;
    .end local v23           #orgValue:Ljava/lang/StringBuilder;
    .end local v28           #reallyUseQuotedPrintable:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    const-string v34, "\r\n"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    .end local v17           #isPrimary:Z
    .end local v18           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v20           #label:Ljava/lang/String;
    .end local v25           #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v27           #rawOrganizationArray:[Ljava/lang/String;
    .end local v31           #type:I
    .end local v32           #typeAsObject:Ljava/lang/Integer;
    :goto_8
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_0

    .line 1481
    const-string v33, "TITLE"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object v30, v34, v35

    invoke-static/range {v34 .. v34}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_1b

    const/16 v34, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1c

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v30, v35, v36

    invoke-static/range {v35 .. v35}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_1c

    const/16 v35, 0x1

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v30

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1367
    .restart local v18       #isPrimaryAsInteger:Ljava/lang/Integer;
    .restart local v20       #label:Ljava/lang/String;
    .restart local v27       #rawOrganizationArray:[Ljava/lang/String;
    .restart local v32       #typeAsObject:Ljava/lang/Integer;
    :cond_d
    const/16 v33, 0x0

    move/from16 v17, v33

    goto/16 :goto_1

    :cond_e
    const/16 v33, 0x0

    move/from16 v17, v33

    goto/16 :goto_1

    .line 1368
    .restart local v17       #isPrimary:Z
    :cond_f
    const/16 v33, 0x1

    move/from16 v31, v33

    goto/16 :goto_2

    .line 1375
    .restart local v25       #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31       #type:I
    :pswitch_0
    const-string v33, "WORK"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1379
    :pswitch_1
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    move/from16 v33, v0

    if-nez v33, :cond_10

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v20, v33, v34

    invoke-static/range {v33 .. v33}, Landroid/pim/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 1381
    :cond_10
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "X-"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1386
    :pswitch_2
    const-string v33, "OTHER"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1396
    :cond_11
    const/16 v33, 0x0

    move/from16 v28, v33

    goto/16 :goto_4

    .line 1399
    .restart local v28       #reallyUseQuotedPrintable:Z
    :cond_12
    const/16 v33, 0x0

    move/from16 v5, v33

    goto/16 :goto_5

    .line 1418
    .restart local v5       #appendCharset:Z
    :cond_13
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1419
    .restart local v9       #encodedCompany:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1420
    .restart local v10       #encodedDepartment:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1421
    .restart local v15       #encodedTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1422
    .restart local v11       #encodedJobDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1423
    .restart local v14       #encodedSymbol:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1424
    .restart local v13       #encodedPhoneticName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #encodedOfficeLocation:Ljava/lang/String;
    goto/16 :goto_6

    .line 1457
    .end local v5           #appendCharset:Z
    .end local v9           #encodedCompany:Ljava/lang/String;
    .end local v10           #encodedDepartment:Ljava/lang/String;
    .end local v11           #encodedJobDescription:Ljava/lang/String;
    .end local v12           #encodedOfficeLocation:Ljava/lang/String;
    .end local v13           #encodedPhoneticName:Ljava/lang/String;
    .end local v14           #encodedSymbol:Ljava/lang/String;
    .end local v15           #encodedTitle:Ljava/lang/String;
    .end local v28           #reallyUseQuotedPrintable:Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    const-string v34, "ORG"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    const-string v34, ":"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1463
    .end local v17           #isPrimary:Z
    .end local v18           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v20           #label:Ljava/lang/String;
    .end local v25           #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v27           #rawOrganizationArray:[Ljava/lang/String;
    .end local v31           #type:I
    .end local v32           #typeAsObject:Ljava/lang/Integer;
    :cond_15
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 1464
    .local v22, orgBuilder:Ljava/lang/StringBuilder;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_16

    .line 1465
    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    :cond_16
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_18

    .line 1468
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v33

    if-lez v33, :cond_17

    .line 1469
    const/16 v33, 0x3b

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1471
    :cond_17
    move-object/from16 v0, v22

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    :cond_18
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1474
    .local v24, orgline:Ljava/lang/String;
    const-string v33, "ORG"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object v24, v34, v35

    invoke-static/range {v34 .. v34}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_19

    const/16 v34, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mShouldUseQuotedPrintable:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1a

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v24, v35, v36

    invoke-static/range {v35 .. v35}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_1a

    const/16 v35, 0x1

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_8

    :cond_19
    const/16 v34, 0x0

    goto :goto_b

    :cond_1a
    const/16 v35, 0x0

    goto :goto_c

    .line 1481
    .end local v22           #orgBuilder:Ljava/lang/StringBuilder;
    .end local v24           #orgline:Ljava/lang/String;
    :cond_1b
    const/16 v34, 0x0

    goto/16 :goto_9

    :cond_1c
    const/16 v35, 0x0

    goto/16 :goto_a

    .line 1488
    .end local v6           #company:Ljava/lang/String;
    .end local v7           #contentValues:Landroid/content/ContentValues;
    .end local v8           #department:Ljava/lang/String;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #jobDescription:Ljava/lang/String;
    .end local v21           #officeLocation:Ljava/lang/String;
    .end local v26           #phoneticName:Ljava/lang/String;
    .end local v29           #symbol:Ljava/lang/String;
    .end local v30           #title:Ljava/lang/String;
    :cond_1d
    return-object p0

    .line 1373
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public appendPhones(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .locals 23
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 871
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v13, 0x0

    .line 872
    .local v13, phoneLineExists:Z
    if-eqz p1, :cond_8

    .line 873
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 874
    .local v16, phoneSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 875
    .local v6, contentValues:Landroid/content/ContentValues;
    const-string v19, "data2"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 876
    .local v18, typeAsObject:Ljava/lang/Integer;
    const-string v19, "data3"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 877
    .local v12, label:Ljava/lang/String;
    const-string v19, "is_primary"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 878
    .local v11, isPrimaryAsInteger:Ljava/lang/Integer;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-lez v19, :cond_3

    const/16 v19, 0x1

    move/from16 v10, v19

    .line 880
    .local v10, isPrimary:Z
    :goto_1
    const-string v19, "data1"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 881
    .local v14, phoneNumber:Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 882
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 884
    :cond_1
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 889
    if-eqz v18, :cond_5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v17, v19

    .line 890
    .local v17, type:I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    const/16 v19, 0x6

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/pim/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 892
    :cond_2
    const/4 v13, 0x1

    .line 893
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 894
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 895
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v12

    move-object v3, v14

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 878
    .end local v10           #isPrimary:Z
    .end local v14           #phoneNumber:Ljava/lang/String;
    .end local v17           #type:I
    :cond_3
    const/16 v19, 0x0

    move/from16 v10, v19

    goto :goto_1

    :cond_4
    const/16 v19, 0x0

    move/from16 v10, v19

    goto :goto_1

    .line 889
    .restart local v10       #isPrimary:Z
    .restart local v14       #phoneNumber:Ljava/lang/String;
    :cond_5
    const/16 v19, 0x1

    move/from16 v17, v19

    goto :goto_2

    .line 898
    .restart local v17       #type:I
    :cond_6
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardBuilder;->splitAndTrimPhoneNumbers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 899
    .local v15, phoneNumberList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 902
    const/4 v13, 0x1

    .line 903
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 904
    .local v5, actualPhoneNumber:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 912
    move-object v7, v5

    .line 914
    .local v7, formattedPhoneNumber:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 915
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v12

    move-object v3, v7

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 922
    .end local v5           #actualPhoneNumber:Ljava/lang/String;
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .end local v7           #formattedPhoneNumber:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #isPrimary:Z
    .end local v11           #isPrimaryAsInteger:Ljava/lang/Integer;
    .end local v12           #label:Ljava/lang/String;
    .end local v14           #phoneNumber:Ljava/lang/String;
    .end local v15           #phoneNumberList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v16           #phoneSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17           #type:I
    .end local v18           #typeAsObject:Ljava/lang/Integer;
    :cond_8
    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 923
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v20, ""

    const-string v21, ""

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 926
    :cond_9
    return-object p0
.end method

.method public appendPhotoLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "encodedValue"
    .parameter "photoType"

    .prologue
    const-string v9, ";"

    const-string v11, " "

    const-string v10, "\r\n"

    .line 1977
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1978
    .local v6, tmpBuilder:Ljava/lang/StringBuilder;
    const-string v8, "PHOTO"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1979
    const-string v8, ";"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1980
    iget-boolean v8, p0, Landroid/pim/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v8, :cond_1

    .line 1981
    const-string v8, "ENCODING=B"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1985
    :goto_0
    const-string v8, ";"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1986
    invoke-direct {p0, v6, p2}, Landroid/pim/vcard/VCardBuilder;->appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1987
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1988
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1990
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1991
    .local v7, tmpStr:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #tmpBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1992
    .restart local v6       #tmpBuilder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1993
    .local v2, lineCount:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    .line 1994
    .local v1, length:I
    const/16 v8, 0x4b

    const-string v9, "\r\n"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v4, v8, v9

    .line 1996
    .local v4, maxNumForFirstLine:I
    const-string v8, " "

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v5, v4, v8

    .line 1997
    .local v5, maxNumInGeneral:I
    move v3, v4

    .line 1998
    .local v3, maxNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1999
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2000
    add-int/lit8 v2, v2, 0x1

    .line 2001
    if-le v2, v3, :cond_0

    .line 2002
    const-string v8, "\r\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2003
    const-string v8, " "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2004
    move v3, v5

    .line 2005
    const/4 v2, 0x0

    .line 1998
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1983
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #lineCount:I
    .end local v3           #maxNum:I
    .end local v4           #maxNumForFirstLine:I
    .end local v5           #maxNumInGeneral:I
    .end local v7           #tmpStr:Ljava/lang/String;
    :cond_1
    const-string v8, "ENCODING=BASE64"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2008
    .restart local v0       #i:I
    .restart local v1       #length:I
    .restart local v2       #lineCount:I
    .restart local v3       #maxNum:I
    .restart local v4       #maxNumForFirstLine:I
    .restart local v5       #maxNumInGeneral:I
    .restart local v7       #tmpStr:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2010
    iget-object v8, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2011
    return-void
.end method

.method public appendPhotos(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1492
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_2

    .line 1493
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1494
    .local v0, contentValues:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 1497
    const-string v5, "data15"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1498
    .local v1, data:[B
    if-eqz v1, :cond_0

    .line 1501
    invoke-static {v1}, Landroid/pim/vcard/VCardUtils;->guessImageType([B)Ljava/lang/String;

    move-result-object v4

    .line 1502
    .local v4, photoType:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1503
    const-string v5, "VCardBuilder"

    const-string v6, "Unknown photo type. Ignored."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1507
    :cond_1
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 1508
    .local v3, photoString:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1509
    invoke-virtual {p0, v3, v4}, Landroid/pim/vcard/VCardBuilder;->appendPhotoLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1513
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #data:[B
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #photoString:Ljava/lang/String;
    .end local v4           #photoType:Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V
    .locals 9
    .parameter "type"
    .parameter "label"
    .parameter "contentValues"
    .parameter "isPrimary"
    .parameter "emitEveryTime"

    .prologue
    const-string v8, ";"

    .line 1666
    invoke-direct {p0, p3}, Landroid/pim/vcard/VCardBuilder;->tryConstructPostalStruct(Landroid/content/ContentValues;)Landroid/pim/vcard/VCardBuilder$PostalStruct;

    move-result-object v3

    .line 1667
    .local v3, postalStruct:Landroid/pim/vcard/VCardBuilder$PostalStruct;
    if-nez v3, :cond_6

    .line 1668
    if-eqz p5, :cond_5

    .line 1669
    const/4 v4, 0x0

    .line 1670
    .local v4, reallyUseQuotedPrintable:Z
    const/4 v1, 0x0

    .line 1671
    .local v1, appendCharset:Z
    const-string v0, ""

    .line 1682
    .local v0, addressValue:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1683
    .local v2, parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    .line 1684
    const-string v5, "PREF"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1686
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1713
    const-string v5, "VCardBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown StructuredPostal type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :cond_1
    :goto_1
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, "ADR"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1720
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    invoke-direct {p0, v2}, Landroid/pim/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 1723
    :cond_2
    if-eqz v1, :cond_3

    .line 1728
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/pim/vcard/VCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1731
    :cond_3
    if-eqz v4, :cond_4

    .line 1732
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1733
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1735
    :cond_4
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    iget-object v5, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    .end local v0           #addressValue:Ljava/lang/String;
    .end local v1           #appendCharset:Z
    .end local v2           #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #reallyUseQuotedPrintable:Z
    :cond_5
    return-void

    .line 1676
    :cond_6
    iget-boolean v4, v3, Landroid/pim/vcard/VCardBuilder$PostalStruct;->reallyUseQuotedPrintable:Z

    .line 1677
    .restart local v4       #reallyUseQuotedPrintable:Z
    iget-boolean v1, v3, Landroid/pim/vcard/VCardBuilder$PostalStruct;->appendCharset:Z

    .line 1678
    .restart local v1       #appendCharset:Z
    iget-object v0, v3, Landroid/pim/vcard/VCardBuilder$PostalStruct;->addressData:Ljava/lang/String;

    .restart local v0       #addressValue:Ljava/lang/String;
    goto :goto_0

    .line 1688
    .restart local v2       #parameterList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_0
    const-string v5, "HOME"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1692
    :pswitch_1
    const-string v5, "WORK"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1696
    :pswitch_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v5, :cond_7

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v5}, Landroid/pim/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1702
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1707
    :pswitch_3
    iget-boolean v5, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v5, :cond_1

    .line 1708
    const-string v5, "OTHER"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1686
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public appendPostals(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1010
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1011
    :cond_0
    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_1

    .line 1012
    iget-object v0, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "ADR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    iget-object v0, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    iget-object v0, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "HOME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    iget-object v0, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    iget-object v0, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    :cond_1
    :goto_0
    return-object p0

    .line 1019
    :cond_2
    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_3

    .line 1020
    invoke-direct {p0, p1}, Landroid/pim/vcard/VCardBuilder;->appendPostalsForDoCoMo(Ljava/util/List;)V

    goto :goto_0

    .line 1022
    :cond_3
    invoke-direct {p0, p1}, Landroid/pim/vcard/VCardBuilder;->appendPostalsForGeneric(Ljava/util/List;)V

    goto :goto_0
.end method

.method public appendRelation(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1645
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-boolean v2, p0, Landroid/pim/vcard/VCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1646
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1647
    .local v0, contentValues:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 1650
    const-string/jumbo v2, "vnd.android.cursor.item/relation"

    invoke-virtual {p0, v2, v0}, Landroid/pim/vcard/VCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1653
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-object p0
.end method

.method public appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .parameter "typeAsInteger"
    .parameter "label"
    .parameter "encodedValue"
    .parameter "isPrimary"

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v9, "CELL"

    const-string v7, "WORK"

    .line 1796
    iget-object v3, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "TEL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1797
    iget-object v3, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    if-nez p1, :cond_3

    .line 1801
    const/4 v1, 0x7

    .line 1806
    .local v1, type:I
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1807
    .local v0, parameterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    packed-switch v1, :pswitch_data_0

    .line 1934
    :cond_0
    :goto_1
    :pswitch_0
    if-eqz p4, :cond_1

    .line 1935
    const-string v3, "PREF"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1939
    :cond_1
    iget-boolean v3, p0, Landroid/pim/vcard/VCardBuilder;->mIsSamsungMobilePhone:Z

    if-ne v3, v5, :cond_2

    .line 1940
    const-string v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1943
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1944
    iget-object v3, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/pim/vcard/VCardBuilder;->appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    .line 1949
    :goto_2
    iget-object v3, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1950
    iget-object v3, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1951
    iget-object v3, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1952
    return-void

    .line 1803
    .end local v0           #parameterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #type:I
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1       #type:I
    goto :goto_0

    .line 1809
    .restart local v0       #parameterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "HOME"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1814
    :pswitch_2
    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v7, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1819
    :pswitch_3
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "HOME"

    aput-object v4, v3, v6

    const-string v4, "FAX"

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1824
    :pswitch_4
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v7, v3, v6

    const-string v4, "FAX"

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1829
    :pswitch_5
    const-string v3, "CELL"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1838
    :pswitch_6
    const-string v3, "PAGER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1844
    :pswitch_7
    iget-boolean v3, p0, Landroid/pim/vcard/VCardBuilder;->mIsSamsungMobilePhone:Z

    if-eq v3, v5, :cond_4

    iget-boolean v3, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v3, :cond_5

    .line 1845
    :cond_4
    const-string v3, "OTHER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1847
    :cond_5
    const-string v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1853
    :pswitch_8
    const-string v3, "CAR"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1858
    :pswitch_9
    const-string v3, "WORK"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1859
    const/4 p4, 0x1

    .line 1860
    goto/16 :goto_1

    .line 1863
    :pswitch_a
    const-string v3, "ISDN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1867
    :pswitch_b
    const/4 p4, 0x1

    .line 1868
    goto/16 :goto_1

    .line 1871
    :pswitch_c
    const-string v3, "FAX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1875
    :pswitch_d
    const-string v3, "TLX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1879
    :pswitch_e
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v7, v3, v6

    const-string v4, "CELL"

    aput-object v9, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1884
    :pswitch_f
    const-string v3, "WORK"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1889
    const-string v3, "PAGER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1894
    :pswitch_10
    const-string v3, "MSG"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1898
    :pswitch_11
    const-string v3, "CALLBACK"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1902
    :pswitch_12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1904
    iget-boolean v3, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v3, :cond_6

    .line 1905
    const-string v3, "OTHER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1907
    :cond_6
    const-string v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1909
    :cond_7
    invoke-static {p2}, Landroid/pim/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1910
    const-string v3, "CELL"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1911
    :cond_8
    iget-boolean v3, p0, Landroid/pim/vcard/VCardBuilder;->mIsV30OrV40:Z

    if-eqz v3, :cond_9

    .line 1913
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1915
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 1916
    .local v2, upperLabel:Ljava/lang/String;
    invoke-static {v2}, Landroid/pim/vcard/VCardUtils;->isValidInV21ButUnknownToContactsPhoteType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1917
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1918
    :cond_a
    iget-boolean v3, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-nez v3, :cond_b

    new-array v3, v5, [Ljava/lang/String;

    aput-object p2, v3, v6

    invoke-static {v3}, Landroid/pim/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1921
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1946
    .end local v2           #upperLabel:Ljava/lang/String;
    :cond_c
    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    goto/16 :goto_2

    .line 1807
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_11
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public appendWebsites(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/pim/vcard/VCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1313
    .local p1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_2

    .line 1314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1315
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v3, "data1"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1316
    .local v2, website:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1317
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1322
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1323
    const-string v3, "URL"

    invoke-virtual {p0, v3, v2}, Landroid/pim/vcard/VCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1327
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #website:Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public clear()V
    .locals 3

    .prologue
    const-string v2, "VERSION"

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mEndAppended:Z

    .line 243
    const-string v0, "BEGIN"

    const-string v1, "VCARD"

    invoke-virtual {p0, v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget v0, p0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Landroid/pim/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "VERSION"

    const-string v0, "4.0"

    invoke-virtual {p0, v2, v0}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_0
    return-void

    .line 246
    :cond_0
    iget v0, p0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    const-string v0, "VERSION"

    const-string v0, "3.0"

    invoke-virtual {p0, v2, v0}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_1
    iget v0, p0, Landroid/pim/vcard/VCardBuilder;->mVCardType:I

    invoke-static {v0}, Landroid/pim/vcard/VCardConfig;->isVersion21(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
    const-string v0, "VCardBuilder"

    const-string v1, "Unknown vCard version detected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_2
    const-string v0, "VERSION"

    const-string v0, "2.1"

    invoke-virtual {p0, v2, v0}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, ""

    .line 2392
    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mEndAppended:Z

    if-nez v0, :cond_1

    .line 2393
    iget-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    .line 2394
    const-string v0, "X-CLASS"

    const-string v1, "PUBLIC"

    invoke-virtual {p0, v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    const-string v0, "X-REDUCTION"

    const-string v1, ""

    invoke-virtual {p0, v0, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    const-string v0, "X-NO"

    const-string v1, ""

    invoke-virtual {p0, v0, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2397
    const-string v0, "X-DCM-HMN-MODE"

    const-string v1, ""

    invoke-virtual {p0, v0, v2}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    :cond_0
    const-string v0, "END"

    const-string v1, "VCARD"

    invoke-virtual {p0, v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/pim/vcard/VCardBuilder;->mEndAppended:Z

    .line 2402
    :cond_1
    iget-object v0, p0, Landroid/pim/vcard/VCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
