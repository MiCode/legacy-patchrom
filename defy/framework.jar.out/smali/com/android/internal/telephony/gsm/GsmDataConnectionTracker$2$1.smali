.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2$1;
.super Ljava/lang/Thread;
.source "GsmDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2$1;->this$1:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2$1;->this$1:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->runPingTest()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    return-void
.end method
