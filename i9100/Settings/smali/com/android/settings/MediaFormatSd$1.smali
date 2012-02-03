.class Lcom/android/settings/MediaFormatSd$1;
.super Ljava/lang/Object;
.source "MediaFormatSd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MediaFormatSd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MediaFormatSd;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormatSd;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/MediaFormatSd$1;->this$0:Lcom/android/settings/MediaFormatSd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 55
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY_SD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatterSd;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/android/settings/MediaFormatSd$1;->this$0:Lcom/android/settings/MediaFormatSd;

    invoke-virtual {v1, v0}, Lcom/android/settings/MediaFormatSd;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 61
    iget-object v1, p0, Lcom/android/settings/MediaFormatSd$1;->this$0:Lcom/android/settings/MediaFormatSd;

    invoke-virtual {v1}, Lcom/android/settings/MediaFormatSd;->finish()V

    goto :goto_0
.end method
