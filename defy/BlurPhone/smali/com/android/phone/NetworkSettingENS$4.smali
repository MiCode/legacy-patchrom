.class Lcom/android/phone/NetworkSettingENS$4;
.super Ljava/lang/Object;
.source "NetworkSettingENS.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSettingENS;->networksListLoaded(I)V
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
    .line 693
    iput-object p1, p0, Lcom/android/phone/NetworkSettingENS$4;->this$0:Lcom/android/phone/NetworkSettingENS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 697
    iget-object v3, p0, Lcom/android/phone/NetworkSettingENS$4;->this$0:Lcom/android/phone/NetworkSettingENS;

    iget-object v2, p0, Lcom/android/phone/NetworkSettingENS$4;->this$0:Lcom/android/phone/NetworkSettingENS;

    #getter for: Lcom/android/phone/NetworkSettingENS;->mNetworks:Ljava/util/List;
    invoke-static {v2}, Lcom/android/phone/NetworkSettingENS;->access$000(Lcom/android/phone/NetworkSettingENS;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/WrappedNetworkInfo;

    #setter for: Lcom/android/phone/NetworkSettingENS;->mSelectNetworkManually:Lcom/android/phone/WrappedNetworkInfo;
    invoke-static {v3, v2}, Lcom/android/phone/NetworkSettingENS;->access$702(Lcom/android/phone/NetworkSettingENS;Lcom/android/phone/WrappedNetworkInfo;)Lcom/android/phone/WrappedNetworkInfo;

    .line 699
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->setManualNetworkSelectionTime()V

    .line 700
    const/4 v1, 0x0

    .line 702
    .local v1, selectedNetwork:Lcom/android/phone/WrappedNetworkInfo;
    iget-object v2, p0, Lcom/android/phone/NetworkSettingENS$4;->this$0:Lcom/android/phone/NetworkSettingENS;

    #getter for: Lcom/android/phone/NetworkSettingENS;->mIsAppendRatOnNetworkListEnabled:Z
    invoke-static {v2}, Lcom/android/phone/NetworkSettingENS;->access$1200(Lcom/android/phone/NetworkSettingENS;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 703
    iget-object v2, p0, Lcom/android/phone/NetworkSettingENS$4;->this$0:Lcom/android/phone/NetworkSettingENS;

    #getter for: Lcom/android/phone/NetworkSettingENS;->mSelectNetworkManually:Lcom/android/phone/WrappedNetworkInfo;
    invoke-static {v2}, Lcom/android/phone/NetworkSettingENS;->access$700(Lcom/android/phone/NetworkSettingENS;)Lcom/android/phone/WrappedNetworkInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/WrappedNetworkInfo;->is3g:Z

    if-eqz v2, :cond_1

    .line 704
    iget-object v2, p0, Lcom/android/phone/NetworkSettingENS$4;->this$0:Lcom/android/phone/NetworkSettingENS;

    iget-object v2, v2, Lcom/android/phone/NetworkSettingENS;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/phone/NetworkSettingENS$4;->this$0:Lcom/android/phone/NetworkSettingENS;

    #getter for: Lcom/android/phone/NetworkSettingENS;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/NetworkSettingENS;->access$600(Lcom/android/phone/NetworkSettingENS;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 721
    :goto_0
    iget-object v2, p0, Lcom/android/phone/NetworkSettingENS$4;->this$0:Lcom/android/phone/NetworkSettingENS;

    const-string v3, "Remove network list dialog"

    #calls: Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSettingENS;->access$200(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    .line 722
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 726
    iget-object v2, p0, Lcom/android/phone/NetworkSettingENS$4;->this$0:Lcom/android/phone/NetworkSettingENS;

    invoke-virtual {v2}, Lcom/android/phone/NetworkSettingENS;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 727
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/phone/WrappedNetworkInfo;->ni:Lcom/android/internal/telephony/gsm/NetworkInfo;

    if-eqz v2, :cond_0

    .line 728
    iget-object v2, p0, Lcom/android/phone/NetworkSettingENS$4;->this$0:Lcom/android/phone/NetworkSettingENS;

    iget-object v3, v1, Lcom/android/phone/WrappedNetworkInfo;->ni:Lcom/android/internal/telephony/gsm/NetworkInfo;

    #calls: Lcom/android/phone/NetworkSettingENS;->CheckNetworkToForbidden(Lcom/android/internal/telephony/gsm/NetworkInfo;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSettingENS;->access$1300(Lcom/android/phone/NetworkSettingENS;Lcom/android/internal/telephony/gsm/NetworkInfo;)V

    .line 732
    :cond_0
    return-void

    .line 707
    :cond_1
    iget-object v2, p0, Lcom/android/phone/NetworkSettingENS$4;->this$0:Lcom/android/phone/NetworkSettingENS;

    iget-object v2, v2, Lcom/android/phone/NetworkSettingENS;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/NetworkSettingENS$4;->this$0:Lcom/android/phone/NetworkSettingENS;

    #getter for: Lcom/android/phone/NetworkSettingENS;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/NetworkSettingENS;->access$600(Lcom/android/phone/NetworkSettingENS;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x190

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 711
    :cond_2
    iget-object v2, p0, Lcom/android/phone/NetworkSettingENS$4;->this$0:Lcom/android/phone/NetworkSettingENS;

    #getter for: Lcom/android/phone/NetworkSettingENS;->mNetworks:Ljava/util/List;
    invoke-static {v2}, Lcom/android/phone/NetworkSettingENS;->access$000(Lcom/android/phone/NetworkSettingENS;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #selectedNetwork:Lcom/android/phone/WrappedNetworkInfo;
    check-cast v1, Lcom/android/phone/WrappedNetworkInfo;

    .line 713
    .restart local v1       #selectedNetwork:Lcom/android/phone/WrappedNetworkInfo;
    iget-object v2, p0, Lcom/android/phone/NetworkSettingENS$4;->this$0:Lcom/android/phone/NetworkSettingENS;

    #getter for: Lcom/android/phone/NetworkSettingENS;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/NetworkSettingENS;->access$600(Lcom/android/phone/NetworkSettingENS;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 714
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/NetworkSettingENS$4;->this$0:Lcom/android/phone/NetworkSettingENS;

    iget-object v2, v2, Lcom/android/phone/NetworkSettingENS;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, v1, Lcom/android/phone/WrappedNetworkInfo;->ni:Lcom/android/internal/telephony/gsm/NetworkInfo;

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/gsm/NetworkInfo;Landroid/os/Message;)V

    .line 716
    iget-object v2, p0, Lcom/android/phone/NetworkSettingENS$4;->this$0:Lcom/android/phone/NetworkSettingENS;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selected network: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/phone/WrappedNetworkInfo;->carrierDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSettingENS;->access$200(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    .line 718
    iget-object v2, p0, Lcom/android/phone/NetworkSettingENS$4;->this$0:Lcom/android/phone/NetworkSettingENS;

    iget-object v3, v1, Lcom/android/phone/WrappedNetworkInfo;->carrierDisplayName:Ljava/lang/String;

    #calls: Lcom/android/phone/NetworkSettingENS;->displayNetworkSeletionInProgress(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSettingENS;->access$800(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
