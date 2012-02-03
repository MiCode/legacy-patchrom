.class public Lcom/android/internal/policy/impl/face/Preview$FaceRecognition_JNI_Class;
.super Ljava/lang/Object;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/face/Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceRecognition_JNI_Class"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 778
    const-string v0, "FaceRecognition_JNI"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native Check_Eye_Position([BIILcom/android/internal/policy/impl/face/Preview$FaceInfo;)I
.end method

.method public static native Compare_Feature_Vector([I[I)I
.end method

.method public static native Extract_Feature_Vector([BII[I[BLcom/android/internal/policy/impl/face/Preview$FaceInfo;)I
.end method

.method public static native Extract_Only_Feature_Vector([BII[I[BLcom/android/internal/policy/impl/face/Preview$FaceInfo;)I
.end method

.method public static native FR_Init()I
.end method

.method public static native FR_Release()I
.end method

.method public static native Find_Face_Eye([BIILcom/android/internal/policy/impl/face/Preview$FaceInfo;)I
.end method

.method public static native Rotate_Y_image([B[BII)I
.end method
