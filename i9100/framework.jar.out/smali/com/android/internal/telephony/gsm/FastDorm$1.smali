.class Lcom/android/internal/telephony/gsm/FastDorm$1;
.super Landroid/content/BroadcastReceiver;
.source "FastDorm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/FastDorm;-><init>(Lcom/android/internal/telephony/PhoneBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/FastDorm;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/FastDorm;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/FastDorm$1;->this$0:Lcom/android/internal/telephony/gsm/FastDorm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v5, "[SCREEN_ON] New FD Time: "

    const-string v4, "[FD] mIsScreenOn: "

    const-string v3, "FastDormancy"

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, action:Ljava/lang/String;
    const-string v1, "FastDormancy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FD] INTENT ACTION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDorm$1;->this$0:Lcom/android/internal/telephony/gsm/FastDorm;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/FastDorm;->mIsScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/FastDorm;->access$002(Lcom/android/internal/telephony/gsm/FastDorm;Z)Z

    .line 95
    const-string v1, "FastDormancy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FD] mIsScreenOn: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/FastDorm$1;->this$0:Lcom/android/internal/telephony/gsm/FastDorm;

    #getter for: Lcom/android/internal/telephony/gsm/FastDorm;->mIsScreenOn:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/FastDorm;->access$000(Lcom/android/internal/telephony/gsm/FastDorm;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDorm$1;->this$0:Lcom/android/internal/telephony/gsm/FastDorm;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/FastDorm$1;->this$0:Lcom/android/internal/telephony/gsm/FastDorm;

    #getter for: Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/FastDorm;->access$200(Lcom/android/internal/telephony/gsm/FastDorm;)I

    move-result v2

    #setter for: Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/FastDorm;->access$102(Lcom/android/internal/telephony/gsm/FastDorm;I)I

    .line 99
    const-string v1, "FastDormancy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SCREEN_ON] New FD Time: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/FastDorm$1;->this$0:Lcom/android/internal/telephony/gsm/FastDorm;

    #getter for: Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOnDormTime:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/FastDorm;->access$100(Lcom/android/internal/telephony/gsm/FastDorm;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDorm$1;->this$0:Lcom/android/internal/telephony/gsm/FastDorm;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/FastDorm;->mIsScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/FastDorm;->access$002(Lcom/android/internal/telephony/gsm/FastDorm;Z)Z

    .line 103
    const-string v1, "FastDormancy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FD] mIsScreenOn: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/FastDorm$1;->this$0:Lcom/android/internal/telephony/gsm/FastDorm;

    #getter for: Lcom/android/internal/telephony/gsm/FastDorm;->mIsScreenOn:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/FastDorm;->access$000(Lcom/android/internal/telephony/gsm/FastDorm;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDorm$1;->this$0:Lcom/android/internal/telephony/gsm/FastDorm;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/FastDorm$1;->this$0:Lcom/android/internal/telephony/gsm/FastDorm;

    #getter for: Lcom/android/internal/telephony/gsm/FastDorm;->mDefaultDormTime:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/FastDorm;->access$200(Lcom/android/internal/telephony/gsm/FastDorm;)I

    move-result v2

    #setter for: Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/FastDorm;->access$302(Lcom/android/internal/telephony/gsm/FastDorm;I)I

    .line 107
    const-string v1, "FastDormancy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SCREEN_ON] New FD Time: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/FastDorm$1;->this$0:Lcom/android/internal/telephony/gsm/FastDorm;

    #getter for: Lcom/android/internal/telephony/gsm/FastDorm;->mScreenOffDormTime:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/FastDorm;->access$300(Lcom/android/internal/telephony/gsm/FastDorm;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
