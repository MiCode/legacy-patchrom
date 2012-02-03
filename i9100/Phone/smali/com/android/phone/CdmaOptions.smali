.class public Lcom/android/phone/CdmaOptions;
.super Ljava/lang/Object;
.source "CdmaOptions.java"


# instance fields
.field private mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

.field private mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

.field private mPrefActivity:Landroid/preference/PreferenceActivity;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "prefActivity"
    .parameter "prefScreen"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    .line 42
    iput-object p2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 43
    invoke-virtual {p0}, Lcom/android/phone/CdmaOptions;->create()V

    .line 44
    return-void
.end method

.method private deviceSupportsNvAndRuim()Z
    .locals 9

    .prologue
    .line 68
    const-string v7, "ril.subscription.types"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, subscriptionsSupported:Ljava/lang/String;
    const/4 v3, 0x0

    .line 70
    .local v3, nvSupported:Z
    const/4 v4, 0x0

    .line 72
    .local v4, ruimSupported:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceSupportsnvAnRum: prop="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 73
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 76
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 77
    .local v5, subscriptionType:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 78
    const-string v7, "NV"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 79
    const/4 v3, 0x1

    .line 81
    :cond_0
    const-string v7, "RUIM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 82
    const/4 v4, 0x1

    .line 76
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #subscriptionType:Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceSupportsnvAnRum: nvSupported="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ruimSupported="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 89
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    const/4 v7, 0x1

    :goto_1
    return v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected create()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "cdma_subscription_key"

    .line 47
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 49
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "cdma_system_select_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CdmaSystemSelectListPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    .line 52
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "cdma_subscription_key"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CdmaSubscriptionListPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    .line 55
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEnabled(Z)V

    .line 56
    invoke-direct {p0}, Lcom/android/phone/CdmaOptions;->deviceSupportsNvAndRuim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "Both NV and Ruim supported, ENABLE subscription type selection"

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSubscriptionListPreference;->setEnabled(Z)V

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string v0, "Both NV and Ruim NOT supported, REMOVE subscription type selection"

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "cdma_subscription_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 113
    const-string v0, "CdmaOptions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 93
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_system_select_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "preferenceTreeClick: return BUTTON_CDMA_ROAMING_KEY true"

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    move v0, v2

    .line 101
    :goto_0
    return v0

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_subscription_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const-string v0, "preferenceTreeClick: return CDMA_SUBSCRIPTION_KEY true"

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    move v0, v2

    .line 99
    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDialog(Landroid/preference/Preference;)V
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_system_select_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_subscription_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSubscriptionListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method
