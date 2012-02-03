.class Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenCaptureAction"
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "ScreenCaptureAction"


# instance fields
.field private final ACTION:Ljava/lang/String;

.field private mHomeKeyPressed:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsSentIntent:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 3
    .parameter

    .prologue
    const-string v2, "com.sec.android.app.screencapture.capture"

    .line 2988
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2983
    const-string v0, "com.sec.android.app.screencapture.capture"

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->ACTION:Ljava/lang/String;

    .line 2990
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.screencapture.capture"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mIntent:Landroid/content/Intent;

    .line 2991
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2992
    return-void
.end method


# virtual methods
.method doIninterceptKeyBeforeQueueing(IZZ)I
    .locals 4
    .parameter "keyCode"
    .parameter "isScreenOn"
    .parameter "down"

    .prologue
    const/4 v2, 0x0

    const-string v3, "ScreenCaptureAction"

    .line 3023
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->isHomeKeyPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3025
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 3026
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3028
    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 3029
    const-string v0, "ScreenCaptureAction"

    const-string v0, "interceptKeyBeforeQueueing(), now send intent"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->sendIntent()V

    :cond_0
    move v0, v2

    .line 3048
    :goto_0
    return v0

    .line 3038
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 3039
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->updateHomeKeyPressed(Z)V

    .line 3042
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->isSentIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    .line 3043
    const-string v0, "ScreenCaptureAction"

    const-string v0, "interceptKeyBeforeQueueing(), discard KEYCODE_HOME up event."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 3044
    goto :goto_0

    .line 3048
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method isHomeKeyPressed()Z
    .locals 3

    .prologue
    .line 3000
    const-string v0, "ScreenCaptureAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHomeKeyPressed(), return value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mHomeKeyPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mHomeKeyPressed:Z

    return v0
.end method

.method isSentIntent()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3013
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mIsSentIntent:Z

    if-eqz v0, :cond_0

    .line 3014
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mIsSentIntent:Z

    .line 3015
    const/4 v0, 0x1

    .line 3018
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method sendIntent()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "ScreenCaptureAction"

    .line 3005
    const-string v0, "ScreenCaptureAction"

    const-string v0, "sendIntent() is called"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3007
    const-string v0, "ScreenCaptureAction"

    const-string v0, "******************** Intent[com.sec.android.app.screencapture.capture] is sent. *************************"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mIsSentIntent:Z

    .line 3009
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 3010
    return-void
.end method

.method updateHomeKeyPressed(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 2995
    const-string v0, "ScreenCaptureAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHomeKeyPressed(), pressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mHomeKeyPressed:Z

    .line 2997
    return-void
.end method
