.class Lcom/android/settings/IccLockSettings$1;
.super Landroid/os/Handler;
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
    .line 109
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$1;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "IccLockSettings"

    .line 111
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 112
    .local v0, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 115
    .local v1, ce:Lcom/android/internal/telephony/CommandException;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_0

    .line 116
    const-string v2, "IccLockSettings"

    const-string v2, "mHandler, /ENABLE_ICC_PIN_COMPLETE/ : GENERIC_FAILURE"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$1;->this$0:Lcom/android/settings/IccLockSettings;

    #calls: Lcom/android/settings/IccLockSettings;->iccLockNotAllowed()V
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$000(Lcom/android/settings/IccLockSettings;)V

    .line 123
    :goto_1
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$1;->this$0:Lcom/android/settings/IccLockSettings;

    #getter for: Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$200(Lcom/android/settings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 119
    :cond_0
    const-string v2, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler, ce is null or ar.exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$1;->this$0:Lcom/android/settings/IccLockSettings;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    move v3, v4

    :goto_2
    #calls: Lcom/android/settings/IccLockSettings;->iccLockChanged(Z)V
    invoke-static {v2, v3}, Lcom/android/settings/IccLockSettings;->access$100(Lcom/android/settings/IccLockSettings;Z)V

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_2

    .line 127
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/IccLockSettings$1;->this$0:Lcom/android/settings/IccLockSettings;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    move v3, v4

    :goto_3
    #calls: Lcom/android/settings/IccLockSettings;->iccPinChanged(Z)V
    invoke-static {v2, v3}, Lcom/android/settings/IccLockSettings;->access$300(Lcom/android/settings/IccLockSettings;Z)V

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_3

    .line 112
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
