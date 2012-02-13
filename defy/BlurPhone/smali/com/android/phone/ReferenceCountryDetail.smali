.class public Lcom/android/phone/ReferenceCountryDetail;
.super Landroid/preference/PreferenceActivity;
.source "ReferenceCountryDetail.java"


# static fields
.field private static final ACCEPTED_CHARS:[C = null

.field private static final AREA_CODE_KEY:Ljava/lang/String; = "area_city_code"

.field private static final COUNTRY_CODE_KEY:Ljava/lang/String; = "country_code"

.field private static final COUNTRY_IDD_KEY:Ljava/lang/String; = "country_idd"

.field private static final COUNTRY_NDD_KEY:Ljava/lang/String; = "country_ndd"

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final EDIT_TEXT_LEN:I = 0xa

.field private static final INVALID_MDN_LEN:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ReferenceCountryDetail"

.field private static final NUM_LEN_KEY:Ljava/lang/String; = "num_len"

.field private static final RESET_MENU_ID:I = 0x1

.field private static final VDBG:Z

.field private static mActPre:Ljava/lang/String;


# instance fields
.field private mAreaCode:Landroid/preference/EditTextPreference;

.field private mCtryCode:Landroid/preference/EditTextPreference;

.field private mCtryIdd:Landroid/preference/EditTextPreference;

.field private mCtryNdd:Landroid/preference/EditTextPreference;

.field private mIsDetailInfoReadOnly:Z

.field private mNumLen:Landroid/preference/EditTextPreference;

.field private mSelectedItemMcc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/ReferenceCountryDetail;->DBG:Z

    .line 48
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/ReferenceCountryDetail;->VDBG:Z

    .line 52
    const-string v0, "0123456789"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/phone/ReferenceCountryDetail;->ACCEPTED_CHARS:[C

    .line 71
    const-string v0, ""

    sput-object v0, Lcom/android/phone/ReferenceCountryDetail;->mActPre:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 66
    iput v0, p0, Lcom/android/phone/ReferenceCountryDetail;->mSelectedItemMcc:I

    .line 67
    iput-boolean v0, p0, Lcom/android/phone/ReferenceCountryDetail;->mIsDetailInfoReadOnly:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/phone/ReferenceCountryDetail;->mActPre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    sput-object p0, Lcom/android/phone/ReferenceCountryDetail;->mActPre:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/phone/ReferenceCountryDetail;->VDBG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/ReferenceCountryDetail;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/ReferenceCountryDetail;->log(Ljava/lang/String;)V

    return-void
.end method

.method private addTextChangedListenerForEditText()V
    .locals 2

    .prologue
    .line 431
    new-instance v0, Lcom/android/phone/ReferenceCountryDetail$3;

    invoke-direct {v0, p0}, Lcom/android/phone/ReferenceCountryDetail$3;-><init>(Lcom/android/phone/ReferenceCountryDetail;)V

    .line 448
    .local v0, watcher:Landroid/text/TextWatcher;
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 449
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 450
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 453
    const-string v0, "ReferenceCountryDetail"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method private resetAllValue()V
    .locals 9

    .prologue
    const/4 v5, -0x1

    const-string v8, "ref_country_mdn_len"

    const-string v7, "ref_country_idd"

    const-string v6, "ref_country_area_code"

    const-string v4, ""

    .line 242
    iget v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mSelectedItemMcc:I

    invoke-static {v2}, Lcom/android/phone/AssistedDialingUtil;->getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 243
    .local v0, entryInfo:Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/phone/ReferenceCountryDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 246
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 248
    const-string v2, "ref_country_code"

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    iget-object v2, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 251
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 253
    const-string v2, "ref_country_idd"

    iget-object v2, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-static {v1, v7, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 260
    :goto_0
    iget-object v2, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 261
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 263
    const-string v2, "ref_country_ndd"

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 270
    :goto_1
    iget-object v2, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 271
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 273
    const-string v2, "ref_country_area_code"

    iget-object v2, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-static {v1, v6, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 281
    :goto_2
    iget v2, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    if-eq v2, v5, :cond_4

    .line 282
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    iget v3, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 284
    const-string v2, "ref_country_mdn_len"

    iget v2, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v1, v8, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_3
    return-void

    .line 256
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 258
    const-string v2, "ref_country_idd"

    const-string v2, ""

    invoke-static {v1, v7, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 266
    :cond_2
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 268
    const-string v2, "ref_country_ndd"

    const-string v3, ""

    invoke-static {v1, v2, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 276
    :cond_3
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 278
    const-string v2, "ref_country_area_code"

    const-string v2, ""

    invoke-static {v1, v6, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 287
    :cond_4
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    const-string v3, ""

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 289
    const-string v2, "ref_country_mdn_len"

    invoke-static {v1, v8, v5}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3
.end method

.method private setChangeListener()V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Lcom/android/phone/ReferenceCountryDetail$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ReferenceCountryDetail$1;-><init>(Lcom/android/phone/ReferenceCountryDetail;)V

    .line 210
    .local v0, mListener:Landroid/preference/Preference$OnPreferenceChangeListener;
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 213
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 214
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 215
    return-void
.end method

.method private setClickListener()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Lcom/android/phone/ReferenceCountryDetail$2;

    invoke-direct {v0, p0}, Lcom/android/phone/ReferenceCountryDetail$2;-><init>(Lcom/android/phone/ReferenceCountryDetail;)V

    .line 234
    .local v0, listener:Landroid/preference/Preference$OnPreferenceClickListener;
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 235
    iget-object v1, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 236
    return-void
.end method

.method private setDetailValue()V
    .locals 14

    .prologue
    .line 299
    const/4 v5, 0x0

    .line 300
    .local v5, refCtryName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/ReferenceCountryDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 301
    .local v8, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/phone/ReferenceCountryDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 302
    .local v7, res:Landroid/content/res/Resources;
    const-string v10, "cur_country_updated_by_user"

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 304
    .local v9, value:I
    sget-boolean v10, Lcom/android/phone/ReferenceCountryDetail;->VDBG:Z

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "REF_COUNTRY_UPDATED_BY_USER = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/ReferenceCountryDetail;->log(Ljava/lang/String;)V

    .line 306
    :cond_0
    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 307
    const-string v10, "ref_country_code"

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 309
    .local v2, refCtryCode:I
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 312
    const-string v10, "ref_country_idd"

    invoke-static {v8, v10}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, refCtryIdd:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 315
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 319
    :cond_1
    const-string v10, "ref_country_ndd"

    invoke-static {v8, v10}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, refCtryNdd:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 322
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v6}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 326
    :cond_2
    const-string v10, "ref_country_area_code"

    invoke-static {v8, v10}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, refCtryArea:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 329
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 333
    :cond_3
    const-string v10, "ref_country_mdn_len"

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 335
    .local v4, refCtryLen:I
    const/4 v10, -0x1

    if-eq v4, v10, :cond_4

    .line 336
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 341
    :cond_4
    const-string v10, "ref_country_name"

    invoke-static {v8, v10}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 375
    .end local v1           #refCtryArea:Ljava/lang/String;
    .end local v2           #refCtryCode:I
    .end local v3           #refCtryIdd:Ljava/lang/String;
    .end local v4           #refCtryLen:I
    .end local v6           #refCtryNdd:Ljava/lang/String;
    :cond_5
    :goto_0
    if-eqz v5, :cond_6

    .line 376
    const v10, 0x7f0b03c2

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7, v5}, Lcom/android/phone/AssistedDialingUtil;->ctryNameToDisplayName(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/phone/ReferenceCountryDetail;->setTitle(Ljava/lang/CharSequence;)V

    .line 379
    :cond_6
    return-void

    .line 345
    :cond_7
    iget v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mSelectedItemMcc:I

    invoke-static {v10}, Lcom/android/phone/AssistedDialingUtil;->getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 346
    .local v0, entryInfo:Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_5

    .line 348
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    iget v11, v0, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    iget v11, v0, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 350
    iget v10, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    .line 351
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    iget v11, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    iget v11, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 354
    :cond_8
    iget-object v10, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    if-eqz v10, :cond_9

    .line 355
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    iget-object v11, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    iget-object v11, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 358
    :cond_9
    iget-object v10, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    if-eqz v10, :cond_a

    .line 359
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    iget-object v11, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    iget-object v11, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 363
    :cond_a
    iget-object v10, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    if-eqz v10, :cond_c

    .line 364
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    iget-object v11, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v10, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    iget-object v11, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 367
    sget-boolean v10, Lcom/android/phone/ReferenceCountryDetail;->VDBG:Z

    if-eqz v10, :cond_b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Update REF_COUNTRY_AREA_CODE value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/ReferenceCountryDetail;->log(Ljava/lang/String;)V

    .line 368
    :cond_b
    const-string v10, "ref_country_area_code"

    iget-object v11, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-static {v8, v10, v11}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 371
    :cond_c
    iget-object v5, v0, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const v9, 0x7f0b03c9

    const-string v13, "country_code"

    const-string v12, "area_city_code"

    .line 77
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/phone/ReferenceCountryDetail;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.android.phone.assist.detail.mcc"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/phone/ReferenceCountryDetail;->mSelectedItemMcc:I

    .line 82
    sget-boolean v7, Lcom/android/phone/ReferenceCountryDetail;->VDBG:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get Item\'s mcc code ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/phone/ReferenceCountryDetail;->mSelectedItemMcc:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/ReferenceCountryDetail;->log(Ljava/lang/String;)V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/ReferenceCountryDetail;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.android.phone.assist.detail.ro"

    invoke-virtual {v7, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/phone/ReferenceCountryDetail;->mIsDetailInfoReadOnly:Z

    .line 87
    iget-boolean v7, p0, Lcom/android/phone/ReferenceCountryDetail;->mIsDetailInfoReadOnly:Z

    if-eqz v7, :cond_7

    .line 88
    const v7, 0x7f030004

    invoke-virtual {p0, v7}, Lcom/android/phone/ReferenceCountryDetail;->addPreferencesFromResource(I)V

    .line 90
    const-string v7, "country_code"

    invoke-virtual {p0, v13}, Lcom/android/phone/ReferenceCountryDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 91
    .local v2, mCtryCodeRo:Landroid/preference/Preference;
    const-string v7, "country_idd"

    invoke-virtual {p0, v7}, Lcom/android/phone/ReferenceCountryDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 92
    .local v3, mCtryIddRo:Landroid/preference/Preference;
    const-string v7, "country_ndd"

    invoke-virtual {p0, v7}, Lcom/android/phone/ReferenceCountryDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 93
    .local v4, mCtryNddRo:Landroid/preference/Preference;
    const-string v7, "area_city_code"

    invoke-virtual {p0, v12}, Lcom/android/phone/ReferenceCountryDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 94
    .local v1, mAreaCodeRo:Landroid/preference/Preference;
    const-string v7, "num_len"

    invoke-virtual {p0, v7}, Lcom/android/phone/ReferenceCountryDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 96
    .local v5, mNumLenRo:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/phone/ReferenceCountryDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 97
    .local v6, res:Landroid/content/res/Resources;
    iget v7, p0, Lcom/android/phone/ReferenceCountryDetail;->mSelectedItemMcc:I

    invoke-static {v7}, Lcom/android/phone/AssistedDialingUtil;->getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 98
    .local v0, entryInfo:Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_6

    .line 100
    if-eqz v2, :cond_1

    .line 101
    iget v7, v0, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    :cond_1
    if-eqz v5, :cond_2

    iget v7, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 104
    iget v7, v0, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    :cond_2
    if-eqz v3, :cond_3

    iget-object v7, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 107
    iget-object v7, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    :cond_3
    if-eqz v4, :cond_4

    iget-object v7, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 110
    iget-object v7, v0, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    :cond_4
    if-eqz v1, :cond_5

    iget-object v7, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 113
    iget-object v7, v0, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 116
    :cond_5
    const v7, 0x7f0b03c2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/android/phone/AssistedDialingUtil;->ctryNameToDisplayName(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/ReferenceCountryDetail;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    .end local v0           #entryInfo:Lcom/motorola/android/telephony/MCCEntry;
    .end local v1           #mAreaCodeRo:Landroid/preference/Preference;
    .end local v2           #mCtryCodeRo:Landroid/preference/Preference;
    .end local v3           #mCtryIddRo:Landroid/preference/Preference;
    .end local v4           #mCtryNddRo:Landroid/preference/Preference;
    .end local v5           #mNumLenRo:Landroid/preference/Preference;
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_6
    :goto_0
    return-void

    .line 122
    :cond_7
    const v7, 0x7f030003

    invoke-virtual {p0, v7}, Lcom/android/phone/ReferenceCountryDetail;->addPreferencesFromResource(I)V

    .line 124
    const-string v7, "country_code"

    invoke-virtual {p0, v13}, Lcom/android/phone/ReferenceCountryDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    .line 125
    const-string v7, "country_idd"

    invoke-virtual {p0, v7}, Lcom/android/phone/ReferenceCountryDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    .line 126
    const-string v7, "country_ndd"

    invoke-virtual {p0, v7}, Lcom/android/phone/ReferenceCountryDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    .line 127
    const-string v7, "area_city_code"

    invoke-virtual {p0, v12}, Lcom/android/phone/ReferenceCountryDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    .line 128
    const-string v7, "num_len"

    invoke-virtual {p0, v7}, Lcom/android/phone/ReferenceCountryDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    .line 130
    iget-object v7, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    if-eqz v7, :cond_8

    .line 131
    iget-object v7, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setPositiveButtonText(I)V

    .line 133
    :cond_8
    iget-object v7, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    if-eqz v7, :cond_9

    .line 134
    iget-object v7, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setPositiveButtonText(I)V

    .line 136
    :cond_9
    iget-object v7, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    if-eqz v7, :cond_a

    .line 137
    iget-object v7, p0, Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setPositiveButtonText(I)V

    .line 139
    :cond_a
    iget-object v7, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    if-eqz v7, :cond_b

    .line 140
    iget-object v7, p0, Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setPositiveButtonText(I)V

    .line 142
    :cond_b
    iget-object v7, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    if-eqz v7, :cond_c

    .line 143
    iget-object v7, p0, Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setPositiveButtonText(I)V

    .line 146
    :cond_c
    invoke-direct {p0}, Lcom/android/phone/ReferenceCountryDetail;->setDetailValue()V

    .line 150
    invoke-direct {p0}, Lcom/android/phone/ReferenceCountryDetail;->setClickListener()V

    .line 154
    invoke-direct {p0}, Lcom/android/phone/ReferenceCountryDetail;->setChangeListener()V

    .line 159
    invoke-direct {p0}, Lcom/android/phone/ReferenceCountryDetail;->addTextChangedListenerForEditText()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 383
    iget-boolean v0, p0, Lcom/android/phone/ReferenceCountryDetail;->mIsDetailInfoReadOnly:Z

    if-nez v0, :cond_0

    .line 384
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 385
    const v0, 0x7f0b03ca

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 387
    :cond_0
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 392
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 397
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 394
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/ReferenceCountryDetail;->resetAllValue()V

    .line 395
    const/4 v0, 0x1

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 403
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 407
    sget-boolean v4, Lcom/android/phone/ReferenceCountryDetail;->VDBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "On restore states, actPre = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/ReferenceCountryDetail;->mActPre:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/ReferenceCountryDetail;->log(Ljava/lang/String;)V

    .line 408
    :cond_0
    sget-object v4, Lcom/android/phone/ReferenceCountryDetail;->mActPre:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/phone/ReferenceCountryDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 409
    .local v2, etPre:Landroid/preference/EditTextPreference;
    if-eqz v2, :cond_2

    .line 410
    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v3

    .line 411
    .local v3, len:I
    sget-boolean v4, Lcom/android/phone/ReferenceCountryDetail;->VDBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Onrestore editText textLen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/ReferenceCountryDetail;->log(Ljava/lang/String;)V

    .line 412
    :cond_1
    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 413
    .local v0, actDialog:Landroid/app/AlertDialog;
    if-eqz v0, :cond_2

    .line 414
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 415
    .local v1, button:Landroid/widget/Button;
    if-nez v1, :cond_3

    .line 425
    .end local v0           #actDialog:Landroid/app/AlertDialog;
    .end local v1           #button:Landroid/widget/Button;
    .end local v3           #len:I
    :cond_2
    :goto_0
    return-void

    .line 416
    .restart local v0       #actDialog:Landroid/app/AlertDialog;
    .restart local v1       #button:Landroid/widget/Button;
    .restart local v3       #len:I
    :cond_3
    if-nez v3, :cond_5

    .line 417
    sget-boolean v4, Lcom/android/phone/ReferenceCountryDetail;->VDBG:Z

    if-eqz v4, :cond_4

    const-string v4, "Onrestore disable Set button"

    invoke-direct {p0, v4}, Lcom/android/phone/ReferenceCountryDetail;->log(Ljava/lang/String;)V

    .line 418
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 420
    :cond_5
    sget-boolean v4, Lcom/android/phone/ReferenceCountryDetail;->VDBG:Z

    if-eqz v4, :cond_6

    const-string v4, "Onrestore enable Set button"

    invoke-direct {p0, v4}, Lcom/android/phone/ReferenceCountryDetail;->log(Ljava/lang/String;)V

    .line 421
    :cond_6
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
