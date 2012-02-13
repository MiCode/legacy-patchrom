.class Lcom/android/phone/CallTime$PeriodicTimerCallback;
.super Ljava/lang/Object;
.source "CallTime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeriodicTimerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallTime;


# direct methods
.method constructor <init>(Lcom/android/phone/CallTime;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/phone/CallTime$PeriodicTimerCallback;->this$0:Lcom/android/phone/CallTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/phone/CallTime$PeriodicTimerCallback;->this$0:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->isTraceRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/phone/CallTime$PeriodicTimerCallback;->this$0:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->stopTrace()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallTime$PeriodicTimerCallback;->this$0:Lcom/android/phone/CallTime;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/CallTime;->mTimerRunning:Z
    invoke-static {v0, v1}, Lcom/android/phone/CallTime;->access$002(Lcom/android/phone/CallTime;Z)Z

    .line 178
    iget-object v0, p0, Lcom/android/phone/CallTime$PeriodicTimerCallback;->this$0:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    .line 179
    return-void
.end method
