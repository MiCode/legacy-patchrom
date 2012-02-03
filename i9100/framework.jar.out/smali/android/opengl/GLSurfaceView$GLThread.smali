.class Landroid/opengl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLThread"
.end annotation


# instance fields
.field private mEglCreateSurfaceFailCnt:I

.field private mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Landroid/opengl/GLSurfaceView;


# direct methods
.method constructor <init>(Landroid/opengl/GLSurfaceView;Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .parameter
    .parameter "renderer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1120
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    .line 1121
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1122
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1123
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1124
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1125
    iput v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1126
    iput-object p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 1127
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    .line 1128
    return-void
.end method

.method static synthetic access$1102(Landroid/opengl/GLSurfaceView$GLThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1119
    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1169
    new-instance v14, Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    move-object v15, v0

    invoke-direct {v14, v15}, Landroid/opengl/GLSurfaceView$EglHelper;-><init>(Landroid/opengl/GLSurfaceView;)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    .line 1170
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1171
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1173
    const/4 v7, 0x0

    .line 1174
    .local v7, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1175
    .local v3, createEglContext:Z
    const/4 v4, 0x0

    .line 1176
    .local v4, createEglSurface:Z
    const/4 v9, 0x0

    .line 1177
    .local v9, lostEglContext:Z
    const/4 v10, 0x0

    .line 1178
    .local v10, sizeChanged:Z
    const/4 v13, 0x0

    .line 1179
    .local v13, wantRenderNotification:Z
    const/4 v5, 0x0

    .line 1180
    .local v5, doRenderNotification:Z
    const/4 v2, 0x0

    .line 1181
    .local v2, askedToReleaseEglContext:Z
    const/4 v12, 0x0

    .line 1182
    .local v12, w:I
    const/4 v8, 0x0

    .line 1183
    .local v8, h:I
    const/4 v6, 0x0

    .line 1186
    .local v6, event:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1188
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    move v15, v0

    if-eqz v15, :cond_1

    .line 1189
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1405
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14

    .line 1406
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1407
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1408
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1189
    return-void

    .line 1192
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/Runnable;

    move-object v6, v0

    .line 1343
    :goto_2
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1345
    if-eqz v6, :cond_11

    .line 1346
    :try_start_4
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1347
    const/4 v6, 0x0

    .line 1348
    goto :goto_0

    .line 1198
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    move v15, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    .line 1199
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move v15, v0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    .line 1200
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1202
    const-string v15, "GLThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mPaused is now "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " tid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    move v15, v0

    if-eqz v15, :cond_4

    .line 1209
    const-string v15, "GLThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "releasing EGL context because asked to tid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1212
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1213
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1214
    const/4 v2, 0x1

    .line 1218
    :cond_4
    if-eqz v9, :cond_5

    .line 1219
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1220
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1221
    const/4 v9, 0x0

    .line 1225
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move v15, v0

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    move v15, v0

    if-eqz v15, :cond_7

    .line 1227
    const-string v15, "GLThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "releasing EGL surface because paused tid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1230
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/opengl/GLSurfaceView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1231
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1233
    const-string v15, "GLThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "releasing EGL context because paused tid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_6
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/opengl/GLSurfaceView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1239
    const-string v15, "GLThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "terminating EGL because paused tid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    move v15, v0

    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move v15, v0

    if-nez v15, :cond_9

    .line 1247
    const-string v15, "GLThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "noticed surfaceView surface lost tid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move v15, v0

    if-eqz v15, :cond_8

    .line 1250
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1252
    :cond_8
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1253
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1257
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    move v15, v0

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move v15, v0

    if-eqz v15, :cond_a

    .line 1259
    const-string v15, "GLThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "noticed surfaceView surface acquired tid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1262
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1265
    :cond_a
    if-eqz v5, :cond_b

    .line 1267
    const-string v15, "GLThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "sending render notification tid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    const/4 v13, 0x0

    .line 1270
    const/4 v5, 0x0

    .line 1271
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1272
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1276
    :cond_b
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 1279
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move v15, v0

    if-nez v15, :cond_c

    .line 1280
    if-eqz v2, :cond_e

    .line 1281
    const/4 v2, 0x0

    .line 1296
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move v15, v0

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move v15, v0

    if-nez v15, :cond_d

    .line 1297
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1298
    const/4 v4, 0x1

    .line 1299
    const/4 v10, 0x1

    .line 1302
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move v15, v0

    if-eqz v15, :cond_10

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    move-object v15, v0

    #getter for: Landroid/opengl/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v15}, Landroid/opengl/GLSurfaceView;->access$900(Landroid/opengl/GLSurfaceView;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1304
    const/4 v10, 0x1

    .line 1305
    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    move v12, v0

    .line 1306
    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    move v8, v0

    .line 1307
    const/4 v13, 0x1

    .line 1309
    const-string v15, "GLThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "noticing that we want render notification tid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    move-object v15, v0

    const/16 v16, 0x0

    #setter for: Landroid/opengl/GLSurfaceView;->mSizeChanged:Z
    invoke-static/range {v15 .. v16}, Landroid/opengl/GLSurfaceView;->access$902(Landroid/opengl/GLSurfaceView;Z)Z

    .line 1323
    :goto_4
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2

    .line 1343
    :catchall_0
    move-exception v15

    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1405
    :catchall_1
    move-exception v14

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    monitor-enter v15

    .line 1406
    :try_start_7
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1407
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1408
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1405
    throw v14

    .line 1282
    :cond_e
    :try_start_8
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->tryAcquireEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v15

    if-eqz v15, :cond_c

    .line 1284
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/opengl/GLSurfaceView$EglHelper;->start()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1289
    const/4 v15, 0x1

    :try_start_a
    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1290
    const/4 v3, 0x1

    .line 1292
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_3

    .line 1285
    :catch_0
    move-exception v15

    move-object v11, v15

    .line 1286
    .local v11, t:Ljava/lang/RuntimeException;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1287
    throw v11

    .line 1321
    .end local v11           #t:Ljava/lang/RuntimeException;
    :cond_f
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    goto :goto_4

    .line 1341
    :cond_10
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 1351
    :cond_11
    if-eqz v4, :cond_13

    .line 1353
    :try_start_b
    const-string v14, "GLThread"

    const-string v15, "egl createSurface"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/opengl/GLSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v7, v0

    .line 1356
    if-nez v7, :cond_12

    .line 1359
    const-string v14, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Couldn\'t create a surface "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    move v14, v0

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    goto/16 :goto_0

    .line 1364
    :cond_12
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    .line 1365
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/opengl/GLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1366
    const/4 v4, 0x0

    .line 1369
    :cond_13
    if-eqz v3, :cond_14

    .line 1371
    const-string v14, "GLThread"

    const-string/jumbo v15, "onSurfaceCreated"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object v15, v0

    iget-object v15, v15, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v14, v7, v15}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1374
    const/4 v3, 0x0

    .line 1377
    :cond_14
    if-eqz v10, :cond_15

    .line 1379
    const-string v14, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onSurfaceChanged("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    move-object v14, v0

    invoke-interface {v14, v7, v12, v8}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1382
    const/4 v10, 0x0

    .line 1388
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    move-object v14, v0

    invoke-interface {v14, v7}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/opengl/GLSurfaceView$EglHelper;->swap()Z

    move-result v14

    if-nez v14, :cond_16

    .line 1391
    const-string v14, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "egl context lost tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1393
    const/4 v9, 0x1

    .line 1396
    :cond_16
    if-eqz v13, :cond_0

    .line 1397
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1408
    :catchall_2
    move-exception v14

    :try_start_c
    monitor-exit v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v14

    :catchall_3
    move-exception v15

    :try_start_d
    monitor-exit v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v15
.end method

.method private readyToDraw()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1417
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 1162
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1164
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1165
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1167
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 1151
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1152
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1153
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1155
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1413
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1433
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1434
    :try_start_0
    iget v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v0

    return v1

    .line 1435
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 1487
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1489
    :try_start_0
    const-string v2, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPause tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1492
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1493
    :goto_0
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v2, :cond_0

    .line 1495
    const-string v2, "Main thread"

    const-string/jumbo v3, "onPause waiting for mPaused."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1498
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1499
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1500
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1503
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1504
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 1507
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1509
    :try_start_0
    const-string v2, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResume tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1512
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1513
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1514
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1515
    :goto_0
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v2, :cond_0

    .line 1517
    const-string v2, "Main thread"

    const-string/jumbo v3, "onResume waiting for !mPaused."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1520
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1521
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1522
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1525
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1526
    return-void
.end method

.method public onWindowResize(II)V
    .locals 6
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1529
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1530
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1531
    iput p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1532
    iget-object v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    const/4 v3, 0x1

    #setter for: Landroid/opengl/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v2, v3}, Landroid/opengl/GLSurfaceView;->access$902(Landroid/opengl/GLSurfaceView;Z)Z

    .line 1533
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1534
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1535
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1539
    :goto_0
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    #getter for: Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;
    invoke-static {v2}, Landroid/opengl/GLSurfaceView;->access$1000(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLThread;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    #getter for: Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;
    invoke-static {v2}, Landroid/opengl/GLSurfaceView;->access$1000(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView$GLThread;->ableToDraw()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1541
    const-string v2, "Main thread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowResize waiting for render complete from tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    #getter for: Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;
    invoke-static {v4}, Landroid/opengl/GLSurfaceView;->access$1000(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1544
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1545
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1546
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1549
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1550
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1578
    if-nez p1, :cond_0

    .line 1579
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1581
    :cond_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1582
    :try_start_0
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1584
    monitor-exit v0

    .line 1585
    return-void

    .line 1584
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1555
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1556
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1557
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1558
    :goto_0
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1560
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1561
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1562
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1565
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1566
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1569
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1570
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1571
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1439
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1440
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1441
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1442
    monitor-exit v0

    .line 1443
    return-void

    .line 1442
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1134
    const-string v0, "GLThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :try_start_0
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1144
    return-void

    .line 1142
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    throw v0

    .line 1139
    :catch_0
    move-exception v0

    .line 1142
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    goto :goto_0
.end method

.method public setRenderMode(I)V
    .locals 2
    .parameter "renderMode"

    .prologue
    .line 1423
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1424
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1426
    :cond_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1427
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1428
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1429
    monitor-exit v0

    .line 1430
    return-void

    .line 1429
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopRender()V
    .locals 2

    .prologue
    .line 1446
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1447
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1448
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1449
    monitor-exit v0

    .line 1450
    return-void

    .line 1449
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public surfaceCreated()V
    .locals 3

    .prologue
    .line 1453
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1457
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1458
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1459
    :goto_0
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1461
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1462
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1463
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1466
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1467
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 1470
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1474
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1475
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1476
    :goto_0
    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1478
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$800()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1479
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1480
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1483
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1484
    return-void
.end method
