.class Lcom/android/phone/Settings$MyHandler;
.super Landroid/os/Handler;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_PREFERRED_NETWORK_TYPE:I = 0x0

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/Settings;


# direct methods
.method private constructor <init>(Lcom/android/phone/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Settings;Lcom/android/phone/Settings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 580
    invoke-direct {p0, p1}, Lcom/android/phone/Settings$MyHandler;-><init>(Lcom/android/phone/Settings;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, "preferred_network_mode"

    const-string v8, "handleGetPreferredNetworkTypeResponse: if 3: to refresh network mode"

    const-string v7, "preferred_network_mode_key"

    .line 599
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 601
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4

    .line 602
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v1, v3, v5

    .line 605
    .local v1, modemNetworkMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/Settings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Settings;->access$100(Ljava/lang/String;)V

    .line 609
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v9, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 615
    .local v2, settingsNetworkMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeReponse: settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/Settings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Settings;->access$100(Ljava/lang/String;)V

    .line 620
    if-eqz v1, :cond_0

    if-eq v1, v6, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    const/4 v3, 0x7

    if-ne v1, v3, :cond_7

    .line 629
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 1: modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/Settings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Settings;->access$100(Ljava/lang/String;)V

    .line 634
    if-eq v1, v2, :cond_1

    .line 636
    const-string v3, "handleGetPreferredNetworkTypeResponse: if 2: modemNetworkMode != settingsNetworkMode"

    #calls: Lcom/android/phone/Settings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Settings;->access$100(Ljava/lang/String;)V

    .line 640
    move v2, v1

    .line 642
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 2: settingsNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/Settings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Settings;->access$100(Ljava/lang/String;)V

    .line 647
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v9, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 652
    :cond_1
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "fid_34387_multimode"

    invoke-static {v3, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 653
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-virtual {v3}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "preferred_network_mode_key"

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 655
    const-string v3, "handleGetPreferredNetworkTypeResponse: if 3: to refresh network mode"

    #calls: Lcom/android/phone/Settings;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/Settings;->access$100(Ljava/lang/String;)V

    .line 658
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    iget-object v4, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #calls: Lcom/android/phone/Settings;->map2g3gNetworkMode(I)I
    invoke-static {v4, v1}, Lcom/android/phone/Settings;->access$300(Lcom/android/phone/Settings;I)I

    move-result v4

    #calls: Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V
    invoke-static {v3, v4}, Lcom/android/phone/Settings;->access$400(Lcom/android/phone/Settings;I)V

    .line 660
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/phone/Settings;->access$500(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #calls: Lcom/android/phone/Settings;->map2g3gNetworkMode(I)I
    invoke-static {v4, v1}, Lcom/android/phone/Settings;->access$300(Lcom/android/phone/Settings;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 662
    :cond_2
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-virtual {v3}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "preferred_network_mode_key"

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 663
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    iget-object v4, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #calls: Lcom/android/phone/Settings;->map2g3gValue(I)I
    invoke-static {v4, v1}, Lcom/android/phone/Settings;->access$600(Lcom/android/phone/Settings;I)I

    move-result v4

    #calls: Lcom/android/phone/Settings;->setPreferredNetworkUI(I)V
    invoke-static {v3, v4}, Lcom/android/phone/Settings;->access$700(Lcom/android/phone/Settings;I)V

    .line 665
    :cond_3
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #calls: Lcom/android/phone/Settings;->displaySettingsPerNetworkMode(I)V
    invoke-static {v3, v1}, Lcom/android/phone/Settings;->access$800(Lcom/android/phone/Settings;I)V

    .line 694
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    :cond_4
    :goto_0
    return-void

    .line 667
    .restart local v1       #modemNetworkMode:I
    .restart local v2       #settingsNetworkMode:I
    :cond_5
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-virtual {v3}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "preferred_network_mode_key"

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 669
    const-string v3, "handleGetPreferredNetworkTypeResponse: if 3: to refresh network mode"

    #calls: Lcom/android/phone/Settings;->log(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/phone/Settings;->access$100(Ljava/lang/String;)V

    .line 673
    const-string v3, "ro.mot.phonemode.vzw4gphone"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 674
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    iget-object v4, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #calls: Lcom/android/phone/Settings;->map2g3gNetworkMode(I)I
    invoke-static {v4, v1}, Lcom/android/phone/Settings;->access$300(Lcom/android/phone/Settings;I)I

    move-result v4

    #calls: Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V
    invoke-static {v3, v4}, Lcom/android/phone/Settings;->access$400(Lcom/android/phone/Settings;I)V

    .line 677
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/phone/Settings;->access$500(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #calls: Lcom/android/phone/Settings;->map2g3gNetworkMode(I)I
    invoke-static {v4, v1}, Lcom/android/phone/Settings;->access$300(Lcom/android/phone/Settings;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 679
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #calls: Lcom/android/phone/Settings;->displayCdmaSystemSelectionSettings(I)V
    invoke-static {v3, v1}, Lcom/android/phone/Settings;->access$900(Lcom/android/phone/Settings;I)V

    goto :goto_0

    .line 682
    :cond_6
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #calls: Lcom/android/phone/Settings;->UpdatePreferredNetworkModeSummary(I)V
    invoke-static {v3, v1}, Lcom/android/phone/Settings;->access$400(Lcom/android/phone/Settings;I)V

    .line 684
    iget-object v3, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/phone/Settings;->access$500(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_7
    const-string v3, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    #calls: Lcom/android/phone/Settings;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Settings;->access$100(Ljava/lang/String;)V

    .line 691
    invoke-direct {p0}, Lcom/android/phone/Settings$MyHandler;->resetNetworkModeToDefault()V

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, ""

    .line 697
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 698
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #setter for: Lcom/android/phone/Settings;->mSetPrefModeInProgress:Z
    invoke-static {v5, v7}, Lcom/android/phone/Settings;->access$1002(Lcom/android/phone/Settings;Z)Z

    .line 700
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    .line 701
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-virtual {v5}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "preferred_network_mode_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 702
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v5}, Lcom/android/phone/Settings;->access$500(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 704
    .local v3, networkMode:I
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preferred_network_mode"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 707
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 708
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->setNetworkPreferences(I)V

    .line 714
    const/4 v5, 0x7

    if-ne v5, v3, :cond_0

    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v8, v5, :cond_0

    .line 715
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 717
    .local v4, sp:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 718
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "network_selection_key"

    const-string v6, ""

    invoke-interface {v2, v5, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 719
    const-string v5, "network_selection_name_key"

    const-string v6, ""

    invoke-interface {v2, v5, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 722
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-nez v5, :cond_0

    .line 723
    const-string v5, "NetworkSettings"

    const-string v6, "failed to erase network selection preference"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #networkMode:I
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "fid_34387_multimode"

    invoke-static {v5, v6, v7}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 731
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/phone/Settings;->access$1100(Lcom/android/phone/Settings;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/phone/Settings;->access$1100(Lcom/android/phone/Settings;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 733
    :cond_1
    return-void

    .line 728
    :cond_2
    iget-object v5, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {p0, v7}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private resetNetworkModeToDefault()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 737
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    invoke-virtual {v0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "preferred_network_mode_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/android/phone/Settings;->access$500(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 745
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->setManualNetworkSelectionTime()V

    .line 748
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 750
    iget-object v0, p0, Lcom/android/phone/Settings$MyHandler;->this$0:Lcom/android/phone/Settings;

    #setter for: Lcom/android/phone/Settings;->mSetPrefModeInProgress:Z
    invoke-static {v0, v3}, Lcom/android/phone/Settings;->access$1002(Lcom/android/phone/Settings;Z)Z

    .line 751
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 587
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 596
    :goto_0
    return-void

    .line 589
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/Settings$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 593
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/Settings$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 587
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
