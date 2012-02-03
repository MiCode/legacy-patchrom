.class Lcom/android/internal/telephony/Am$IntentReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentReceiver"
.end annotation


# instance fields
.field private mFinished:Z

.field final synthetic this$0:Lcom/android/internal/telephony/Am;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/Am;)V
    .locals 1
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/internal/telephony/Am$IntentReceiver;->this$0:Lcom/android/internal/telephony/Am;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/Am$IntentReceiver;->mFinished:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/Am;Lcom/android/internal/telephony/Am$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 731
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Am$IntentReceiver;-><init>(Lcom/android/internal/telephony/Am;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 3
    .parameter "intent"
    .parameter "rc"
    .parameter "data"
    .parameter "ext"
    .parameter "ord"
    .parameter "sticky"

    .prologue
    .line 737
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast completed: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, line:Ljava/lang/String;
    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 739
    :cond_0
    if-eqz p4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 740
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 741
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/Am$IntentReceiver;->mFinished:Z

    .line 742
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    monitor-exit p0

    return-void

    .line 737
    .end local v0           #line:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized waitForFinish()V
    .locals 2

    .prologue
    .line 747
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/Am$IntentReceiver;->mFinished:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 748
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 749
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 751
    :cond_0
    monitor-exit p0

    return-void
.end method
