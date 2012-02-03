.class Lcom/android/phone/AccelerometerListener$2;
.super Landroid/os/Handler;
.source "AccelerometerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AccelerometerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AccelerometerListener;


# direct methods
.method constructor <init>(Lcom/android/phone/AccelerometerListener;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/phone/AccelerometerListener$2;->this$0:Lcom/android/phone/AccelerometerListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 147
    :pswitch_0
    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/AccelerometerListener$2;->this$0:Lcom/android/phone/AccelerometerListener;

    iget-object v1, p0, Lcom/android/phone/AccelerometerListener$2;->this$0:Lcom/android/phone/AccelerometerListener;

    #getter for: Lcom/android/phone/AccelerometerListener;->mPendingOrientation:I
    invoke-static {v1}, Lcom/android/phone/AccelerometerListener;->access$200(Lcom/android/phone/AccelerometerListener;)I

    move-result v1

    #setter for: Lcom/android/phone/AccelerometerListener;->mOrientation:I
    invoke-static {v0, v1}, Lcom/android/phone/AccelerometerListener;->access$102(Lcom/android/phone/AccelerometerListener;I)I

    .line 150
    const-string v0, "AccelerometerListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/AccelerometerListener$2;->this$0:Lcom/android/phone/AccelerometerListener;

    #getter for: Lcom/android/phone/AccelerometerListener;->mOrientation:I
    invoke-static {v2}, Lcom/android/phone/AccelerometerListener;->access$100(Lcom/android/phone/AccelerometerListener;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string v2, "horizontal"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/android/phone/AccelerometerListener$2;->this$0:Lcom/android/phone/AccelerometerListener;

    #getter for: Lcom/android/phone/AccelerometerListener;->mListener:Lcom/android/phone/AccelerometerListener$OrientationListener;
    invoke-static {v0}, Lcom/android/phone/AccelerometerListener;->access$300(Lcom/android/phone/AccelerometerListener;)Lcom/android/phone/AccelerometerListener$OrientationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/AccelerometerListener$2;->this$0:Lcom/android/phone/AccelerometerListener;

    #getter for: Lcom/android/phone/AccelerometerListener;->mOrientation:I
    invoke-static {v1}, Lcom/android/phone/AccelerometerListener;->access$100(Lcom/android/phone/AccelerometerListener;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/phone/AccelerometerListener$OrientationListener;->orientationChanged(I)V

    .line 156
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 150
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/AccelerometerListener$2;->this$0:Lcom/android/phone/AccelerometerListener;

    #getter for: Lcom/android/phone/AccelerometerListener;->mOrientation:I
    invoke-static {v2}, Lcom/android/phone/AccelerometerListener;->access$100(Lcom/android/phone/AccelerometerListener;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "vertical"

    goto :goto_1

    :cond_1
    const-string v2, "unknown"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 145
    :pswitch_data_0
    .packed-switch 0x4d2
        :pswitch_0
    .end packed-switch
.end method
