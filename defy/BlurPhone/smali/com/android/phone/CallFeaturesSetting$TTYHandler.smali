.class Lcom/android/phone/CallFeaturesSetting$TTYHandler;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TTYHandler"
.end annotation


# static fields
.field private static final EVENT_TTY_MODE_GET:I = 0x2bc

.field private static final EVENT_TTY_MODE_SET:I = 0x320


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 2039
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$TTYHandler;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/CallFeaturesSetting$TTYHandler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2039
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting$TTYHandler;->updatePreferredTtyModeSummary(I)V

    return-void
.end method

.method private handleQueryTTYModeResponse(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 2072
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2073
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 2074
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "handleQueryTTYModeResponse: Error getting TTY state."

    #calls: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$300(Ljava/lang/String;)V

    .line 2075
    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$TTYHandler;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$800(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2090
    :goto_0
    return-void

    .line 2077
    :cond_1
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$200()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "handleQueryTTYModeResponse: TTY enable state successfully queried."

    #calls: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$300(Ljava/lang/String;)V

    .line 2079
    :cond_2
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v2, v3, v5

    .line 2080
    .local v2, ttymode:I
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$200()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQueryTTYModeResponse:ttymode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$300(Ljava/lang/String;)V

    .line 2082
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2083
    .local v1, ttyModeChanged:Landroid/content/Intent;
    const-string v3, "ttyEnabled"

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2084
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$TTYHandler;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v3, v1}, Lcom/android/phone/CallFeaturesSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 2085
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$TTYHandler;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v3}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2087
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting$TTYHandler;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->access$800(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2088
    invoke-direct {p0, v2}, Lcom/android/phone/CallFeaturesSetting$TTYHandler;->updatePreferredTtyModeSummary(I)V

    goto :goto_0

    :cond_4
    move v4, v5

    .line 2083
    goto :goto_1
.end method

.method private handleSetTTYModeResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 2093
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2095
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 2096
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetTTYModeResponse: Error setting TTY mode, ar.exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$300(Ljava/lang/String;)V

    .line 2099
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$TTYHandler;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$100(Lcom/android/phone/CallFeaturesSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$TTYHandler;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v2, v2, Lcom/android/phone/CallFeaturesSetting;->ttyHandler:Lcom/android/phone/CallFeaturesSetting$TTYHandler;

    const/16 v3, 0x2bc

    invoke-virtual {v2, v3}, Lcom/android/phone/CallFeaturesSetting$TTYHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 2100
    return-void
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4
    .parameter "TtyMode"

    .prologue
    const/4 v3, 0x0

    .line 2057
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$TTYHandler;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v1}, Lcom/android/phone/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2058
    .local v0, txts:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2066
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$TTYHandler;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$800(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2067
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$TTYHandler;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$800(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/ListPreference;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2069
    :goto_0
    return-void

    .line 2063
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$TTYHandler;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$800(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/ListPreference;

    move-result-object v1

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2058
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2046
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2054
    :goto_0
    return-void

    .line 2048
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting$TTYHandler;->handleQueryTTYModeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 2051
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting$TTYHandler;->handleSetTTYModeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 2046
    :sswitch_data_0
    .sparse-switch
        0x2bc -> :sswitch_0
        0x320 -> :sswitch_1
    .end sparse-switch
.end method
