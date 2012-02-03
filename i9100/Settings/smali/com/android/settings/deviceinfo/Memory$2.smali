.class Lcom/android/settings/deviceinfo/Memory$2;
.super Landroid/content/BroadcastReceiver;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory$2;->this$0:Lcom/android/settings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory$2;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #calls: Lcom/android/settings/deviceinfo/Memory;->updateMemoryStatus()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Memory;->access$000(Lcom/android/settings/deviceinfo/Memory;)V

    .line 294
    return-void
.end method
