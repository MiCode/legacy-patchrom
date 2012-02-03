.class Lcom/android/phone/CallForwardEditPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallForwardEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallForwardEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallForwardEditPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallForwardEditPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallForwardEditPreference;Lcom/android/phone/CallForwardEditPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;-><init>(Lcom/android/phone/CallForwardEditPreference;)V

    return-void
.end method

.method private handleGetCFResponse(Landroid/os/Message;)V
    .locals 15
    .parameter "msg"

    .prologue
    const/4 v14, 0x0

    const/16 v13, 0x190

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v10, "CallForwardEditPreference"

    .line 202
    const-string v8, "CallForwardEditPreference"

    const-string v8, "handleGetCFResponse: done"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v8, v8, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v8, :cond_0

    .line 205
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v8, v0

    if-ne v8, v11, :cond_1

    .line 206
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v8, v8, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v8, v9, v12}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 211
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/os/AsyncResult;

    .line 213
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iput-object v14, v8, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 214
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_2

    .line 215
    const-string v8, "CallForwardEditPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleGetCFResponse: ar.exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v9, v8, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v10, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v9, v10, v8}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 274
    .end local v1           #ar:Landroid/os/AsyncResult;
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #calls: Lcom/android/phone/CallForwardEditPreference;->updateSummaryText()V
    invoke-static {v8}, Lcom/android/phone/CallForwardEditPreference;->access$200(Lcom/android/phone/CallForwardEditPreference;)V

    .line 275
    return-void

    .line 208
    :cond_1
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v8, v8, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v8, v9, v11}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 219
    .restart local v1       #ar:Landroid/os/AsyncResult;
    :cond_2
    iget-object v8, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/Throwable;

    if-eqz v8, :cond_3

    .line 220
    const-string v8, "CallForwardEditPreference"

    const-string v8, "userObj is Throwable instance !!"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v8, v8, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v8, v9, v13}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 223
    :cond_3
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v8

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v3, v0

    .line 224
    .local v3, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v8, v3

    if-nez v8, :cond_4

    .line 225
    const-string v8, "CallForwardEditPreference"

    const-string v8, "handleGetCFResponse: cfInfoArray.length==0"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8, v12}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    .line 227
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v8, v8, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v8, v9, v13}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 229
    :cond_4
    const/4 v4, 0x0

    .local v4, i:I
    array-length v6, v3

    .local v6, length:I
    :goto_2
    if-ge v4, v6, :cond_0

    .line 230
    const-string v8, "CallForwardEditPreference"

    const-string v8, "handleGetCFResponse, cfInfoArray["

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v3, v4

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v8, "CallForwardEditPreference"

    const-string v8, "mServiceClass = "

    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #getter for: Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I
    invoke-static {v9}, Lcom/android/phone/CallForwardEditPreference;->access$100(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #getter for: Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I
    invoke-static {v8}, Lcom/android/phone/CallForwardEditPreference;->access$100(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v8

    aget-object v9, v3, v4

    iget v9, v9, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_5

    .line 237
    aget-object v5, v3, v4

    .line 238
    .local v5, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8, v5}, Lcom/android/phone/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 244
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v8, v0

    if-ne v8, v11, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    if-nez v8, :cond_5

    iget v8, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v8, v11, :cond_5

    .line 248
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v8, v8, Lcom/android/phone/CallForwardEditPreference;->reason:I

    packed-switch v8, :pswitch_data_0

    .line 256
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0d008a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 258
    .local v7, s:Ljava/lang/CharSequence;
    :goto_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 259
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0d0094

    invoke-virtual {v2, v8, v14}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0d008c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 262
    invoke-virtual {v2, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 263
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 229
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    .end local v5           #info:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7           #s:Ljava/lang/CharSequence;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 250
    .restart local v5       #info:Lcom/android/internal/telephony/CallForwardInfo;
    :pswitch_0
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0d0080

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 251
    .restart local v7       #s:Ljava/lang/CharSequence;
    goto :goto_3

    .line 253
    .end local v7           #s:Ljava/lang/CharSequence;
    :pswitch_1
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0d0085

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 254
    .restart local v7       #s:Ljava/lang/CharSequence;
    goto :goto_3

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const-string v3, "CallForwardEditPreference"

    .line 278
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 280
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 281
    const-string v1, "CallForwardEditPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCFResponse: ar.exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, v6}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 285
    const-string v1, "CallForwardEditPreference"

    const-string v1, "handleSetCFResponse: re get"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v1, v1, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v6, v3, v4, v5}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 288
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 191
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 193
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->handleGetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 196
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->handleSetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
