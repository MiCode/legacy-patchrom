.class Landroid/media/MediaFile$MediaFileType;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaFileType"
.end annotation


# instance fields
.field fileType:I

.field mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p1, p0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .line 174
    iput-object p2, p0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    .line 175
    return-void
.end method
