.class public Lcom/android/internal/policy/impl/face/Preview;
.super Landroid/view/SurfaceView;
.source "Preview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/face/Preview$FaceRecognition_JNI_Class;,
        Lcom/android/internal/policy/impl/face/Preview$FaceInfo;,
        Lcom/android/internal/policy/impl/face/Preview$Image;,
        Lcom/android/internal/policy/impl/face/Preview$Constants;
    }
.end annotation


# static fields
.field public static final CAMERA_START:I = 0xb000

.field public static final CAMERA_STOP:I = 0xb001

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DBG:Z = true

.field public static final FACE_CHECK_TIME:I = 0x1388

.field public static final FACE_DENY_COUNT:I = 0x3

.field public static final FACE_STABLE_COUNT:I = 0x4

.field static final FEATURE_PROJECTION:[Ljava/lang/String; = null

.field public static final INDEX_DB_FACE_FEATURE:I = 0x2

.field public static final INDEX_DB_FACE_IMAGE:I = 0x3

.field public static final INDEX_DB_FACE_TIME:I = 0x1

.field public static final INDEX_DB_ID:I = 0x0

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.sec.provider.facekey"

.field public static final SKIP_PREVIEW:I = 0xa

.field private static final TAG:Ljava/lang/String; = "FaceLockScreen"

.field protected static final THREAD_START_PREVIEW:I = 0xa001

.field protected static final THREAD_START_PREVIEW_FAIL:I = 0xa003

.field protected static final THREAD_STOP_PREVIEW:I = 0xa002

.field public static recognitionScore:[I

.field public static vectorCount:I

.field public static verifyResult:I


# instance fields
.field private FaceImage:[B

.field private FeatureVector:[I

.field private RegisteredVector:[[I

.field private alert:Landroid/app/AlertDialog;

.field public databuffer:[B

.field public faceDenyCount:I

.field public faceLightCheckTime:J

.field public faceQueue:I

.field public fcount:I

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field public mCamera:Landroid/hardware/Camera;

.field public mCameraExcption:Z

.field public mCameraIng:Z

.field public mCameraState:I

.field private mContext:Landroid/content/Context;

.field private mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

.field private mHandler:Landroid/os/Handler;

.field public mHolder:Landroid/view/SurfaceHolder;

.field protected mStartPreviewThread:Ljava/lang/Thread;

.field protected mStopPreviewThread:Ljava/lang/Thread;

.field private mfaceinfo:Lcom/android/internal/policy/impl/face/Preview$FaceInfo;

.field public musedcamera:Z

.field public pHeight:I

.field public pWidth:I

.field private parameters:Landroid/hardware/Camera$Parameters;

.field private screen:Ljava/util/Date;

.field public screentimecount:I

.field public shineDarkCount:I

.field private start:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    const-string v0, "content://com.sec.provider.facekey/registerinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/face/Preview;->CONTENT_URI:Landroid/net/Uri;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "facetime"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "facefeature"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "faceimage"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/face/Preview;->FEATURE_PROJECTION:[Ljava/lang/String;

    .line 62
    sput v3, Lcom/android/internal/policy/impl/face/Preview;->verifyResult:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/face/DrawOnTop;Z)V
    .locals 6
    .parameter "context"
    .parameter "callback"
    .parameter "drawOnTop"
    .parameter "usedcamera"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mfaceinfo:Lcom/android/internal/policy/impl/face/Preview$FaceInfo;

    .line 63
    iput v5, p0, Lcom/android/internal/policy/impl/face/Preview;->fcount:I

    .line 64
    iput v5, p0, Lcom/android/internal/policy/impl/face/Preview;->screentimecount:I

    .line 65
    const/16 v1, 0x280

    iput v1, p0, Lcom/android/internal/policy/impl/face/Preview;->pWidth:I

    .line 66
    const/16 v1, 0x1e0

    iput v1, p0, Lcom/android/internal/policy/impl/face/Preview;->pHeight:I

    .line 67
    iput v5, p0, Lcom/android/internal/policy/impl/face/Preview;->faceQueue:I

    .line 68
    iput v5, p0, Lcom/android/internal/policy/impl/face/Preview;->faceDenyCount:I

    .line 69
    iput v5, p0, Lcom/android/internal/policy/impl/face/Preview;->shineDarkCount:I

    .line 70
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/internal/policy/impl/face/Preview;->faceLightCheckTime:J

    .line 73
    move-object v0, v2

    check-cast v0, [[I

    move-object v1, v0

    iput-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->RegisteredVector:[[I

    .line 74
    iput-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->FeatureVector:[I

    .line 75
    iput-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->databuffer:[B

    .line 76
    iput-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->FaceImage:[B

    .line 81
    const v1, 0xb001

    iput v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mCameraState:I

    .line 82
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/face/Preview;->mCameraIng:Z

    .line 83
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/face/Preview;->mCameraExcption:Z

    .line 84
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/face/Preview;->musedcamera:Z

    .line 89
    iput-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mStartPreviewThread:Ljava/lang/Thread;

    .line 90
    iput-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mStopPreviewThread:Ljava/lang/Thread;

    .line 113
    new-instance v1, Lcom/android/internal/policy/impl/face/Preview$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/face/Preview$1;-><init>(Lcom/android/internal/policy/impl/face/Preview;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mHandler:Landroid/os/Handler;

    .line 96
    iput-boolean p4, p0, Lcom/android/internal/policy/impl/face/Preview;->musedcamera:Z

    .line 97
    iput-object p2, p0, Lcom/android/internal/policy/impl/face/Preview;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 98
    iput-object p1, p0, Lcom/android/internal/policy/impl/face/Preview;->mContext:Landroid/content/Context;

    .line 99
    iput-object p3, p0, Lcom/android/internal/policy/impl/face/Preview;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/Preview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mHolder:Landroid/view/SurfaceHolder;

    .line 101
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 102
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 103
    invoke-direct {p0}, Lcom/android/internal/policy/impl/face/Preview;->init()V

    .line 104
    return-void
.end method

.method private CompareFeature()V
    .locals 4

    .prologue
    .line 562
    sget-object v1, Lcom/android/internal/policy/impl/face/Preview;->recognitionScore:[I

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [I

    sput-object v1, Lcom/android/internal/policy/impl/face/Preview;->recognitionScore:[I

    .line 563
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/policy/impl/face/Preview;->vectorCount:I

    if-ge v0, v1, :cond_1

    .line 564
    sget-object v1, Lcom/android/internal/policy/impl/face/Preview;->recognitionScore:[I

    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->RegisteredVector:[[I

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/face/Preview;->FeatureVector:[I

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/face/Preview$FaceRecognition_JNI_Class;->Compare_Feature_Vector([I[I)I

    move-result v2

    aput v2, v1, v0

    .line 565
    const-string v1, "FaceLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "th vector compare"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Score ========= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/face/Preview;->recognitionScore:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    :cond_1
    return-void
.end method

.method private ExtractFeature([B)I
    .locals 7
    .parameter "data"

    .prologue
    .line 548
    const/4 v6, -0x1

    .line 550
    .local v6, result:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview;->FeatureVector:[I

    if-nez v0, :cond_0

    const/16 v0, 0x8c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/face/Preview;->FeatureVector:[I

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview;->FaceImage:[B

    if-nez v0, :cond_1

    const/16 v0, 0x7d0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/policy/impl/face/Preview;->FaceImage:[B

    .line 553
    :cond_1
    const-string v0, "FaceLockScreen"

    const-string v1, "Extract_Feature_Vector"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview;->mfaceinfo:Lcom/android/internal/policy/impl/face/Preview$FaceInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->init()V

    .line 555
    iget v1, p0, Lcom/android/internal/policy/impl/face/Preview;->pHeight:I

    iget v2, p0, Lcom/android/internal/policy/impl/face/Preview;->pWidth:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/face/Preview;->FeatureVector:[I

    iget-object v4, p0, Lcom/android/internal/policy/impl/face/Preview;->FaceImage:[B

    iget-object v5, p0, Lcom/android/internal/policy/impl/face/Preview;->mfaceinfo:Lcom/android/internal/policy/impl/face/Preview$FaceInfo;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/impl/face/Preview$FaceRecognition_JNI_Class;->Extract_Feature_Vector([BII[I[BLcom/android/internal/policy/impl/face/Preview$FaceInfo;)I

    move-result v6

    .line 557
    return v6
.end method

.method private FRDecision()I
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0x28

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 571
    const/4 v4, 0x0

    .line 572
    .local v4, result:I
    sget v5, Lcom/android/internal/policy/impl/face/Preview;->vectorCount:I

    if-ne v5, v8, :cond_2

    .line 574
    sget-object v5, Lcom/android/internal/policy/impl/face/Preview;->recognitionScore:[I

    aget v5, v5, v7

    if-lt v5, v9, :cond_1

    .line 575
    const/4 v4, 0x1

    .line 601
    :cond_0
    :goto_0
    return v4

    .line 577
    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    .line 579
    :cond_2
    sget v5, Lcom/android/internal/policy/impl/face/Preview;->vectorCount:I

    if-ne v5, v10, :cond_4

    .line 581
    sget-object v5, Lcom/android/internal/policy/impl/face/Preview;->recognitionScore:[I

    aget v5, v5, v7

    sget-object v6, Lcom/android/internal/policy/impl/face/Preview;->recognitionScore:[I

    aget v6, v6, v8

    invoke-direct {p0, v5, v6}, Lcom/android/internal/policy/impl/face/Preview;->MinofScore(II)I

    move-result v2

    .line 582
    .local v2, min:I
    sget-object v5, Lcom/android/internal/policy/impl/face/Preview;->recognitionScore:[I

    aget v5, v5, v7

    sget-object v6, Lcom/android/internal/policy/impl/face/Preview;->recognitionScore:[I

    aget v6, v6, v8

    invoke-direct {p0, v5, v6}, Lcom/android/internal/policy/impl/face/Preview;->MaxofScore(II)I

    move-result v1

    .line 584
    .local v1, max:I
    if-lt v1, v9, :cond_3

    const/16 v5, 0x1e

    if-lt v2, v5, :cond_3

    .line 585
    const/4 v4, 0x1

    goto :goto_0

    .line 587
    :cond_3
    const/4 v4, 0x2

    goto :goto_0

    .line 589
    .end local v1           #max:I
    .end local v2           #min:I
    :cond_4
    sget v5, Lcom/android/internal/policy/impl/face/Preview;->vectorCount:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 591
    const/4 v3, 0x0

    .line 592
    .local v3, overTHcount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget v5, Lcom/android/internal/policy/impl/face/Preview;->vectorCount:I

    if-ge v0, v5, :cond_6

    .line 593
    sget-object v5, Lcom/android/internal/policy/impl/face/Preview;->recognitionScore:[I

    aget v5, v5, v0

    if-lt v5, v9, :cond_5

    .line 594
    add-int/lit8 v3, v3, 0x1

    .line 592
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 596
    :cond_6
    if-lt v3, v10, :cond_7

    .line 597
    const/4 v4, 0x1

    goto :goto_0

    .line 599
    :cond_7
    const/4 v4, 0x2

    goto :goto_0
.end method

.method private MaxofScore(II)I
    .locals 1
    .parameter "score0"
    .parameter "score1"

    .prologue
    .line 609
    if-le p1, p2, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method private MinofScore(II)I
    .locals 1
    .parameter "score0"
    .parameter "score1"

    .prologue
    .line 605
    if-le p1, p2, :cond_0

    move v0, p2

    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private RecognitionPreviewProcess([B)V
    .locals 10
    .parameter "data"

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "FaceLockScreen"

    .line 289
    iget v2, p0, Lcom/android/internal/policy/impl/face/Preview;->fcount:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_4

    .line 291
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mfaceinfo:Lcom/android/internal/policy/impl/face/Preview$FaceInfo;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->init()V

    .line 292
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    iget v3, p0, Lcom/android/internal/policy/impl/face/Preview;->pHeight:I

    iget v4, p0, Lcom/android/internal/policy/impl/face/Preview;->pWidth:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/face/Preview;->mfaceinfo:Lcom/android/internal/policy/impl/face/Preview$FaceInfo;

    invoke-static {p1, v3, v4, v5}, Lcom/android/internal/policy/impl/face/Preview$FaceRecognition_JNI_Class;->Find_Face_Eye([BIILcom/android/internal/policy/impl/face/Preview$FaceInfo;)I

    move-result v3

    iput v3, v2, Lcom/android/internal/policy/impl/face/DrawOnTop;->readyCapture:I

    .line 293
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/face/DrawOnTop;->invalidate()V

    .line 295
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    iget v2, v2, Lcom/android/internal/policy/impl/face/DrawOnTop;->readyCapture:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/face/Preview;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    if-eqz v2, :cond_5

    .line 296
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/face/Preview;->faceLightCheckTime:J

    .line 308
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    iget v2, v2, Lcom/android/internal/policy/impl/face/DrawOnTop;->readyCapture:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/face/Preview;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    if-ne v2, v7, :cond_1

    iget v2, p0, Lcom/android/internal/policy/impl/face/Preview;->shineDarkCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/face/Preview;->shineDarkCount:I

    .line 309
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    iget v2, v2, Lcom/android/internal/policy/impl/face/DrawOnTop;->readyCapture:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/face/Preview;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    if-ne v2, v9, :cond_2

    iget v2, p0, Lcom/android/internal/policy/impl/face/Preview;->shineDarkCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/face/Preview;->shineDarkCount:I

    .line 310
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    iget v2, v2, Lcom/android/internal/policy/impl/face/DrawOnTop;->readyCapture:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/face/Preview;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    const/16 v3, 0xb

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/android/internal/policy/impl/face/Preview;->faceQueue:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/face/Preview;->faceQueue:I

    .line 313
    :goto_1
    iget v2, p0, Lcom/android/internal/policy/impl/face/Preview;->faceQueue:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_4

    .line 315
    iget v2, p0, Lcom/android/internal/policy/impl/face/Preview;->pHeight:I

    iget v3, p0, Lcom/android/internal/policy/impl/face/Preview;->pWidth:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/face/Preview;->mfaceinfo:Lcom/android/internal/policy/impl/face/Preview$FaceInfo;

    invoke-static {p1, v2, v3, v4}, Lcom/android/internal/policy/impl/face/Preview$FaceRecognition_JNI_Class;->Check_Eye_Position([BIILcom/android/internal/policy/impl/face/Preview$FaceInfo;)I

    move-result v2

    if-ne v2, v7, :cond_4

    .line 316
    const-string v2, "FaceLockScreen"

    const-string v2, "Check_Eye_Position OK"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/face/Preview;->VerifyFace([B)V

    .line 318
    const-string v2, "FaceLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verification Result ==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/impl/face/Preview;->verifyResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget v2, Lcom/android/internal/policy/impl/face/Preview;->verifyResult:I

    if-ne v2, v7, :cond_7

    .line 321
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    iget-object v3, p0, Lcom/android/internal/policy/impl/face/Preview;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    const/16 v3, 0x15

    iput v3, v2, Lcom/android/internal/policy/impl/face/DrawOnTop;->readyCapture:I

    .line 325
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/face/DrawOnTop;->invalidate()V

    .line 327
    sget v2, Lcom/android/internal/policy/impl/face/Preview;->verifyResult:I

    if-ne v2, v7, :cond_8

    .line 328
    const-string v2, "FaceLockScreen"

    const-string v2, "===  VERIFY_APPROVED"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 332
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v7}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 345
    :cond_4
    :goto_3
    return-void

    .line 298
    :cond_5
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/policy/impl/face/Preview;->faceLightCheckTime:J

    sub-long v0, v2, v4

    .line 299
    .local v0, notFace:J
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 303
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 304
    const v2, 0x1040475

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/face/Preview;->showDialog(I)V

    goto/16 :goto_0

    .line 311
    .end local v0           #notFace:J
    :cond_6
    iput v6, p0, Lcom/android/internal/policy/impl/face/Preview;->faceQueue:I

    goto/16 :goto_1

    .line 322
    :cond_7
    sget v2, Lcom/android/internal/policy/impl/face/Preview;->verifyResult:I

    if-ne v2, v9, :cond_3

    .line 323
    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    iget-object v3, p0, Lcom/android/internal/policy/impl/face/Preview;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    const/16 v3, 0x16

    iput v3, v2, Lcom/android/internal/policy/impl/face/DrawOnTop;->readyCapture:I

    goto :goto_2

    .line 333
    :cond_8
    sget v2, Lcom/android/internal/policy/impl/face/Preview;->verifyResult:I

    if-ne v2, v9, :cond_9

    .line 334
    const-string v2, "FaceLockScreen"

    const-string v2, "===  VERIFY_DENIED"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iput v6, p0, Lcom/android/internal/policy/impl/face/Preview;->fcount:I

    .line 336
    iput v6, p0, Lcom/android/internal/policy/impl/face/Preview;->faceQueue:I

    .line 337
    iget v2, p0, Lcom/android/internal/policy/impl/face/Preview;->faceDenyCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/face/Preview;->faceDenyCount:I

    goto :goto_3

    .line 339
    :cond_9
    iput v6, p0, Lcom/android/internal/policy/impl/face/Preview;->fcount:I

    .line 340
    iput v6, p0, Lcom/android/internal/policy/impl/face/Preview;->faceQueue:I

    goto :goto_3
.end method

.method private StartPreview()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v3, "FaceLockScreen"

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 220
    const-string v1, "FaceLockScreen"

    const-string v2, "Overlay success ==="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mCameraExcption:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->parameters:Landroid/hardware/Camera$Parameters;

    .line 230
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->parameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/internal/policy/impl/face/Preview;->pWidth:I

    iget v3, p0, Lcom/android/internal/policy/impl/face/Preview;->pHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 231
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 232
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 233
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    new-instance v2, Lcom/android/internal/policy/impl/face/Preview$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/face/Preview$3;-><init>(Lcom/android/internal/policy/impl/face/Preview;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 267
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/internal/policy/impl/face/Preview$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/face/Preview$4;-><init>(Lcom/android/internal/policy/impl/face/Preview;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mStartPreviewThread:Ljava/lang/Thread;

    .line 282
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 283
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 284
    return-void

    .line 222
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 223
    .local v0, exception:Ljava/io/IOException;
    const-string v1, "FaceLockScreen"

    const-string v1, "Overlay fail ==="

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mCameraExcption:Z

    .line 225
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 226
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    goto :goto_0
.end method

.method private VerifyFace([B)V
    .locals 4
    .parameter "data"

    .prologue
    const-string v3, "FaceLockScreen"

    .line 375
    invoke-direct {p0}, Lcom/android/internal/policy/impl/face/Preview;->dbSize()I

    move-result v1

    sput v1, Lcom/android/internal/policy/impl/face/Preview;->vectorCount:I

    .line 376
    const-string v1, "FaceLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vectorCount == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/policy/impl/face/Preview;->vectorCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget v1, Lcom/android/internal/policy/impl/face/Preview;->vectorCount:I

    if-lez v1, :cond_0

    .line 380
    const-string v1, "FaceLockScreen"

    const-string v1, "get feature success!!"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget v1, Lcom/android/internal/policy/impl/face/Preview;->vectorCount:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/face/Preview;->getFeature(I)V

    .line 382
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/face/Preview;->ExtractFeature([B)I

    .line 383
    invoke-direct {p0}, Lcom/android/internal/policy/impl/face/Preview;->CompareFeature()V

    .line 384
    invoke-direct {p0}, Lcom/android/internal/policy/impl/face/Preview;->FRDecision()I

    move-result v1

    sput v1, Lcom/android/internal/policy/impl/face/Preview;->verifyResult:I

    .line 385
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/policy/impl/face/Preview$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/face/Preview$6;-><init>(Lcom/android/internal/policy/impl/face/Preview;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 397
    .local v0, worker:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 398
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 404
    .end local v0           #worker:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 401
    :cond_0
    const-string v1, "FaceLockScreen"

    const-string v1, "get feature fail!!"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/policy/impl/face/Preview;->verifyResult:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/face/Preview;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/face/Preview;->showDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/face/Preview;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/face/Preview;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview;->screen:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/face/Preview;Ljava/util/Date;)Ljava/util/Date;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/internal/policy/impl/face/Preview;->screen:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/face/Preview;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/face/Preview;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/android/internal/policy/impl/face/Preview;->start:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/face/Preview;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/android/internal/policy/impl/face/Preview;->start:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/face/Preview;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/face/Preview;->RecognitionPreviewProcess([B)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/face/Preview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/internal/policy/impl/face/Preview;->add3_myDB12()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/face/Preview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/internal/policy/impl/face/Preview;->add3_myDB23()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/face/Preview;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/internal/policy/impl/face/Preview;->add3_myDB3()V

    return-void
.end method

.method private add3_myDB12()V
    .locals 6

    .prologue
    .line 440
    sget v4, Lcom/android/internal/policy/impl/face/Preview;->verifyResult:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 442
    sget-object v4, Lcom/android/internal/policy/impl/face/Preview;->recognitionScore:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, 0x32

    if-lt v4, v5, :cond_1

    .line 444
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 445
    .local v2, time:J
    const/16 v4, 0x230

    new-array v0, v4, [B

    .line 446
    .local v0, featurebyte:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0x8c

    if-ge v1, v4, :cond_0

    .line 448
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/face/Preview;->FeatureVector:[I

    aget v5, v5, v1

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 449
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/internal/policy/impl/face/Preview;->FeatureVector:[I

    aget v5, v5, v1

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 450
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/internal/policy/impl/face/Preview;->FeatureVector:[I

    aget v5, v5, v1

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 451
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Lcom/android/internal/policy/impl/face/Preview;->FeatureVector:[I

    aget v5, v5, v1

    shr-int/lit8 v5, v5, 0x0

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/face/Preview;->FaceImage:[B

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/android/internal/policy/impl/face/Preview;->dbInsert(J[B[B)V

    .line 456
    .end local v0           #featurebyte:[B
    .end local v1           #i:I
    .end local v2           #time:J
    :cond_1
    return-void
.end method

.method private add3_myDB23()V
    .locals 6

    .prologue
    .line 460
    sget v4, Lcom/android/internal/policy/impl/face/Preview;->verifyResult:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 462
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 463
    .local v2, time:J
    const/16 v4, 0x230

    new-array v0, v4, [B

    .line 464
    .local v0, featurebyte:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0x8c

    if-ge v1, v4, :cond_0

    .line 466
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/face/Preview;->FeatureVector:[I

    aget v5, v5, v1

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 467
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/internal/policy/impl/face/Preview;->FeatureVector:[I

    aget v5, v5, v1

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 468
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/internal/policy/impl/face/Preview;->FeatureVector:[I

    aget v5, v5, v1

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 469
    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Lcom/android/internal/policy/impl/face/Preview;->FeatureVector:[I

    aget v5, v5, v1

    shr-int/lit8 v5, v5, 0x0

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/face/Preview;->FaceImage:[B

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/android/internal/policy/impl/face/Preview;->dbInsert(J[B[B)V

    .line 474
    .end local v0           #featurebyte:[B
    .end local v1           #i:I
    .end local v2           #time:J
    :cond_1
    return-void
.end method

.method private add3_myDB3()V
    .locals 17

    .prologue
    .line 408
    sget v1, Lcom/android/internal/policy/impl/face/Preview;->verifyResult:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 410
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/face/Preview;->getLastTime()J

    move-result-wide v11

    .line 411
    .local v11, lasttime:J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/face/Preview;->getCurrentTime()J

    move-result-wide v8

    .line 413
    .local v8, currenttime:J
    sub-long v13, v8, v11

    const-wide/32 v15, 0x5265c00

    cmp-long v1, v13, v15

    if-lez v1, :cond_1

    .line 415
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/face/Preview;->averageScore()I

    move-result v7

    .line 417
    .local v7, average:I
    sget-object v1, Lcom/android/internal/policy/impl/face/Preview;->recognitionScore:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, 0x28

    if-lt v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/face/Preview;->recognitionScore:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    const/16 v2, 0x28

    if-lt v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/face/Preview;->recognitionScore:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    const/16 v2, 0x28

    if-lt v1, v2, :cond_1

    const/16 v1, 0x2d

    if-lt v7, v1, :cond_1

    .line 422
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/face/Preview;->getOldid()I

    move-result v2

    .line 423
    .local v2, oldestid:I
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 424
    .local v3, time:J
    const/16 v1, 0x230

    new-array v5, v1, [B

    .line 425
    .local v5, featurebyte:[B
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    const/16 v1, 0x8c

    if-ge v10, v1, :cond_0

    .line 427
    mul-int/lit8 v1, v10, 0x4

    add-int/lit8 v1, v1, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/face/Preview;->FeatureVector:[I

    move-object v6, v0

    aget v6, v6, v10

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 428
    mul-int/lit8 v1, v10, 0x4

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/face/Preview;->FeatureVector:[I

    move-object v6, v0

    aget v6, v6, v10

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 429
    mul-int/lit8 v1, v10, 0x4

    add-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/face/Preview;->FeatureVector:[I

    move-object v6, v0

    aget v6, v6, v10

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 430
    mul-int/lit8 v1, v10, 0x4

    add-int/lit8 v1, v1, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/face/Preview;->FeatureVector:[I

    move-object v6, v0

    aget v6, v6, v10

    shr-int/lit8 v6, v6, 0x0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 425
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 432
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/face/Preview;->FaceImage:[B

    move-object v6, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/face/Preview;->dbUpdate(IJ[B[B)V

    .line 436
    .end local v2           #oldestid:I
    .end local v3           #time:J
    .end local v5           #featurebyte:[B
    .end local v7           #average:I
    .end local v8           #currenttime:J
    .end local v10           #i:I
    .end local v11           #lasttime:J
    :cond_1
    return-void
.end method

.method private averageScore()I
    .locals 4

    .prologue
    .line 496
    const/4 v1, 0x0

    .line 497
    .local v1, total:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/android/internal/policy/impl/face/Preview;->vectorCount:I

    if-ge v0, v2, :cond_0

    .line 498
    sget-object v2, Lcom/android/internal/policy/impl/face/Preview;->recognitionScore:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    :cond_0
    add-int/lit8 v2, v1, 0x1

    sget v3, Lcom/android/internal/policy/impl/face/Preview;->vectorCount:I

    div-int/2addr v2, v3

    return v2
.end method

.method private dbInsert(J[B[B)V
    .locals 4
    .parameter "time"
    .parameter "facefeature"
    .parameter "faceimage"

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/Preview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 615
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 617
    .local v1, initialValues:Landroid/content/ContentValues;
    const-string v2, "facetime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 618
    const-string v2, "facefeature"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 619
    const-string v2, "faceimage"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 621
    sget-object v2, Lcom/android/internal/policy/impl/face/Preview;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 622
    return-void
.end method

.method private dbSize()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 505
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/Preview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 506
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/internal/policy/impl/face/Preview;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/face/Preview;->FEATURE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 507
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 508
    .local v7, count:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 510
    return v7
.end method

.method private dbUpdate(IJ[B[B)V
    .locals 5
    .parameter "id"
    .parameter "time"
    .parameter "facefeature"
    .parameter "faceimage"

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/Preview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 652
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 654
    .local v1, initialValues:Landroid/content/ContentValues;
    const-string v2, "facetime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 655
    const-string v2, "facefeature"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 656
    const-string v2, "faceimage"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 658
    sget-object v2, Lcom/android/internal/policy/impl/face/Preview;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 659
    return-void
.end method

.method private getCurrentTime()J
    .locals 3

    .prologue
    .line 626
    const/4 v0, 0x0

    .line 627
    .local v0, datetime:Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    .end local v0           #datetime:Ljava/util/Date;
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 628
    .restart local v0       #datetime:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 629
    .local v1, time:J
    return-wide v1
.end method

.method private getFeature(I)V
    .locals 10
    .parameter "dbcount"

    .prologue
    const/16 v9, 0x8c

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 517
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->RegisteredVector:[[I

    if-nez v1, :cond_0

    new-array v1, v4, [[I

    iput-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->RegisteredVector:[[I

    .line 518
    :cond_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 520
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->RegisteredVector:[[I

    aget-object v1, v1, v8

    if-nez v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->RegisteredVector:[[I

    new-array v2, v9, [I

    aput-object v2, v1, v8

    .line 518
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/Preview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 525
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/internal/policy/impl/face/Preview;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/face/Preview;->FEATURE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 527
    .local v6, feacur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 528
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    .line 530
    const/16 v1, 0x230

    new-array v7, v1, [B

    .line 531
    .local v7, featurebyte:[B
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 533
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_3

    .line 535
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->RegisteredVector:[[I

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    aget-object v1, v1, v2

    mul-int/lit8 v2, v8, 0x4

    add-int/lit8 v2, v2, 0x0

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    mul-int/lit8 v3, v8, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, v7, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    mul-int/lit8 v3, v8, 0x4

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, v7, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    mul-int/lit8 v3, v8, 0x4

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, v7, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    add-int/2addr v2, v3

    aput v2, v1, v8

    .line 533
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 541
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 543
    .end local v7           #featurebyte:[B
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 544
    return-void
.end method

.method private getLastTime()J
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 634
    const-wide/16 v9, 0x0

    .line 635
    .local v9, time:J
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/face/Preview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 636
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/internal/policy/impl/face/Preview;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/face/Preview;->FEATURE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 638
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 639
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 641
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 642
    .local v7, dbtime:J
    cmp-long v1, v7, v9

    if-lez v1, :cond_0

    move-wide v9, v7

    .line 643
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 645
    .end local v7           #dbtime:J
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 646
    return-wide v9
.end method

.method private getOldid()I
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 478
    const-wide/32 v8, 0x5f5e0ff

    .line 479
    .local v8, oldtime:J
    const/4 v7, 0x0

    .line 480
    .local v7, oldestid:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 481
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/internal/policy/impl/face/Preview;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/face/Preview;->FEATURE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 482
    .local v6, cur3:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 483
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 485
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    cmp-long v1, v8, v1

    if-gez v1, :cond_0

    .line 486
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 488
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 490
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 491
    return v7
.end method

.method private init()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/face/Preview;->faceDenyCount:I

    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview;->mfaceinfo:Lcom/android/internal/policy/impl/face/Preview$FaceInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;-><init>(Lcom/android/internal/policy/impl/face/Preview;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/face/Preview;->mfaceinfo:Lcom/android/internal/policy/impl/face/Preview$FaceInfo;

    .line 110
    :cond_0
    return-void
.end method

.method private showDialog(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x4

    .line 349
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 350
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040479

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/face/Preview$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/face/Preview$5;-><init>(Lcom/android/internal/policy/impl/face/Preview;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 365
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->alert:Landroid/app/AlertDialog;

    .line 366
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 367
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 371
    return-void
.end method


# virtual methods
.method public CreatePreview()V
    .locals 0

    .prologue
    .line 174
    invoke-static {}, Lcom/android/internal/policy/impl/face/Preview$FaceRecognition_JNI_Class;->FR_Init()I

    .line 175
    return-void
.end method

.method public DestroyPreview()V
    .locals 0

    .prologue
    .line 178
    invoke-static {}, Lcom/android/internal/policy/impl/face/Preview$FaceRecognition_JNI_Class;->FR_Release()I

    .line 179
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 211
    const-string v0, "FaceLockScreen"

    const-string v1, "======== surfaceChanged ==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/face/Preview;->mCameraExcption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/face/Preview;->StartPreview()V

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_0
    const v0, 0x104047a

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/face/Preview;->showDialog(I)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v3, "FaceLockScreen"

    .line 135
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    iput v4, v1, Lcom/android/internal/policy/impl/face/DrawOnTop;->readyCapture:I

    .line 136
    iput v4, p0, Lcom/android/internal/policy/impl/face/Preview;->fcount:I

    .line 137
    iput v4, p0, Lcom/android/internal/policy/impl/face/Preview;->faceQueue:I

    .line 138
    iput v4, p0, Lcom/android/internal/policy/impl/face/Preview;->shineDarkCount:I

    .line 140
    iget-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 142
    const-string v1, "FaceLockScreen"

    const-string v1, "======== surfaceCreated ==="

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const v1, 0xb000

    iput v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mCameraState:I

    .line 145
    const-string v1, "FaceLockScreen"

    const-string v1, "mCameraState ===  CAMERA_START"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mCameraIng:Z

    .line 148
    const-string v1, "FaceLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraIng ==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/face/Preview;->mCameraIng:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/face/Preview;->musedcamera:Z

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "FaceLockScreen"

    const-string v1, "used camera delay"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    .line 162
    const-string v1, "FaceLockScreen"

    const-string v2, "Camera.open ==="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mCameraExcption:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    :cond_1
    :goto_1
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 165
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FaceLockScreen"

    const-string v1, "Camera.open fail ==="

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/face/Preview;->mCameraExcption:Z

    goto :goto_1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    const/4 v3, 0x1

    const-string v2, "FaceLockScreen"

    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview;->alert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 186
    const-string v0, "FaceLockScreen"

    const-string v0, "======== surfaceDestroyed ==="

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const v0, 0xb001

    iput v0, p0, Lcom/android/internal/policy/impl/face/Preview;->mCameraState:I

    .line 189
    const-string v0, "FaceLockScreen"

    const-string v0, "mCameraState ===  CAMERA_STOP"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/face/Preview;->mCameraIng:Z

    .line 192
    const-string v0, "FaceLockScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCameraIng ==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/face/Preview;->mCameraIng:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/policy/impl/face/Preview$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/face/Preview$2;-><init>(Lcom/android/internal/policy/impl/face/Preview;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/face/Preview;->mStopPreviewThread:Ljava/lang/Thread;

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview;->mStopPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview;->mStopPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 207
    :cond_1
    return-void
.end method
