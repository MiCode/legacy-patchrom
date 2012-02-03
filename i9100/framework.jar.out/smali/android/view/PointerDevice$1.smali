.class Landroid/view/PointerDevice$1;
.super Ljava/lang/Object;
.source "PointerDevice.java"

# interfaces
.implements Landroid/view/InputHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PointerDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/PointerDevice;


# direct methods
.method constructor <init>(Landroid/view/PointerDevice;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Landroid/view/PointerDevice$1;->this$0:Landroid/view/PointerDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleKey(Landroid/view/KeyEvent;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 256
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 257
    return-void
.end method

.method public handleMotion(Landroid/view/MotionEvent;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 260
    iget-object v0, p0, Landroid/view/PointerDevice$1;->this$0:Landroid/view/PointerDevice;

    iget-object v1, p0, Landroid/view/PointerDevice$1;->this$0:Landroid/view/PointerDevice;

    iget-object v1, v1, Landroid/view/PointerDevice;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p1, v1}, Landroid/view/PointerDevice;->onNewEvent(Landroid/view/MotionEvent;Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 261
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 262
    return-void
.end method
