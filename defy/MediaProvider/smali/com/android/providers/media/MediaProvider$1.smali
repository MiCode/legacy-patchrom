.class Lcom/android/providers/media/MediaProvider$1;
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
    .line 198
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const-string v6, "true"

    .line 201
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Z

    move-result v2

    if-nez v2, :cond_1

    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    const-string v3, "content://media/external"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    #calls: Lcom/android/providers/media/MediaProvider;->detachVolume(Landroid/net/Uri;)V
    invoke-static {v2, v3}, Lcom/android/providers/media/MediaProvider;->access$100(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)V

    .line 206
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, action:Ljava/lang/String;
    const/4 v1, 0x0

    .line 211
    .local v1, path:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 213
    :cond_2
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v2, "ModeValues"

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/android/providers/media/MotMediaScannerReceiver;->mPrefs:Landroid/content/SharedPreferences;

    .line 216
    const-string v2, "android.intent.action.UMS_CONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 217
    const-string v2, "true"

    invoke-static {v5, v6}, Lcom/android/providers/media/MotMediaScannerReceiver;->setMode(ILjava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_3
    const-string v2, "android.intent.action.UMS_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 220
    const-string v2, "false"

    invoke-static {v5, v2}, Lcom/android/providers/media/MotMediaScannerReceiver;->setMode(ILjava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_4
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    const/4 v2, 0x1

    const-string v3, "true"

    invoke-static {v2, v6}, Lcom/android/providers/media/MotMediaScannerReceiver;->setMode(ILjava/lang/String;)V

    goto :goto_0
.end method
