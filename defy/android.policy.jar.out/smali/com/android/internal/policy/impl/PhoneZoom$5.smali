.class Lcom/android/internal/policy/impl/PhoneZoom$5;
.super Landroid/content/BroadcastReceiver;
.source "PhoneZoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneZoom;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneZoom;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneZoom$5;->this$0:Lcom/android/internal/policy/impl/PhoneZoom;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$5;->this$0:Lcom/android/internal/policy/impl/PhoneZoom;

    #getter for: Lcom/android/internal/policy/impl/PhoneZoom;->mActive:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneZoom;->access$500(Lcom/android/internal/policy/impl/PhoneZoom;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .local v1, currentOrientation:I
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$600()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneZoom;->access$602(I)I

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$600()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$800()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneZoom;->access$702(I)I

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1000()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneZoom;->access$902(I)I

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1200()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1102(I)I

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1400()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1302(I)I

    :goto_1
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1100()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1902(I)I

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$5;->this$0:Lcom/android/internal/policy/impl/PhoneZoom;

    #getter for: Lcom/android/internal/policy/impl/PhoneZoom;->mMagnifier:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2000(Lcom/android/internal/policy/impl/PhoneZoom;)Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->hide()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$5;->this$0:Lcom/android/internal/policy/impl/PhoneZoom;

    #getter for: Lcom/android/internal/policy/impl/PhoneZoom;->mMagnifier:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2000(Lcom/android/internal/policy/impl/PhoneZoom;)Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1100()I

    move-result v3

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1300()I

    move-result v4

    #calls: Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->adjustParams(II)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->access$000(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;II)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$5;->this$0:Lcom/android/internal/policy/impl/PhoneZoom;

    #getter for: Lcom/android/internal/policy/impl/PhoneZoom;->mMagnifier:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2000(Lcom/android/internal/policy/impl/PhoneZoom;)Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1100()I

    move-result v3

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1300()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->setSize(II)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$5;->this$0:Lcom/android/internal/policy/impl/PhoneZoom;

    #getter for: Lcom/android/internal/policy/impl/PhoneZoom;->mMagnifier:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2000(Lcom/android/internal/policy/impl/PhoneZoom;)Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    move-result-object v2

    #calls: Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->moveBy(FF)V
    invoke-static {v2, v5, v5}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->access$100(Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;FF)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneZoom$5;->this$0:Lcom/android/internal/policy/impl/PhoneZoom;

    #getter for: Lcom/android/internal/policy/impl/PhoneZoom;->mMagnifier:Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneZoom;->access$2000(Lcom/android/internal/policy/impl/PhoneZoom;)Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneZoom$MagnifyingGlass;->show()V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1500()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneZoom;->access$702(I)I

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1600()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneZoom;->access$902(I)I

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1700()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1102(I)I

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1800()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneZoom;->access$1302(I)I

    goto :goto_1
.end method
