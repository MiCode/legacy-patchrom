.class Lcom/android/phone/AirplaneModeHandler$2;
.super Ljava/lang/Thread;
.source "AirplaneModeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AirplaneModeHandler;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AirplaneModeHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/AirplaneModeHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/phone/AirplaneModeHandler$2;->this$0:Lcom/android/phone/AirplaneModeHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    const-wide/16 v0, 0x4e20

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 157
    invoke-static {}, Lcom/android/phone/AirplaneModeHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AirplaneModeHandler$2;->this$0:Lcom/android/phone/AirplaneModeHandler;

    const-string v1, "Sleeping thread finished."

    #calls: Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/AirplaneModeHandler;->access$100(Lcom/android/phone/AirplaneModeHandler;Ljava/lang/String;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/phone/AirplaneModeHandler$2;->this$0:Lcom/android/phone/AirplaneModeHandler;

    #getter for: Lcom/android/phone/AirplaneModeHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/AirplaneModeHandler;->access$500(Lcom/android/phone/AirplaneModeHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/phone/AirplaneModeHandler$2;->this$0:Lcom/android/phone/AirplaneModeHandler;

    #getter for: Lcom/android/phone/AirplaneModeHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/AirplaneModeHandler;->access$500(Lcom/android/phone/AirplaneModeHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/phone/AirplaneModeHandler$2;->this$0:Lcom/android/phone/AirplaneModeHandler;

    #getter for: Lcom/android/phone/AirplaneModeHandler;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/AirplaneModeHandler;->access$600(Lcom/android/phone/AirplaneModeHandler;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/AirplaneModeHandler$2;->this$0:Lcom/android/phone/AirplaneModeHandler;

    #getter for: Lcom/android/phone/AirplaneModeHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/AirplaneModeHandler;->access$300(Lcom/android/phone/AirplaneModeHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 162
    iget-object v0, p0, Lcom/android/phone/AirplaneModeHandler$2;->this$0:Lcom/android/phone/AirplaneModeHandler;

    invoke-virtual {v0}, Lcom/android/phone/AirplaneModeHandler;->finish()V

    .line 163
    return-void
.end method
