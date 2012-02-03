.class public Landroid/drm/mobile1/DrmRights;
.super Ljava/lang/Object;
.source "DrmRights.java"


# static fields
.field public static final DRM_PERMISSION_DISPLAY:I = 0x2

.field public static final DRM_PERMISSION_EXECUTE:I = 0x3

.field public static final DRM_PERMISSION_PLAY:I = 0x1

.field public static final DRM_PERMISSION_PRINT:I = 0x4

.field private static final JNI_DRM_FAILURE:I = -0x1

.field private static final JNI_DRM_SUCCESS:I


# instance fields
.field private roId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 130
    :try_start_0
    const-string v1, "drm1_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 133
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load libdrm1_jni.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Landroid/drm/mobile1/DrmRights;->roId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private native nativeConsumeRights(I)I
.end method

.method private native nativeGetConstraintInfo(ILandroid/drm/mobile1/DrmConstraintInfo;)I
.end method


# virtual methods
.method public consumeRights(I)Z
    .locals 2
    .parameter "permission"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/drm/mobile1/DrmRights;->nativeConsumeRights(I)I

    move-result v0

    .line 96
    .local v0, res:I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 97
    const/4 v1, 0x0

    .line 99
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;
    .locals 3
    .parameter "permission"

    .prologue
    .line 73
    new-instance v0, Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-direct {v0}, Landroid/drm/mobile1/DrmConstraintInfo;-><init>()V

    .line 76
    .local v0, c:Landroid/drm/mobile1/DrmConstraintInfo;
    invoke-direct {p0, p1, v0}, Landroid/drm/mobile1/DrmRights;->nativeGetConstraintInfo(ILandroid/drm/mobile1/DrmConstraintInfo;)I

    move-result v1

    .line 78
    .local v1, res:I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    .line 79
    const/4 v2, 0x0

    .line 81
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method
