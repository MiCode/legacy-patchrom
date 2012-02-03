.class Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;
.super Landroid/telephony/PhoneStateListener;
.source "Use2GOnlyCheckBoxPreference.java"


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
    .line 47
    iput-object p1, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mIsDisconnectingData:Z
    invoke-static {v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$000(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 53
    invoke-static {}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Use2GOnlyCheckBoxPreference"

    const-string v1, "onDataConnectionStateChanged.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #getter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$200(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/phone/Settings;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/phone/Settings;->removeDialog(I)V

    .line 55
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    #calls: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->changeNetworkType()V
    invoke-static {v0}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$300(Lcom/android/phone/Use2GOnlyCheckBoxPreference;)V

    .line 56
    iget-object v0, p0, Lcom/android/phone/Use2GOnlyCheckBoxPreference$1;->this$0:Lcom/android/phone/Use2GOnlyCheckBoxPreference;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/Use2GOnlyCheckBoxPreference;->mIsDisconnectingData:Z
    invoke-static {v0, v1}, Lcom/android/phone/Use2GOnlyCheckBoxPreference;->access$002(Lcom/android/phone/Use2GOnlyCheckBoxPreference;Z)Z

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
