.class Lcom/android/phone/ListContactPhotoManager$CacheRecord;
.super Ljava/lang/Object;
.source "ListContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ListContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheRecord"
.end annotation


# instance fields
.field public isDirty:Z

.field public photo:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/ListContactPhotoManager$CacheRecord;->isDirty:Z

    return-void
.end method
