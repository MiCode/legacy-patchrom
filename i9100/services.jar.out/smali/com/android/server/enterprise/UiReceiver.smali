.class public Lcom/android/server/enterprise/UiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UiReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UiReceiver"

.field public static final UI_INTENT:Ljava/lang/String; = "android.intent.action.enterprise.SHOW_UI"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, action:Ljava/lang/String;
    const-string v2, "UiReceiver"

    invoke-static {v2, v0}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const-string v2, "message"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, msg:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 47
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method
