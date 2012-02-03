.class Lcom/android/phone/Use2GOnlyCheckBoxPreference$2;
.super Ljava/lang/Object;
.source "Use2GOnlyCheckBoxPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Use2GOnlyCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$2;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 132
    packed-switch p2, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$2;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$200(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/phone/Settings;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/phone/Settings;->showDialog(I)V

    .line 135
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$2;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$500(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity()Z

    .line 136
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$2;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mIsDisconnectingData:Z
    invoke-static {v0, v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$002(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Z)Z

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$2;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$500(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$2;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mHandler:Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;
    invoke-static {v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$600(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/Use2GOnlyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 142
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$2;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$700(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
