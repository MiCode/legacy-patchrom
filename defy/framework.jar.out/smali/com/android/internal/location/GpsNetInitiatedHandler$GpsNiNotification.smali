.class public Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
.super Ljava/lang/Object;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsNetInitiatedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GpsNiNotification"
.end annotation


# instance fields
.field public defaultResponse:I

.field public extras:Landroid/os/Bundle;

.field public needNotify:Z

.field public needVerify:Z

.field public niType:I

.field public notificationId:I

.field public privacyOverride:Z

.field public requestorId:Ljava/lang/String;

.field public requestorIdEncoding:I

.field public text:Ljava/lang/String;

.field public textEncoding:I

.field public timeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
