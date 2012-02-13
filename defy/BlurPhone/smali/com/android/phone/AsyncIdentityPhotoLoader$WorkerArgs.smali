.class final Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;
.super Ljava/lang/Object;
.source "AsyncIdentityPhotoLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AsyncIdentityPhotoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WorkerArgs"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public cookie:Ljava/lang/Object;

.field public listener:Lcom/android/phone/AsyncIdentityPhotoLoader$OnImageLoadCompleteListener;

.field public result:Ljava/lang/Object;

.field public uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/AsyncIdentityPhotoLoader$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;-><init>()V

    return-void
.end method
