.class public Lcom/android/phone/AssistedDialingUtil;
.super Ljava/lang/Object;
.source "AssistedDialingUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AssistedDialingUtil$CtryListNode;
    }
.end annotation


# static fields
.field static final AD_ACTION:Ljava/lang/String; = "com.android.phone.intent.action.ASSISTED_DIALING_ENABLED"

.field static final AD_OFF:I = 0x0

.field static final AD_ON:I = 0x1

.field static final CALLED_BY:Ljava/lang/String; = "called_by"

.field static final CALL_GSM_AD_ENABLE:Ljava/lang/String; = "calling_gsm_ad_enabled"

.field static final CANCEL_NOTIFY:Ljava/lang/String; = "off"

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DEFAULT_CTRY_MCC:I = 0x136

.field static final DETAIL_MCC_EXTRA:Ljava/lang/String; = "com.android.phone.assist.detail.mcc"

.field static final DIAL_BY_CONTACT:Ljava/lang/String; = "BY_CONTACT"

.field static final DIAL_BY_DIALER:Ljava/lang/String; = "BY_DIALER"

.field static final ENABLE_NOTIFY:Ljava/lang/String; = "on"

.field static final IS_DETAILVIEW_RO:Ljava/lang/String; = "com.android.phone.assist.detail.ro"

.field private static final LOG_TAG:Ljava/lang/String; = "AssistedDialingUtil"

.field private static final PREFIX_PACK_TYPE_NAME:Ljava/lang/String; = "com.android.phone:string/"

.field private static final VDBG:Z

.field static assisted_dialing_dialed_by:Ljava/lang/String;

.field static assisted_dialing_origin_number:Ljava/lang/String;

.field static isCtryListChanged:Z

.field private static isFeatureOn:Z

.field static isUnknownMccNotHandled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/AssistedDialingUtil;->DBG:Z

    .line 44
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/AssistedDialingUtil;->VDBG:Z

    .line 85
    sput-boolean v1, Lcom/android/phone/AssistedDialingUtil;->isUnknownMccNotHandled:Z

    .line 88
    sput-boolean v1, Lcom/android/phone/AssistedDialingUtil;->isCtryListChanged:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method static final addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 1
    .parameter "newEntry"

    .prologue
    .line 215
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 216
    return-void
.end method

.method static final checkAdFtrFlag(Landroid/content/res/Resources;)V
    .locals 2
    .parameter "res"

    .prologue
    .line 246
    const v1, 0x7f090016

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/AssistedDialingUtil;->isFeatureOn:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 248
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    sget-boolean v1, Lcom/android/phone/AssistedDialingUtil;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Unable to get R.bool.ftr_28651_assisted_dialing"

    invoke-static {v1}, Lcom/android/phone/AssistedDialingUtil;->log(Ljava/lang/String;)V

    .line 249
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/AssistedDialingUtil;->isFeatureOn:Z

    goto :goto_0
.end method

