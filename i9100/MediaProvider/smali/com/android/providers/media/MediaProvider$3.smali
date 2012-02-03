.class Lcom/android/providers/media/MediaProvider$3;
.super Landroid/content/BroadcastReceiver;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const-string v8, "android.intent.action.ACTION_MEDIA_SCANNER_PROGRESS"

    .line 660
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMediaScannerReceiver - intent.getAction : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v0, 0x0

    .line 665
    .local v0, scanType:I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ACTION_MEDIA_SCANNER_PROGRESS"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 667
    const-string v2, "ScanType"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 700
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 702
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #calls: Lcom/android/providers/media/MediaProvider;->showNotification(ZIII)V
    invoke-static {v2, v7, v5, v5, v5}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;ZIII)V

    .line 715
    :cond_1
    :goto_1
    return-void

    .line 671
    :cond_2
    const-string v2, "volume"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, volumeName:Ljava/lang/String;
    const-string v2, "internal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 676
    const/4 v0, 0x1

    goto :goto_0

    .line 678
    :cond_3
    const-string v2, "external"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 680
    const/4 v0, 0x2

    goto :goto_0

    .line 682
    :cond_4
    const-string v2, "external/sd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 684
    const/4 v0, 0x0

    goto :goto_0

    .line 704
    .end local v1           #volumeName:Ljava/lang/String;
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 707
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    #calls: Lcom/android/providers/media/MediaProvider;->showNotification(ZIII)V
    invoke-static {v2, v6, v5, v5, v5}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;ZIII)V

    goto :goto_1

    .line 709
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ACTION_MEDIA_SCANNER_PROGRESS"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 711
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$3;->this$0:Lcom/android/providers/media/MediaProvider;

    const-string v3, "ScanTotal"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "ScanDone"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #calls: Lcom/android/providers/media/MediaProvider;->showNotification(ZIII)V
    invoke-static {v2, v7, v0, v3, v4}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;ZIII)V

    goto :goto_1
.end method
