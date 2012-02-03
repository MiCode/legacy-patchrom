.class public Landroid/renderscript/RenderScript$MessageThread;
.super Ljava/lang/Thread;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MessageThread"
.end annotation


# instance fields
.field mRS:Landroid/renderscript/RenderScript;

.field mRun:Z


# direct methods
.method constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "rs"

    .prologue
    .line 258
    const-string v0, "RSMessageThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    .line 259
    iput-object p1, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    .line 261
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 266
    const/16 v2, 0x10

    new-array v1, v2, [I

    .line 267
    .local v1, rbuf:[I
    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->nContextInitToClient()V

    .line 268
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    if-eqz v2, :cond_2

    .line 269
    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/renderscript/RenderScript;->nContextGetMessage([IZ)I

    move-result v0

    .line 270
    .local v0, msg:I
    if-nez v0, :cond_1

    .line 276
    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2, v3, v4}, Landroid/renderscript/RenderScript$MessageThread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v2, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessage;

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v2, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessage;

    iput-object v1, v2, Landroid/renderscript/RenderScript$RSMessage;->mData:[I

    .line 282
    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v2, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessage;

    iput v0, v2, Landroid/renderscript/RenderScript$RSMessage;->mID:I

    .line 283
    iget-object v2, p0, Landroid/renderscript/RenderScript$MessageThread;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v2, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessage;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript$RSMessage;->run()V

    goto :goto_0

    .line 287
    .end local v0           #msg:I
    :cond_2
    const-string v2, "RenderScript_jni"

    const-string v3, "MessageThread exiting."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 277
    .restart local v0       #msg:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method
