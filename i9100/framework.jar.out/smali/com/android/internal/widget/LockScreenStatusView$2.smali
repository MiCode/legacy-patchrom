.class Lcom/android/internal/widget/LockScreenStatusView$2;
.super Landroid/telephony/PhoneStateListener;
.source "LockScreenStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockScreenStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockScreenStatusView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockScreenStatusView;)V
    .locals 0
    .parameter

    .prologue
    .line 879
    iput-object p1, p0, Lcom/android/internal/widget/LockScreenStatusView$2;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 898
    const-string v0, "LockScreenStatusView"

    const-string/jumbo v1, "onCallStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView$2;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    #calls: Lcom/android/internal/widget/LockScreenStatusView;->updateCallState(I)V
    invoke-static {v0, p1}, Lcom/android/internal/widget/LockScreenStatusView;->access$700(Lcom/android/internal/widget/LockScreenStatusView;I)V

    .line 901
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView$2;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    #calls: Lcom/android/internal/widget/LockScreenStatusView;->isCdma()Z
    invoke-static {v0}, Lcom/android/internal/widget/LockScreenStatusView;->access$800(Lcom/android/internal/widget/LockScreenStatusView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView$2;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    #calls: Lcom/android/internal/widget/LockScreenStatusView;->updateSignalStrength()V
    invoke-static {v0}, Lcom/android/internal/widget/LockScreenStatusView;->access$400(Lcom/android/internal/widget/LockScreenStatusView;)V

    .line 904
    :cond_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 916
    const-string v0, "LockScreenStatusView"

    const-string/jumbo v1, "onDataActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView$2;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    iput p1, v0, Lcom/android/internal/widget/LockScreenStatusView;->mDataActivity:I

    .line 918
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView$2;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    #calls: Lcom/android/internal/widget/LockScreenStatusView;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/internal/widget/LockScreenStatusView;->access$600(Lcom/android/internal/widget/LockScreenStatusView;)V

    .line 919
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 908
    const-string v0, "LockScreenStatusView"

    const-string/jumbo v1, "onDataConnectionStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView$2;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    iput p1, v0, Lcom/android/internal/widget/LockScreenStatusView;->mDataState:I

    .line 910
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView$2;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    #calls: Lcom/android/internal/widget/LockScreenStatusView;->updateDataNetType(I)V
    invoke-static {v0, p2}, Lcom/android/internal/widget/LockScreenStatusView;->access$900(Lcom/android/internal/widget/LockScreenStatusView;I)V

    .line 911
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView$2;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    #calls: Lcom/android/internal/widget/LockScreenStatusView;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/internal/widget/LockScreenStatusView;->access$600(Lcom/android/internal/widget/LockScreenStatusView;)V

    .line 912
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 889
    const-string v0, "LockScreenStatusView"

    const-string/jumbo v1, "onServiceStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView$2;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    iput-object p1, v0, Lcom/android/internal/widget/LockScreenStatusView;->mServiceState:Landroid/telephony/ServiceState;

    .line 891
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView$2;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    #calls: Lcom/android/internal/widget/LockScreenStatusView;->updateSignalStrength()V
    invoke-static {v0}, Lcom/android/internal/widget/LockScreenStatusView;->access$400(Lcom/android/internal/widget/LockScreenStatusView;)V

    .line 892
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView$2;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    #calls: Lcom/android/internal/widget/LockScreenStatusView;->updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V
    invoke-static {v0, p1}, Lcom/android/internal/widget/LockScreenStatusView;->access$500(Lcom/android/internal/widget/LockScreenStatusView;Landroid/telephony/ServiceState;)V

    .line 893
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView$2;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    #calls: Lcom/android/internal/widget/LockScreenStatusView;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/internal/widget/LockScreenStatusView;->access$600(Lcom/android/internal/widget/LockScreenStatusView;)V

    .line 894
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "signalStrength"

    .prologue
    .line 882
    const-string v0, "LockScreenStatusView"

    const-string/jumbo v1, "onSignalStrengthsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView$2;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    iput-object p1, v0, Lcom/android/internal/widget/LockScreenStatusView;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 884
    iget-object v0, p0, Lcom/android/internal/widget/LockScreenStatusView$2;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    #calls: Lcom/android/internal/widget/LockScreenStatusView;->updateSignalStrength()V
    invoke-static {v0}, Lcom/android/internal/widget/LockScreenStatusView;->access$400(Lcom/android/internal/widget/LockScreenStatusView;)V

    .line 885
    return-void
.end method
