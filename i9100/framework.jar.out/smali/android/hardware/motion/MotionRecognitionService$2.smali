.class Landroid/hardware/motion/MotionRecognitionService$2;
.super Landroid/view/WindowOrientationListener;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 155
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0, p2}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "rotation"

    .prologue
    .line 159
    packed-switch p1, :pswitch_data_0

    .line 161
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v1, 0x1c

    iput v1, v0, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    .line 166
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v1, 0x1d

    iput v1, v0, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v1, 0x1e

    iput v1, v0, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    goto :goto_0

    .line 164
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$2;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v1, 0x1f

    iput v1, v0, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
