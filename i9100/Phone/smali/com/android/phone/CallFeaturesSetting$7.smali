.class Lcom/android/phone/CallFeaturesSetting$7;
.super Landroid/content/BroadcastReceiver;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 2167
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$7;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2170
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2171
    .local v0, action:Ljava/lang/String;
    const-string v8, "state"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2172
    .local v2, extra:Ljava/lang/Boolean;
    const-string v8, "CallFeaturesSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2174
    const-string v8, "state"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2175
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$7;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const-string v9, "sip_settings_category_key"

    invoke-virtual {v8, v9}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 2176
    .local v7, sipSettings:Landroid/preference/Preference;
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$7;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v8}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 2177
    .local v6, screen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 2178
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 2179
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 2180
    .local v5, pref:Landroid/preference/Preference;
    if-eq v5, v7, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2178
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2183
    .end local v1           #count:I
    .end local v4           #i:I
    .end local v5           #pref:Landroid/preference/Preference;
    .end local v6           #screen:Landroid/preference/PreferenceScreen;
    .end local v7           #sipSettings:Landroid/preference/Preference;
    :cond_1
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$7;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v8}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2198
    :cond_2
    :goto_1
    return-void

    .line 2186
    :cond_3
    const-string v8, "com.android.phone.HEADSET_PLUG_ACTION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2187
    const-string v8, "state"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2188
    .local v3, headset_state:I
    if-nez v3, :cond_2

    .line 2190
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$7;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$900(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/ListPreference;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 2191
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$7;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$900(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/ListPreference;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 2194
    .end local v3           #headset_state:I
    :cond_4
    const-string v8, "com.android.phone.END_CALL_ACTION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2195
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$7;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$900(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/ListPreference;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 2196
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$7;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$900(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/ListPreference;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1
.end method
