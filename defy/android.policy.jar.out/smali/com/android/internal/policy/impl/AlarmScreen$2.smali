.class Lcom/android/internal/policy/impl/AlarmScreen$2;
.super Landroid/content/BroadcastReceiver;
.source "AlarmScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/AlarmScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AlarmScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AlarmScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/AlarmScreen$2;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/AlarmScreen$2;->this$0:Lcom/android/internal/policy/impl/AlarmScreen;

    #getter for: Lcom/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/AlarmScreen;->access$700(Lcom/android/internal/policy/impl/AlarmScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
