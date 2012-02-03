.class Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;
.super Landroid/os/Handler;
.source "CdmaSystemSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaSystemSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaSystemSelectListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaSystemSelectListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaSystemSelectListPreference;Lcom/android/phone/CdmaSystemSelectListPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;-><init>(Lcom/android/phone/CdmaSystemSelectListPreference;)V

    return-void
.end method

.method private handleQueryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const-string v6, "roaming_settings"

    .line 117
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 119
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 120
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v2, v3, v5

    .line 121
    .local v2, statusCdmaRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 125
    .local v1, settingsRoamingMode:I
    if-eqz v2, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 128
    :cond_0
    if-eq v2, v1, :cond_1

    .line 129
    move v1, v2

    .line 131
    iget-object v3, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v6, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/CdmaSystemSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 144
    .end local v1           #settingsRoamingMode:I
    .end local v2           #statusCdmaRoamingMode:I
    :cond_2
    :goto_0
    return-void

    .line 140
    .restart local v1       #settingsRoamingMode:I
    .restart local v2       #statusCdmaRoamingMode:I
    :cond_3
    const-string v3, "CdmaRoamingListPreference"

    const-string v4, "reset cdma roaming mode to default"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->resetCdmaRoamingModeToDefault()V

    goto :goto_0
.end method

.method private handleSetCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 147
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 149
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 151
    .local v1, cdmaRoamingMode:I
    iget-object v2, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    .end local v1           #cdmaRoamingMode:I
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private resetCdmaRoamingModeToDefault()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaSystemSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_settings"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    iget-object v0, p0, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->this$0:Lcom/android/phone/CdmaSystemSelectListPreference;

    #getter for: Lcom/android/phone/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/CdmaSystemSelectListPreference;->access$100(Lcom/android/phone/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 169
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 107
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->handleQueryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0

    .line 111
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaSystemSelectListPreference$MyHandler;->handleSetCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
