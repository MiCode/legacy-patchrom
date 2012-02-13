.class public Lcom/android/server/BrickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BrickReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v0, "BrickReceiver"

    const-string v1, "!!! BRICKING DEVICE !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "brick"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    return-void
.end method