.method static final createCtryNameList(Landroid/content/res/Resources;Ljava/util/ArrayList;)V
    .locals 11
    .parameter "res"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/AssistedDialingUtil$CtryListNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, ctryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/AssistedDialingUtil$CtryListNode;>;"
    const/4 v10, 0x1

    .line 136
    const/4 v3, 0x0

    .line 137
    .local v3, isMccTableOk:Z
    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->getDefaultCtryName()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, defaultCtryName:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->getAllCountryList()[Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v5

    .line 141
    .local v5, mccTable:[Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v5, :cond_0

    array-length v8, v5

    if-nez v8, :cond_4

    .line 142
    :cond_0
    sget-boolean v8, Lcom/android/phone/AssistedDialingUtil;->DBG:Z

    if-eqz v8, :cond_1

    const-string v8, "getAllCountryList return error table!"

    invoke-static {v8}, Lcom/android/phone/AssistedDialingUtil;->log(Ljava/lang/String;)V

    .line 148
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 150
    if-eqz v3, :cond_8

    .line 152
    const/4 v4, 0x0

    .line 153
    .local v4, isNeedCheck:Z
    array-length v7, v5

    .line 154
    .local v7, tblSize:I
    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->isUnknownCtryEntryExist()Z

    move-result v8

    if-eqz v8, :cond_2

    sub-int v8, v7, v10

    aget-object v8, v5, v8

    if-eqz v8, :cond_2

    sub-int v8, v7, v10

    aget-object v8, v5, v8

    iget-object v8, v8, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 157
    const/4 v4, 0x1

    .line 160
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_7

    .line 161
    aget-object v8, v5, v2

    if-eqz v8, :cond_3

    aget-object v8, v5, v2

    iget-object v8, v8, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 164
    if-eqz v4, :cond_6

    .line 165
    sub-int v8, v7, v10

    aget-object v8, v5, v8

    iget-object v8, v8, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    aget-object v9, v5, v2

    iget-object v9, v9, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    sub-int v8, v7, v10

    if-eq v2, v8, :cond_6

    .line 167
    const/4 v4, 0x0

    .line 160
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 144
    .end local v2           #i:I
    .end local v4           #isNeedCheck:Z
    .end local v7           #tblSize:I
    :cond_4
    sget-boolean v8, Lcom/android/phone/AssistedDialingUtil;->VDBG:Z

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAllCountryList size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/AssistedDialingUtil;->log(Ljava/lang/String;)V

    .line 145
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 172
    .restart local v2       #i:I
    .restart local v4       #isNeedCheck:Z
    .restart local v7       #tblSize:I
    :cond_6
    aget-object v8, v5, v2

    iget-object v8, v8, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 173
    new-instance v0, Lcom/android/phone/AssistedDialingUtil$CtryListNode;

    aget-object v8, v5, v2

    iget v8, v8, Lcom/motorola/android/telephony/MCCEntry;->MCC:I

    aget-object v9, v5, v2

    iget-object v9, v9, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/android/phone/AssistedDialingUtil;->ctryNameToDisplayName(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/android/phone/AssistedDialingUtil$CtryListNode;-><init>(ILjava/lang/String;)V

    .line 175
    .local v0, ctryNode:Lcom/android/phone/AssistedDialingUtil$CtryListNode;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 182
    .end local v0           #ctryNode:Lcom/android/phone/AssistedDialingUtil$CtryListNode;
    :cond_7
    new-instance v8, Lcom/android/phone/AssistedDialingUtil$1;

    invoke-direct {v8}, Lcom/android/phone/AssistedDialingUtil$1;-><init>()V

    invoke-static {p1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 191
    .end local v2           #i:I
    .end local v4           #isNeedCheck:Z
    .end local v7           #tblSize:I
    :cond_8
    new-instance v6, Lcom/android/phone/AssistedDialingUtil$CtryListNode;

    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->getDefaultCtryMcc()I

    move-result v8

    invoke-static {p0, v1}, Lcom/android/phone/AssistedDialingUtil;->ctryNameToDisplayName(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/android/phone/AssistedDialingUtil$CtryListNode;-><init>(ILjava/lang/String;)V

    .line 193
    .local v6, node:Lcom/android/phone/AssistedDialingUtil$CtryListNode;
    const/4 v8, 0x0

    invoke-virtual {p1, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 194
    return-void
.end method

.method static final ctryNameToDisplayName(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "res"
    .parameter "str"

    .prologue
    const/16 v4, 0x5f

    .line 113
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 115
    .local v2, tv:Landroid/util/TypedValue;
    const/16 v3, 0x20

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, tempStr:Ljava/lang/String;
    const/16 v3, 0x28

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 117
    const/16 v3, 0x29

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 118
    const/16 v3, 0x27

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 119
    const/16 v3, 0x2c

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 120
    const/16 v3, 0x2d

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 122
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.phone:string/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v4}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    iget-object p0, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v3, p0

    :goto_0
    return-object v3

    .line 123
    .restart local p0
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 124
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    sget-boolean v3, Lcom/android/phone/AssistedDialingUtil;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get resource, country name = com.android.phone:string/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/AssistedDialingUtil;->log(Ljava/lang/String;)V

    :cond_0
    move-object v3, p1

    .line 126
    goto :goto_0
.end method

.method static final getAllCountryList()[Lcom/motorola/android/telephony/MCCEntry;
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getAllCountryList()[Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    return-object v0
.end method

.method static final getDefaultCtryMcc()I
    .locals 1

    .prologue
    .line 281
    const/16 v0, 0x136

    return v0
.end method

.method static final getDefaultCtryName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->getDefaultCtryMcc()I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/AssistedDialingUtil;->getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 291
    .local v0, entryInfo:Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_0

    .line 292
    iget-object v1, v0, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    .line 295
    :goto_0
    return-object v1

    .line 294
    :cond_0
    sget-boolean v1, Lcom/android/phone/AssistedDialingUtil;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "Unable to get default country name!"

    invoke-static {v1}, Lcom/android/phone/AssistedDialingUtil;->log(Ljava/lang/String;)V

    .line 295
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method static final getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;
    .locals 1
    .parameter "mcc"

    .prologue
    .line 208
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    return-object v0
.end method

.method static final isAdFlexOn()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 257
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 258
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 259
    .local v2, phoneType:I
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "calling_gsm_ad_enabled"

    invoke-static {v3, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 260
    .local v0, is33861on:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 261
    sget-boolean v3, Lcom/android/phone/AssistedDialingUtil;->isFeatureOn:Z

    .line 264
    :goto_0
    return v3

    .line 262
    :cond_0
    if-ne v2, v6, :cond_1

    if-ne v0, v6, :cond_1

    .line 263
    sget-boolean v3, Lcom/android/phone/AssistedDialingUtil;->isFeatureOn:Z

    goto :goto_0

    :cond_1
    move v3, v5

    .line 264
    goto :goto_0
.end method

.method static final isAdFtrOn()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 271
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 272
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assisted_dialing_state"

    invoke-static {v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 274
    .local v1, value:I
    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->isAdFlexOn()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne v1, v5, :cond_0

    move v2, v5

    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method static final isCtryNameExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "ctryName"

    .prologue
    .line 230
    sget-boolean v0, Lcom/android/phone/AssistedDialingUtil;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCtryNameExist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/AssistedDialingUtil;->log(Ljava/lang/String;)V

    .line 231
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->isCtryNameExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static final isUnknownCtryEntryExist()Z
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isUnknownCountryExist()Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 300
    const-string v0, "AssistedDialingUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void
.end method

.method static final removeUnknownCountry()V
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->removeUnknownCountry()V

    .line 223
    return-void
.end method
