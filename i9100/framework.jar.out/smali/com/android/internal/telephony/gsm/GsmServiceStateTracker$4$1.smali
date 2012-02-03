.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4$1;
.super Ljava/lang/Object;
.source "GsmServiceStateTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;)V
    .locals 0
    .parameter

    .prologue
    .line 2586
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4$1;->this$1:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2588
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HSXPA] notify changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4$1;->this$1:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewHsxpaNetworkType:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$700(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4$1;->this$1:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string/jumbo v1, "networkTypeChanged"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 2590
    return-void
.end method
