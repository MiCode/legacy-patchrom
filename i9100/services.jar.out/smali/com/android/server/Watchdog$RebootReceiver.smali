.class final Lcom/android/server/Watchdog$RebootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RebootReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/server/Watchdog$RebootReceiver;->this$0:Lcom/android/server/Watchdog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/Watchdog$RebootReceiver;->this$0:Lcom/android/server/Watchdog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->checkReboot(Z)V

    .line 147
    return-void
.end method
