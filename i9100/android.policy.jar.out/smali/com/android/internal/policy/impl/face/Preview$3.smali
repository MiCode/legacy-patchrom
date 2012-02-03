.class Lcom/android/internal/policy/impl/face/Preview$3;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/face/Preview;->StartPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/face/Preview;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/face/Preview;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 9
    .parameter "data"
    .parameter "camera"

    .prologue
    const/4 v7, 0x0

    const-string v8, "FaceLockScreen"

    .line 238
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget-object v2, v2, Lcom/android/internal/policy/impl/face/Preview;->databuffer:[B

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget-object v3, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget v3, v3, Lcom/android/internal/policy/impl/face/Preview;->pWidth:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget v4, v4, Lcom/android/internal/policy/impl/face/Preview;->pHeight:I

    mul-int/2addr v3, v4

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/policy/impl/face/Preview;->databuffer:[B

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    #getter for: Lcom/android/internal/policy/impl/face/Preview;->screen:Ljava/util/Date;
    invoke-static {v2}, Lcom/android/internal/policy/impl/face/Preview;->access$200(Lcom/android/internal/policy/impl/face/Preview;)Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    #setter for: Lcom/android/internal/policy/impl/face/Preview;->screen:Ljava/util/Date;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/face/Preview;->access$202(Lcom/android/internal/policy/impl/face/Preview;Ljava/util/Date;)Ljava/util/Date;

    .line 241
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    #getter for: Lcom/android/internal/policy/impl/face/Preview;->screen:Ljava/util/Date;
    invoke-static {v4}, Lcom/android/internal/policy/impl/face/Preview;->access$200(Lcom/android/internal/policy/impl/face/Preview;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget v4, v4, Lcom/android/internal/policy/impl/face/Preview;->screentimecount:I

    mul-int/lit16 v4, v4, 0xfa0

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 242
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget v3, v2, Lcom/android/internal/policy/impl/face/Preview;->screentimecount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/internal/policy/impl/face/Preview;->screentimecount:I

    .line 243
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    #getter for: Lcom/android/internal/policy/impl/face/Preview;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/face/Preview;->access$300(Lcom/android/internal/policy/impl/face/Preview;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 246
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget v2, v2, Lcom/android/internal/policy/impl/face/Preview;->fcount:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/policy/impl/face/Preview;->faceLightCheckTime:J

    .line 248
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget v3, v2, Lcom/android/internal/policy/impl/face/Preview;->fcount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/internal/policy/impl/face/Preview;->fcount:I

    const-string v2, "FaceLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count =="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget v3, v3, Lcom/android/internal/policy/impl/face/Preview;->fcount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget v2, v2, Lcom/android/internal/policy/impl/face/Preview;->fcount:I

    rem-int/lit8 v2, v2, 0x1e

    if-nez v2, :cond_4

    .line 250
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    #getter for: Lcom/android/internal/policy/impl/face/Preview;->start:J
    invoke-static {v4}, Lcom/android/internal/policy/impl/face/Preview;->access$400(Lcom/android/internal/policy/impl/face/Preview;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v0, v2

    .line 251
    .local v0, ms:D
    const-string v2, "FaceLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/high16 v3, 0x403e

    const-wide v5, 0x408f400000000000L

    div-double v5, v0, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    #setter for: Lcom/android/internal/policy/impl/face/Preview;->start:J
    invoke-static {v2, v3, v4}, Lcom/android/internal/policy/impl/face/Preview;->access$402(Lcom/android/internal/policy/impl/face/Preview;J)J

    .line 255
    .end local v0           #ms:D
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget v2, v2, Lcom/android/internal/policy/impl/face/Preview;->faceDenyCount:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_5

    .line 256
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget-object v2, v2, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 257
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iput v7, v2, Lcom/android/internal/policy/impl/face/Preview;->fcount:I

    .line 258
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iput v7, v2, Lcom/android/internal/policy/impl/face/Preview;->faceQueue:I

    .line 259
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    #getter for: Lcom/android/internal/policy/impl/face/Preview;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/face/Preview;->access$300(Lcom/android/internal/policy/impl/face/Preview;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 260
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    const v3, 0x1040476

    #calls: Lcom/android/internal/policy/impl/face/Preview;->showDialog(I)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/face/Preview;->access$000(Lcom/android/internal/policy/impl/face/Preview;I)V

    .line 265
    :goto_0
    return-void

    .line 262
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget-object v2, v2, Lcom/android/internal/policy/impl/face/Preview;->databuffer:[B

    iget-object v3, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget v3, v3, Lcom/android/internal/policy/impl/face/Preview;->pWidth:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget v4, v4, Lcom/android/internal/policy/impl/face/Preview;->pHeight:I

    invoke-static {p1, v2, v3, v4}, Lcom/android/internal/policy/impl/face/Preview$FaceRecognition_JNI_Class;->Rotate_Y_image([B[BII)I

    .line 263
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget-object v3, p0, Lcom/android/internal/policy/impl/face/Preview$3;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    iget-object v3, v3, Lcom/android/internal/policy/impl/face/Preview;->databuffer:[B

    #calls: Lcom/android/internal/policy/impl/face/Preview;->RecognitionPreviewProcess([B)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/face/Preview;->access$500(Lcom/android/internal/policy/impl/face/Preview;[B)V

    goto :goto_0
.end method
