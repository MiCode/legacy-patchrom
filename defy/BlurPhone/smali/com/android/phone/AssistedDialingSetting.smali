.class public Lcom/android/phone/AssistedDialingSetting;
.super Landroid/preference/PreferenceActivity;
.source "AssistedDialingSetting.java"


# static fields
.field private static final BUTTON_ADS_KEY:Ljava/lang/String; = "button_ads_key"

.field private static final BUTTON_CC_KEY:Ljava/lang/String; = "button_cc_key"

.field private static final BUTTON_RC_KEY:Ljava/lang/String; = "button_rc_key"

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AssistedDialingSetting"

.field private static final VDBG:Z


# instance fields
.field private mButtonAssistedDialingStatus:Landroid/preference/CheckBoxPreference;

.field private mButtonCurrentCountry:Landroid/preference/Preference;

.field private mButtonReferenceCountry:Landroid/preference/Preference;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/AssistedDialingSetting;->DBG:Z

    .line 44
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/AssistedDialingSetting;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private handleAssistedDialingClickRequest(Z)V
    .locals 3
    .parameter "isChecked"

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, valueAssistedDialing:I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing_state"

    invoke-static {v1, v2, v0}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 227
    const-string v0, "AssistedDialingSetting"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void
.end method

.method private printSettingDbValue()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "cur_country_mcc"

    invoke-static {v12, v13, v14}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 178
    .local v5, curMccCode:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Get from db, curMccCode= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/phone/AssistedDialingSetting;->log(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "cur_country_code"

    invoke-static {v12, v13, v14}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 182
    .local v1, curCtryCode:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Get from db, curCtryCode= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/phone/AssistedDialingSetting;->log(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "cur_country_idd"

    invoke-static {v12, v13}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, curCtryIdd:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Get from db, curCtryIdd= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/phone/AssistedDialingSetting;->log(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "cur_country_ndd"

    invoke-static {v12, v13}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, curCtryNdd:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Get from db, curCtryNdd= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/phone/AssistedDialingSetting;->log(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "cur_country_area_code"

    invoke-static {v12, v13}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, curCtryArea:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Get from db, curCtryArea= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/phone/AssistedDialingSetting;->log(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "cur_country_mdn_len"

    invoke-static {v12, v13, v14}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 198
    .local v3, curCtryLen:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Get from db, curCtryLen= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/phone/AssistedDialingSetting;->log(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "ref_country_mcc"

    invoke-static {v12, v13, v14}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 203
    .local v11, refMccCode:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Get from db, refMccCode= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/phone/AssistedDialingSetting;->log(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "ref_country_code"

    invoke-static {v12, v13, v14}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 207
    .local v7, refCtryCode:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Get from db, refCtryCode= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/phone/AssistedDialingSetting;->log(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "ref_country_idd"

    invoke-static {v12, v13}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 211
    .local v8, refCtryIdd:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Get from db, refCtryIdd= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/phone/AssistedDialingSetting;->log(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "ref_country_ndd"

    invoke-static {v12, v13}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 215
    .local v10, refCtryNdd:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Get from db, refCtryNdd= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/phone/AssistedDialingSetting;->log(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "ref_country_area_code"

    invoke-static {v12, v13}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, refCtryArea:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Get from db, refCtryArea= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/phone/AssistedDialingSetting;->log(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "ref_country_mdn_len"

    invoke-static {v12, v13, v14}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 223
    .local v9, refCtryLen:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Get from db, refCtryLen= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/phone/AssistedDialingSetting;->log(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method private refreshCtryName()V
    .locals 4

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cur_country_name"

    invoke-static {v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, curCtryName:Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/AssistedDialingSetting;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get from db, curCtryName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/AssistedDialingSetting;->log(Ljava/lang/String;)V

    .line 152
    :cond_0
    if-nez v0, :cond_1

    .line 154
    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->getDefaultCtryName()Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/AssistedDialingUtil;->ctryNameToDisplayName(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v2, p0, Lcom/android/phone/AssistedDialingSetting;->mButtonCurrentCountry:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ref_country_name"

    invoke-static {v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, refCtryName:Ljava/lang/String;
    sget-boolean v2, Lcom/android/phone/AssistedDialingSetting;->VDBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get from db, refCtryName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/AssistedDialingSetting;->log(Ljava/lang/String;)V

    .line 163
    :cond_2
    if-nez v1, :cond_3

    .line 165
    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->getDefaultCtryName()Ljava/lang/String;

    move-result-object v1

    .line 167
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/AssistedDialingUtil;->ctryNameToDisplayName(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lcom/android/phone/AssistedDialingSetting;->mButtonReferenceCountry:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/android/phone/AssistedDialingSetting;->addPreferencesFromResource(I)V

    .line 59
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/AssistedDialingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 62
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelAssistedDialingOngoing()V

    .line 65
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 66
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "button_ads_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/AssistedDialingSetting;->mButtonAssistedDialingStatus:Landroid/preference/CheckBoxPreference;

    .line 67
    const-string v1, "button_cc_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/AssistedDialingSetting;->mButtonCurrentCountry:Landroid/preference/Preference;

    .line 68
    const-string v1, "button_rc_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/AssistedDialingSetting;->mButtonReferenceCountry:Landroid/preference/Preference;

    .line 71
    iget-object v1, p0, Lcom/android/phone/AssistedDialingSetting;->mButtonCurrentCountry:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    .line 72
    sget-boolean v1, Lcom/android/phone/AssistedDialingUtil;->isUnknownMccNotHandled:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->isUnknownCtryEntryExist()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/phone/AssistedDialingSetting;->mButtonCurrentCountry:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/android/phone/AssistedDialingSetting;->mButtonCurrentCountry:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 85
    iget-object v2, p0, Lcom/android/phone/AssistedDialingSetting;->mButtonAssistedDialingStatus:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/android/phone/AssistedDialingSetting;->mButtonAssistedDialingStatus:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/AssistedDialingSetting;->handleAssistedDialingClickRequest(Z)V

    move v2, v3

    .line 101
    :goto_0
    return v2

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/android/phone/AssistedDialingSetting;->mButtonCurrentCountry:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v0, CurCountryIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/phone/CurrentCountryListActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/phone/AssistedDialingSetting;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 93
    goto :goto_0

    .line 94
    .end local v0           #CurCountryIntent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/AssistedDialingSetting;->mButtonReferenceCountry:Landroid/preference/Preference;

    if-ne p2, v2, :cond_2

    .line 95
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v1, RefCountryIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/phone/ReferenceCountryListActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v1}, Lcom/android/phone/AssistedDialingSetting;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 99
    goto :goto_0

    .line 101
    .end local v1           #RefCountryIntent:Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 109
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing_state"

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 111
    .local v0, value:I
    iget-object v1, p0, Lcom/android/phone/AssistedDialingSetting;->mButtonAssistedDialingStatus:Landroid/preference/CheckBoxPreference;

    if-ne v0, v4, :cond_3

    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 114
    invoke-direct {p0}, Lcom/android/phone/AssistedDialingSetting;->refreshCtryName()V

    .line 117
    sget-boolean v1, Lcom/android/phone/AssistedDialingSetting;->VDBG:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/AssistedDialingSetting;->printSettingDbValue()V

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/android/phone/AssistedDialingSetting;->mButtonCurrentCountry:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    .line 121
    sget-boolean v1, Lcom/android/phone/AssistedDialingUtil;->isUnknownMccNotHandled:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->isUnknownCtryEntryExist()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/android/phone/AssistedDialingSetting;->mButtonCurrentCountry:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 128
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v2, v3

    .line 111
    goto :goto_0

    .line 124
    :cond_4
    iget-object v1, p0, Lcom/android/phone/AssistedDialingSetting;->mButtonCurrentCountry:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method
