.class Landroid/opengl/EGLLogWrapper;
.super Ljava/lang/Object;
.source "EGLLogWrapper.java"

# interfaces
.implements Ljavax/microedition/khronos/egl/EGL11;


# instance fields
.field private mArgCount:I

.field mCheckError:Z

.field private mEgl10:Ljavax/microedition/khronos/egl/EGL10;

.field mLog:Ljava/io/Writer;

.field mLogArgumentNames:Z


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)V
    .locals 3
    .parameter "egl"
    .parameter "configFlags"
    .parameter "log"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    check-cast p1, Ljavax/microedition/khronos/egl/EGL10;

    .end local p1
    iput-object p1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 40
    iput-object p3, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    .line 41
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/opengl/EGLLogWrapper;->mLogArgumentNames:Z

    .line 43
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/opengl/EGLLogWrapper;->mCheckError:Z

    .line 45
    return-void

    :cond_0
    move v0, v1

    .line 41
    goto :goto_0

    :cond_1
    move v0, v1

    .line 43
    goto :goto_1
.end method

.method private arg(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 411
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "object"

    .prologue
    .line 415
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 388
    iget v0, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    if-lez v0, :cond_0

    .line 389
    const-string v0, ", "

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 391
    :cond_0
    iget-boolean v0, p0, Landroid/opengl/EGLLogWrapper;->mLogArgumentNames:Z

    if-eqz v0, :cond_1

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 394
    :cond_1
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1
    .parameter "name"
    .parameter "object"

    .prologue
    .line 429
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p2, v0, :cond_0

    .line 430
    const-string v0, "EGL10.EGL_NO_CONTEXT"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V
    .locals 1
    .parameter "name"
    .parameter "object"

    .prologue
    .line 419
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    .line 420
    const-string v0, "EGL10.EGL_DEFAULT_DISPLAY"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :goto_0
    return-void

    .line 421
    :cond_0
    sget-object v0, Landroid/opengl/EGLLogWrapper;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne p2, v0, :cond_1

    .line 422
    const-string v0, "EGL10.EGL_NO_DISPLAY"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_1
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 1
    .parameter "name"
    .parameter "object"

    .prologue
    .line 437
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p2, v0, :cond_0

    .line 438
    const-string v0, "EGL10.EGL_NO_SURFACE"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private arg(Ljava/lang/String;[I)V
    .locals 2
    .parameter "name"
    .parameter "arr"

    .prologue
    .line 470
    if-nez p2, :cond_0

    .line 471
    const-string/jumbo v0, "null"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :goto_0
    return-void

    .line 473
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/opengl/EGLLogWrapper;->toString(I[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private arg(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "arr"

    .prologue
    .line 478
    if-nez p2, :cond_0

    .line 479
    const-string/jumbo v0, "null"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/opengl/EGLLogWrapper;->toString(I[Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private begin(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 384
    const/4 v0, 0x0

    iput v0, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    .line 385
    return-void
.end method

.method private checkError()V
    .locals 4

    .prologue
    .line 361
    iget-object v2, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, eglError:I
    const/16 v2, 0x3000

    if-eq v0, v2, :cond_0

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, errorMessage:Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->logLine(Ljava/lang/String;)V

    .line 364
    iget-boolean v2, p0, Landroid/opengl/EGLLogWrapper;->mCheckError:Z

    if-eqz v2, :cond_0

    .line 365
    new-instance v2, Landroid/opengl/GLException;

    invoke-direct {v2, v0, v1}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 368
    .end local v1           #errorMessage:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private end()V
    .locals 1

    .prologue
    .line 398
    const-string v0, ");\n"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->flush()V

    .line 400
    return-void
.end method

.method private flush()V
    .locals 2

    .prologue
    .line 404
    :try_start_0
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 406
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    goto :goto_0
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 1
    .parameter "error"

    .prologue
    .line 526
    packed-switch p0, :pswitch_data_0

    .line 558
    invoke-static {p0}, Landroid/opengl/EGLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 528
    :pswitch_0
    const-string v0, "EGL_SUCCESS"

    goto :goto_0

    .line 530
    :pswitch_1
    const-string v0, "EGL_NOT_INITIALIZED"

    goto :goto_0

    .line 532
    :pswitch_2
    const-string v0, "EGL_BAD_ACCESS"

    goto :goto_0

    .line 534
    :pswitch_3
    const-string v0, "EGL_BAD_ALLOC"

    goto :goto_0

    .line 536
    :pswitch_4
    const-string v0, "EGL_BAD_ATTRIBUTE"

    goto :goto_0

    .line 538
    :pswitch_5
    const-string v0, "EGL_BAD_CONFIG"

    goto :goto_0

    .line 540
    :pswitch_6
    const-string v0, "EGL_BAD_CONTEXT"

    goto :goto_0

    .line 542
    :pswitch_7
    const-string v0, "EGL_BAD_CURRENT_SURFACE"

    goto :goto_0

    .line 544
    :pswitch_8
    const-string v0, "EGL_BAD_DISPLAY"

    goto :goto_0

    .line 546
    :pswitch_9
    const-string v0, "EGL_BAD_MATCH"

    goto :goto_0

    .line 548
    :pswitch_a
    const-string v0, "EGL_BAD_NATIVE_PIXMAP"

    goto :goto_0

    .line 550
    :pswitch_b
    const-string v0, "EGL_BAD_NATIVE_WINDOW"

    goto :goto_0

    .line 552
    :pswitch_c
    const-string v0, "EGL_BAD_PARAMETER"

    goto :goto_0

    .line 554
    :pswitch_d
    const-string v0, "EGL_BAD_SURFACE"

    goto :goto_0

    .line 556
    :pswitch_e
    const-string v0, "EGL_CONTEXT_LOST"

    goto :goto_0

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x3000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private static getHex(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 376
    :try_start_0
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private logLine(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method private returns(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 450
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method private returns(Ljava/lang/Object;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 458
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method private returns(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " returns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 446
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->flush()V

    .line 447
    return-void
.end method

.method private returns(Z)V
    .locals 1
    .parameter "result"

    .prologue
    .line 454
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method private toString(I[II)Ljava/lang/String;
    .locals 6
    .parameter "n"
    .parameter "arr"
    .parameter "offset"

    .prologue
    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    .local v1, buf:Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    array-length v0, p2

    .line 489
    .local v0, arrLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 490
    add-int v3, p3, v2

    .line 491
    .local v3, index:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    if-ltz v3, :cond_0

    if-lt v3, v0, :cond_1

    .line 493
    :cond_0
    const-string/jumbo v4, "out of bounds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :goto_1
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    :cond_1
    aget v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 499
    .end local v3           #index:I
    :cond_2
    const-string/jumbo v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private toString(I[Ljava/lang/Object;I)Ljava/lang/String;
    .locals 6
    .parameter "n"
    .parameter "arr"
    .parameter "offset"

    .prologue
    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    .local v1, buf:Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    array-length v0, p2

    .line 507
    .local v0, arrLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 508
    add-int v3, p3, v2

    .line 509
    .local v3, index:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    if-ltz v3, :cond_0

    if-lt v3, v0, :cond_1

    .line 511
    :cond_0
    const-string/jumbo v4, "out of bounds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :goto_1
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 507
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 513
    :cond_1
    aget-object v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 517
    .end local v3           #index:I
    :cond_2
    const-string/jumbo v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    .line 462
    if-nez p1, :cond_0

    .line 463
    const-string/jumbo v0, "null"

    .line 465
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 7
    .parameter "display"
    .parameter "attrib_list"
    .parameter "configs"
    .parameter "config_size"
    .parameter "num_config"

    .prologue
    .line 49
    const-string v0, "eglChooseConfig"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 50
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 51
    const-string v0, "attrib_list"

    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 52
    const-string v0, "config_size"

    invoke-direct {p0, v0, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 53
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 55
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v6

    .line 57
    .local v6, result:Z
    const-string v0, "configs"

    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    const-string/jumbo v0, "num_config"

    invoke-direct {p0, v0, p5}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 59
    invoke-direct {p0, v6}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 60
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 61
    return v6
.end method

.method public eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z
    .locals 2
    .parameter "display"
    .parameter "surface"
    .parameter "native_pixmap"

    .prologue
    .line 66
    const-string v1, "eglCopyBuffers"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 67
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 68
    const-string/jumbo v1, "surface"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 69
    const-string/jumbo v1, "native_pixmap"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 72
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z

    move-result v0

    .line 73
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 74
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 75
    return v0
.end method

.method public eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .parameter "display"
    .parameter "config"
    .parameter "share_context"
    .parameter "attrib_list"

    .prologue
    .line 80
    const-string v1, "eglCreateContext"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 81
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 82
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string/jumbo v1, "share_context"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 84
    const-string v1, "attrib_list"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 85
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 87
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 89
    .local v0, result:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 90
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 91
    return-object v0
.end method

.method public eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .parameter "display"
    .parameter "config"
    .parameter "attrib_list"

    .prologue
    .line 96
    const-string v1, "eglCreatePbufferSurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 97
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 98
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    const-string v1, "attrib_list"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 100
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 102
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 104
    .local v0, result:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 105
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 106
    return-object v0
.end method

.method public eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .parameter "display"
    .parameter "config"
    .parameter "native_pixmap"
    .parameter "attrib_list"

    .prologue
    .line 111
    const-string v1, "eglCreatePixmapSurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 112
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 113
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    const-string/jumbo v1, "native_pixmap"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    const-string v1, "attrib_list"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 116
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 118
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 120
    .local v0, result:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 121
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 122
    return-object v0
.end method

.method public eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .parameter "display"
    .parameter "config"
    .parameter "native_window"
    .parameter "attrib_list"

    .prologue
    .line 127
    const-string v1, "eglCreateWindowSurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 128
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 129
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string/jumbo v1, "native_window"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string v1, "attrib_list"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 132
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 134
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 136
    .local v0, result:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 137
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 138
    return-object v0
.end method

.method public eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 2
    .parameter "display"
    .parameter "context"

    .prologue
    .line 142
    const-string v1, "eglDestroyContext"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 143
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 144
    const-string v1, "context"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 145
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 147
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    .line 148
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 149
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 150
    return v0
.end method

.method public eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 2
    .parameter "display"
    .parameter "surface"

    .prologue
    .line 154
    const-string v1, "eglDestroySurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 155
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 156
    const-string/jumbo v1, "surface"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 157
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 159
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    .line 160
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 161
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 162
    return v0
.end method

.method public eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 2
    .parameter "display"
    .parameter "config"
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 167
    const-string v1, "eglGetConfigAttrib"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 168
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 169
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    const-string v1, "attribute"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 171
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 172
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    .line 174
    .local v0, result:Z
    const-string/jumbo v1, "value"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 175
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 176
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 177
    const/4 v1, 0x0

    return v1
.end method

.method public eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 2
    .parameter "display"
    .parameter "configs"
    .parameter "config_size"
    .parameter "num_config"

    .prologue
    .line 182
    const-string v1, "eglGetConfigs"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 183
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 184
    const-string v1, "config_size"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 185
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 187
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    .line 189
    .local v0, result:Z
    const-string v1, "configs"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    const-string/jumbo v1, "num_config"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 191
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 192
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 193
    return v0
.end method

.method public eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    .prologue
    .line 197
    const-string v1, "eglGetCurrentContext"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 200
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 201
    .local v0, result:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 203
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 204
    return-object v0
.end method

.method public eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 2

    .prologue
    .line 208
    const-string v1, "eglGetCurrentDisplay"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 211
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    .line 212
    .local v0, result:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 214
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 215
    return-object v0
.end method

.method public eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .parameter "readdraw"

    .prologue
    .line 219
    const-string v1, "eglGetCurrentSurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v1, "readdraw"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 221
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 223
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 224
    .local v0, result:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 226
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 227
    return-object v0
.end method

.method public eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 2
    .parameter "native_display"

    .prologue
    .line 231
    const-string v1, "eglGetDisplay"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 232
    const-string/jumbo v1, "native_display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 235
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    .line 236
    .local v0, result:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 238
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 239
    return-object v0
.end method

.method public eglGetError()I
    .locals 2

    .prologue
    .line 243
    const-string v1, "eglGetError"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 246
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 247
    .local v0, result:I
    invoke-static {v0}, Landroid/opengl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 249
    return v0
.end method

.method public eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
    .locals 2
    .parameter "display"
    .parameter "major_minor"

    .prologue
    .line 253
    const-string v1, "eglInitialize"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 254
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 255
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 256
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    .line 257
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 258
    const-string/jumbo v1, "major_minor"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 259
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 260
    return v0
.end method

.method public eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 2
    .parameter "display"
    .parameter "draw"
    .parameter "read"
    .parameter "context"

    .prologue
    .line 265
    const-string v1, "eglMakeCurrent"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 266
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 267
    const-string v1, "draw"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 268
    const-string/jumbo v1, "read"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 269
    const-string v1, "context"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 270
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 271
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    .line 272
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 273
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 274
    return v0
.end method

.method public eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z
    .locals 2
    .parameter "display"
    .parameter "context"
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 279
    const-string v1, "eglQueryContext"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 280
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 281
    const-string v1, "context"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 282
    const-string v1, "attribute"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 283
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 284
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z

    move-result v0

    .line 286
    .local v0, result:Z
    const/4 v1, 0x0

    aget v1, p4, v1

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->returns(I)V

    .line 287
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 288
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 289
    return v0
.end method

.method public eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;
    .locals 2
    .parameter "display"
    .parameter "name"

    .prologue
    .line 293
    const-string v1, "eglQueryString"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 294
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 295
    const-string/jumbo v1, "name"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 296
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 297
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, result:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 299
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 300
    return-object v0
.end method

.method public eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z
    .locals 2
    .parameter "display"
    .parameter "surface"
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 305
    const-string v1, "eglQuerySurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 306
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 307
    const-string/jumbo v1, "surface"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 308
    const-string v1, "attribute"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 309
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 310
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result v0

    .line 312
    .local v0, result:Z
    const/4 v1, 0x0

    aget v1, p4, v1

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->returns(I)V

    .line 313
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 314
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 315
    return v0
.end method

.method public eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 2
    .parameter "display"
    .parameter "surface"

    .prologue
    .line 319
    const-string v1, "eglInitialize"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 320
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 321
    const-string/jumbo v1, "surface"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 322
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 323
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    .line 324
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 325
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 326
    return v0
.end method

.method public eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
    .locals 2
    .parameter "display"

    .prologue
    .line 330
    const-string v1, "eglTerminate"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 331
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 332
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 333
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    move-result v0

    .line 334
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 335
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 336
    return v0
.end method

.method public eglWaitGL()Z
    .locals 2

    .prologue
    .line 340
    const-string v1, "eglWaitGL"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 342
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitGL()Z

    move-result v0

    .line 343
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 344
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 345
    return v0
.end method

.method public eglWaitNative(ILjava/lang/Object;)Z
    .locals 2
    .parameter "engine"
    .parameter "bindTarget"

    .prologue
    .line 349
    const-string v1, "eglWaitNative"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 350
    const-string v1, "engine"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 351
    const-string v1, "bindTarget"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 352
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 353
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitNative(ILjava/lang/Object;)Z

    move-result v0

    .line 354
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 355
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 356
    return v0
.end method
