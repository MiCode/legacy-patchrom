.class Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;
.super Landroid/content/BroadcastReceiver;
.source "FastDormDataStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/FastDormDataStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x1388

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v6, "FastDormancy"

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mIsScreenOn:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$002(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;Z)Z

    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    #getter for: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mDorm:Lcom/android/internal/telephony/gsm/FastDorm;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$100(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)Lcom/android/internal/telephony/gsm/FastDorm;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    #getter for: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mDorm:Lcom/android/internal/telephony/gsm/FastDorm;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$100(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)Lcom/android/internal/telephony/gsm/FastDorm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/FastDorm;->getScreenOnDormTime()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$202(I)I

    .line 117
    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v1

    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$300()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    #calls: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->changeKernelWakeLockTime()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$400(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)V

    .line 127
    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$302(I)I

    .line 129
    const-string v1, "FastDormancy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SCREEN_ON] New FD Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 132
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$202(I)I

    goto :goto_0

    .line 135
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    #setter for: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mIsScreenOn:Z
    invoke-static {v1, v4}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$002(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;Z)Z

    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    #getter for: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mDorm:Lcom/android/internal/telephony/gsm/FastDorm;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$100(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)Lcom/android/internal/telephony/gsm/FastDorm;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 139
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    #getter for: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->mDorm:Lcom/android/internal/telephony/gsm/FastDorm;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$100(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)Lcom/android/internal/telephony/gsm/FastDorm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/FastDorm;->getScreenOffDormTime()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$202(I)I

    .line 140
    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v1

    if-eq v1, v3, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v1

    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$300()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 142
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    #calls: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->changeKernelWakeLockTime()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$400(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)V

    .line 143
    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$302(I)I

    .line 145
    const-string v1, "FastDormancy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SCREEN_OFF] New FD Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_3
    :goto_1
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$502(Z)Z

    .line 152
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    #getter for: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->inactivityPeriod:J
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$600(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)J

    move-result-wide v1

    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/FastDormDataStatistics$1;->this$0:Lcom/android/internal/telephony/gsm/FastDormDataStatistics;

    #calls: Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->forceDataDormancy()V
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$700(Lcom/android/internal/telephony/gsm/FastDormDataStatistics;)V

    goto :goto_0

    .line 146
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$200()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 147
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/FastDormDataStatistics;->access$202(I)I

    goto :goto_1
.end method
