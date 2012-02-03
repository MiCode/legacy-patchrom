.class public Lcom/slsi/sec/android/HdmiService;
.super Ljava/lang/Object;
.source "HdmiService.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "hdmiservice_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native initHdmiService()V
.end method

.method public native setHdmiCableStatus(I)V
.end method

.method public native setHdmiHdcp(I)V
.end method

.method public native setHdmiMode(I)V
.end method

.method public native setHdmiResolution(I)V
.end method
