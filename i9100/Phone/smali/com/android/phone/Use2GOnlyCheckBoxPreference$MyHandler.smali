.class Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;
.super Landroid/os/Handler;
.source "Use2GOnlyCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Use2GOnlyCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const-string v5, "Use2GOnlyCheckBoxPreference"

    .line 170
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 172
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 173
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v4

    .line 174
    .local v1, type:I
    const-string v2, "Use2GOnlyCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get preferred network type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0, v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->updateState(I)V

    .line 181
    .end local v1           #type:I
    :goto_0
    return-void

    .line 178
    :cond_0
    const-string v2, "Use2GOnlyCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get preferred network type, exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v2, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const-string v3, "Use2GOnlyCheckBoxPreference"

    .line 184
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 186
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setEnabled(Z)V

    .line 187
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 191
    invoke-static {}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Use2GOnlyCheckBoxPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set preferred network type, exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$500(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 199
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$500(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$500(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->enableDataConnectivity()Z

    .line 202
    :cond_2
    return-void

    .line 194
    :cond_3
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I
    invoke-static {v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$800(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->updateState(I)V

    .line 195
    invoke-static {}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Use2GOnlyCheckBoxPreference"

    const-string v1, "set preferred network type done"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateState(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 205
    invoke-static {}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Use2GOnlyCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateState : type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$200(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, summaryString:[Ljava/lang/String;
    array-length v1, v0

    if-ge p1, v1, :cond_1

    if-gez p1, :cond_2

    .line 208
    :cond_1
    const/4 p1, 0x0

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-virtual {v1, p1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->setValueIndex(I)V

    .line 212
    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #setter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mNetworkType:I
    invoke-static {v1, p1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$802(Lcom/android/phone/Use2GOnlyCheckBoxPreference;I)I

    .line 213
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 158
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 160
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 164
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
