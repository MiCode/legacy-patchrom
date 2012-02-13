.class Lcom/android/phone/CallFeaturesSetting$1;
.super Landroid/os/Handler;
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
    .line 1018
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 1021
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1022
    .local v1, result:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1040
    :goto_0
    return-void

    .line 1025
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1026
    .local v0, i:I
    add-int/lit8 v0, v0, 0x1

    .line 1027
    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1029
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v2, v2, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v2, :cond_0

    .line 1030
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v2, v2, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 1033
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$100(Lcom/android/phone/CallFeaturesSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->access$000(Lcom/android/phone/CallFeaturesSetting;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x1f6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1037
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$1;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v1, v3}, Lcom/android/phone/CallFeaturesSetting;->handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 1022
    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
    .end packed-switch
.end method
