.class public final Lcom/motorola/blur/setup/CaptchaUtility$CaptchaProcessingResult;
.super Ljava/lang/Object;
.source "CaptchaUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/CaptchaUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptchaProcessingResult"
.end annotation


# static fields
.field public static final CAPTCHA_ERROR_UNKNOW:I = 0x0

.field public static final CAPTCHA_HTTP_LOADING:I = 0x2

.field public static final CAPTCHA_IMAGE_RECEIVED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
