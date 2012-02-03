.class Lcom/android/settings/IccLockSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const-string v6, "IccLockSettings"

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, action:Ljava/lang/String;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    const-string v3, "state"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$400(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 159
    iget-object v3, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$200(Lcom/android/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 161
    iget-object v3, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$400(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 162
    .local v2, d:Landroid/app/Dialog;
    if-eqz v2, :cond_1

    .line 163
    const-string v3, "IccLockSettings"

    const-string v3, "onReceive() PIN input dialog is shown. Dialog closed"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 195
    .end local v2           #d:Landroid/app/Dialog;
    :cond_0
    :goto_0
    return-void

    .line 166
    .restart local v2       #d:Landroid/app/Dialog;
    :cond_1
    const-string v3, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() PIN input dialog is not shown : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    .end local v2           #d:Landroid/app/Dialog;
    :cond_2
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, SIMstate:Ljava/lang/String;
    const-string v3, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive(), SIMstate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v3, "READY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/settings/IccLockSettings;->mSimState:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/settings/IccLockSettings;->access$502(Lcom/android/settings/IccLockSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    const-string v3, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() sim.state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mSimState:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/IccLockSettings;->access$500(Lcom/android/settings/IccLockSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v3, "ABSENT"

    iget-object v4, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mSimState:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/IccLockSettings;->access$500(Lcom/android/settings/IccLockSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "UNKNOWN"

    iget-object v4, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mSimState:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/IccLockSettings;->access$500(Lcom/android/settings/IccLockSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 177
    :cond_3
    iget-object v3, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$200(Lcom/android/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 178
    iget-object v3, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$200(Lcom/android/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 184
    :goto_1
    iget-object v3, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$400(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/IccLockSettings;->access$200(Lcom/android/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 186
    iget-object v3, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mDialogState:I
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$700(Lcom/android/settings/IccLockSettings;)I

    move-result v3

    if-eqz v3, :cond_5

    .line 187
    iget-object v3, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    #calls: Lcom/android/settings/IccLockSettings;->showPinDialog()V
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$800(Lcom/android/settings/IccLockSettings;)V

    goto/16 :goto_0

    .line 180
    :cond_4
    iget-object v3, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$200(Lcom/android/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 181
    iget-object v3, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$200(Lcom/android/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/settings/IccLockSettings;->access$600(Lcom/android/settings/IccLockSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 190
    :cond_5
    const-string v3, "IccLockSettings"

    const-string v3, "onReceive(), resetDialogState()"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v3, p0, Lcom/android/settings/IccLockSettings$2;->this$0:Lcom/android/settings/IccLockSettings;

    #calls: Lcom/android/settings/IccLockSettings;->resetDialogState()V
    invoke-static {v3}, Lcom/android/settings/IccLockSettings;->access$900(Lcom/android/settings/IccLockSettings;)V

    goto/16 :goto_0
.end method
