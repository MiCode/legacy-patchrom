.class Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2$1;
.super Ljava/lang/Thread;
.source "GsmMultiDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2$1;->this$1:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2$1;->this$1:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->runPingTest()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3900(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V

    .line 1306
    return-void
.end method
