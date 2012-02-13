.class public Lcom/android/phone/PhoneUtils$CallerInfoToken;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallerInfoToken"
.end annotation


# instance fields
.field public asyncQuery:Lcom/android/phone/BlurCallerInfoAsyncQuery;

.field public currentInfo:Lcom/android/internal/telephony/CallerInfo;

.field public isFinal:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
