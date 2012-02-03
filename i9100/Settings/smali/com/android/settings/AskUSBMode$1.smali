.class Lcom/android/settings/AskUSBMode$1;
.super Ljava/lang/Object;
.source "AskUSBMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AskUSBMode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AskUSBMode;


# direct methods
.method constructor <init>(Lcom/android/settings/AskUSBMode;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/AskUSBMode$1;->this$0:Lcom/android/settings/AskUSBMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 82
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/AskUSBMode$1;->this$0:Lcom/android/settings/AskUSBMode;

    const-string v3, "KIES"

    #calls: Lcom/android/settings/AskUSBMode;->selectUsb(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/settings/AskUSBMode;->access$000(Lcom/android/settings/AskUSBMode;Ljava/lang/String;)V

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.TOAST_ASK_ON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, intentBroadcast:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/AskUSBMode$1;->this$0:Lcom/android/settings/AskUSBMode;

    #getter for: Lcom/android/settings/AskUSBMode;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/AskUSBMode;->access$100(Lcom/android/settings/AskUSBMode;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1           #intentBroadcast:Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/AskUSBMode$1;->this$0:Lcom/android/settings/AskUSBMode;

    invoke-virtual {v2}, Lcom/android/settings/AskUSBMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "media_player_mode"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    iget-object v2, p0, Lcom/android/settings/AskUSBMode$1;->this$0:Lcom/android/settings/AskUSBMode;

    invoke-virtual {v2}, Lcom/android/settings/AskUSBMode;->finish()V

    .line 91
    return-void

    .line 85
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 86
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ASKUSBMODE"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
