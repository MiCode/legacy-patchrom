.class Lcom/android/internal/app/ExternalMediaFormatActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ExternalMediaFormatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ExternalMediaFormatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ExternalMediaFormatActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ExternalMediaFormatActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ExternalMediaFormatActivity$1;->this$0:Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "ExternalMediaFormatActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    if-eq v0, v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    if-eq v0, v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    if-eq v0, v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_SHARED"

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ExternalMediaFormatActivity$1;->this$0:Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ExternalMediaFormatActivity;->finish()V

    :cond_1
    return-void
.end method
