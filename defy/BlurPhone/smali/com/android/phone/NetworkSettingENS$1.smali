.class Lcom/android/phone/NetworkSettingENS$1;
.super Landroid/os/Handler;
.source "NetworkSettingENS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSettingENS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSettingENS;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSettingENS;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private handleSetNetworkTypeResponse()V
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    iget-object v0, v0, Lcom/android/phone/NetworkSettingENS;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    #getter for: Lcom/android/phone/NetworkSettingENS;->mSelectNetworkManually:Lcom/android/phone/WrappedNetworkInfo;
    invoke-static {v1}, Lcom/android/phone/NetworkSettingENS;->access$700(Lcom/android/phone/NetworkSettingENS;)Lcom/android/phone/WrappedNetworkInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/WrappedNetworkInfo;->ni:Lcom/android/internal/telephony/gsm/NetworkInfo;

    iget-object v2, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    #getter for: Lcom/android/phone/NetworkSettingENS;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/NetworkSettingENS;->access$600(Lcom/android/phone/NetworkSettingENS;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/gsm/NetworkInfo;Landroid/os/Message;)V

    .line 234
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selected network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    #getter for: Lcom/android/phone/NetworkSettingENS;->mSelectNetworkManually:Lcom/android/phone/WrappedNetworkInfo;
    invoke-static {v2}, Lcom/android/phone/NetworkSettingENS;->access$700(Lcom/android/phone/NetworkSettingENS;)Lcom/android/phone/WrappedNetworkInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/WrappedNetworkInfo;->carrierDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSettingENS;->access$200(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    iget-object v1, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    #getter for: Lcom/android/phone/NetworkSettingENS;->mSelectNetworkManually:Lcom/android/phone/WrappedNetworkInfo;
    invoke-static {v1}, Lcom/android/phone/NetworkSettingENS;->access$700(Lcom/android/phone/NetworkSettingENS;)Lcom/android/phone/WrappedNetworkInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/WrappedNetworkInfo;->carrierDisplayName:Ljava/lang/String;

    #calls: Lcom/android/phone/NetworkSettingENS;->displayNetworkSeletionInProgress(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSettingENS;->access$800(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/NetworkSettingENS;->mSelectNetworkManually:Lcom/android/phone/WrappedNetworkInfo;
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSettingENS;->access$702(Lcom/android/phone/NetworkSettingENS;Lcom/android/phone/WrappedNetworkInfo;)Lcom/android/phone/WrappedNetworkInfo;

    .line 239
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const v8, 0x7f0b0133

    const/16 v7, 0x12c

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v9, "hideProgressPanel"

    .line 121
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 124
    :sswitch_0
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/android/phone/NetworkSettingENS;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 125
    .local v1, man:Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    new-instance v5, Lcom/android/phone/WrappedNetworkInfoBuilder;

    invoke-direct {v5}, Lcom/android/phone/WrappedNetworkInfoBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-virtual {v5, v1, v3}, Lcom/android/phone/WrappedNetworkInfoBuilder;->get(Landroid/telephony/TelephonyManager;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/android/phone/NetworkSettingENS;->mNetworks:Ljava/util/List;
    invoke-static {v4, v3}, Lcom/android/phone/NetworkSettingENS;->access$002(Lcom/android/phone/NetworkSettingENS;Ljava/util/List;)Ljava/util/List;

    .line 126
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    iget v4, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/NetworkSettingENS;->networksListLoaded(I)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkSettingENS;->access$100(Lcom/android/phone/NetworkSettingENS;I)V

    goto :goto_0

    .line 131
    .end local v1           #man:Landroid/telephony/TelephonyManager;
    :sswitch_1
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    const-string v4, "hideProgressPanel"

    #calls: Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V
    invoke-static {v3, v9}, Lcom/android/phone/NetworkSettingENS;->access$200(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    iget-boolean v3, v3, Lcom/android/phone/NetworkSettingENS;->mIsForeground:Z

    if-eqz v3, :cond_1

    .line 136
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Lcom/android/phone/NetworkSettingENS;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/android/phone/NetworkSettingENS;->removeDialog(I)V

    .line 143
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    invoke-virtual {v3}, Lcom/android/phone/NetworkSettingENS;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 145
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 146
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 147
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    const-string v4, "manual network selection: failed!"

    #calls: Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkSettingENS;->access$200(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/NetworkSettingENS;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkSettingENS;->access$300(Lcom/android/phone/NetworkSettingENS;Ljava/lang/Throwable;)V

    .line 153
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    iget-object v3, v3, Lcom/android/phone/NetworkSettingENS;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    const-string v4, "Keep Automatic: mAutoSelectCheckbox to true"

    #calls: Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkSettingENS;->access$200(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    #getter for: Lcom/android/phone/NetworkSettingENS;->mAutoSelectCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/NetworkSettingENS;->access$400(Lcom/android/phone/NetworkSettingENS;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    const-string v4, "manual network selection: succeeded!"

    #calls: Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkSettingENS;->access$200(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    .line 159
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    #getter for: Lcom/android/phone/NetworkSettingENS;->mAutoSelectCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/NetworkSettingENS;->access$400(Lcom/android/phone/NetworkSettingENS;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 164
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    const-string v4, "hideProgressPanel"

    #calls: Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V
    invoke-static {v3, v9}, Lcom/android/phone/NetworkSettingENS;->access$200(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    .line 167
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Lcom/android/phone/NetworkSettingENS;->dismissDialog(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    :goto_2
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    invoke-virtual {v3}, Lcom/android/phone/NetworkSettingENS;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 173
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 174
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 175
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    const-string v4, "automatic network selection: failed!"

    #calls: Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkSettingENS;->access$200(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    .line 176
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/NetworkSettingENS;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkSettingENS;->access$300(Lcom/android/phone/NetworkSettingENS;Ljava/lang/Throwable;)V

    .line 177
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    #getter for: Lcom/android/phone/NetworkSettingENS;->mAutoSelectCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/NetworkSettingENS;->access$400(Lcom/android/phone/NetworkSettingENS;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 179
    :cond_3
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    const-string v4, "automatic network selection: succeeded!"

    #calls: Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkSettingENS;->access$200(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    .line 180
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    #getter for: Lcom/android/phone/NetworkSettingENS;->mAutoSelectCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/NetworkSettingENS;->access$400(Lcom/android/phone/NetworkSettingENS;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 186
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    const-string v4, "EVENT_SET_NETWORK_TYPE_2G"

    #calls: Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkSettingENS;->access$200(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    .line 188
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 189
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4

    .line 190
    invoke-direct {p0}, Lcom/android/phone/NetworkSettingENS$1;->handleSetNetworkTypeResponse()V

    .line 191
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    const-string v4, "2g"

    #calls: Lcom/android/phone/NetworkSettingENS;->saveNetworkTypePreference(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkSettingENS;->access$500(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    :cond_4
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    invoke-virtual {v3}, Lcom/android/phone/NetworkSettingENS;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 194
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 199
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #toast:Landroid/widget/Toast;
    :sswitch_4
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    const-string v4, "EVENT_SET_NETWORK_TYPE_3G"

    #calls: Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkSettingENS;->access$200(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    .line 201
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 202
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_5

    .line 203
    invoke-direct {p0}, Lcom/android/phone/NetworkSettingENS$1;->handleSetNetworkTypeResponse()V

    .line 204
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    const-string v4, "3g"

    #calls: Lcom/android/phone/NetworkSettingENS;->saveNetworkTypePreference(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkSettingENS;->access$500(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :cond_5
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    invoke-virtual {v3}, Lcom/android/phone/NetworkSettingENS;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 207
    .restart local v2       #toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 212
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #toast:Landroid/widget/Toast;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 213
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SET_NETWORK_TYPE_AUTOMATIC - network type set. Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkSettingENS;->access$200(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    .line 215
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6

    .line 216
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    const-string v4, "automatic"

    #calls: Lcom/android/phone/NetworkSettingENS;->saveNetworkTypePreference(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkSettingENS;->access$500(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    .line 217
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    iget-object v3, v3, Lcom/android/phone/NetworkSettingENS;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    #getter for: Lcom/android/phone/NetworkSettingENS;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/NetworkSettingENS;->access$600(Lcom/android/phone/NetworkSettingENS;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 219
    :cond_6
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$1;->this$0:Lcom/android/phone/NetworkSettingENS;

    invoke-virtual {v3}, Lcom/android/phone/NetworkSettingENS;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 220
    .restart local v2       #toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 168
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #toast:Landroid/widget/Toast;
    :catch_0
    move-exception v3

    goto/16 :goto_2

    .line 137
    :catch_1
    move-exception v3

    goto/16 :goto_1

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
    .end sparse-switch
.end method
