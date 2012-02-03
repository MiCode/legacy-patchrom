.class public Landroid/drm/mobile2/DCFHeaderInfo;
.super Ljava/lang/Object;
.source "DCFHeaderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionTwo;,
        Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionOne;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field public contentID:Ljava/lang/String;

.field public contentLength:I

.field public contentLocationHeaderName:Ljava/lang/String;

.field public contentLocationHeaderValue:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public contentURLHeaderName:Ljava/lang/String;

.field public contentURLHeaderValue:Ljava/lang/String;

.field public customHeaderName:Ljava/lang/String;

.field public customHeaderValue:Ljava/lang/String;

.field public drmVersion:I

.field public encMethod:I

.field public hasContentLocationHeader:Z

.field public hasContentURLHeader:Z

.field public hasCustomHeader:Z

.field public hasPreviewHeader:Z

.field public hasSilentHeader:Z

.field public hasVersionIDHeader:Z

.field public paddingScheme:I

.field public plainTextLength:I

.field public previewHeaderName:Ljava/lang/String;

.field public previewHeaderValue:Ljava/lang/String;

.field public previewPriority:I

.field public rightsIssuerURL:Ljava/lang/String;

.field public silentHeaderName:Ljava/lang/String;

.field public silentHeaderValue:Ljava/lang/String;

.field public userDataAuthor:Ljava/lang/String;

.field public userDataCopyRight:Ljava/lang/String;

.field public userDataDescription:Ljava/lang/String;

.field public userDataIconURI:Ljava/lang/String;

.field public userDataInfoURL:Ljava/lang/String;

.field public userDataTitle:Ljava/lang/String;

.field public versionIDHeaderName:Ljava/lang/String;

.field public versionIDHeaderValue:Ljava/lang/String;

.field public versionOne:Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionOne;

.field public versionTwo:Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionTwo;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "SISODRM"

    iput-object v0, p0, Landroid/drm/mobile2/DCFHeaderInfo;->TAG:Ljava/lang/String;

    .line 21
    iput v2, p0, Landroid/drm/mobile2/DCFHeaderInfo;->drmVersion:I

    .line 23
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->contentType:Ljava/lang/String;

    .line 25
    iput v2, p0, Landroid/drm/mobile2/DCFHeaderInfo;->encMethod:I

    .line 27
    iput v2, p0, Landroid/drm/mobile2/DCFHeaderInfo;->paddingScheme:I

    .line 29
    iput v2, p0, Landroid/drm/mobile2/DCFHeaderInfo;->plainTextLength:I

    .line 30
    iput v2, p0, Landroid/drm/mobile2/DCFHeaderInfo;->contentLength:I

    .line 32
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->contentID:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->rightsIssuerURL:Ljava/lang/String;

    .line 36
    iput v2, p0, Landroid/drm/mobile2/DCFHeaderInfo;->previewPriority:I

    .line 38
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->userDataTitle:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->userDataDescription:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->userDataCopyRight:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->userDataAuthor:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->userDataIconURI:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->userDataInfoURL:Ljava/lang/String;

    .line 50
    iput-boolean v3, p0, Landroid/drm/mobile2/DCFHeaderInfo;->hasSilentHeader:Z

    .line 51
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->silentHeaderName:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->silentHeaderValue:Ljava/lang/String;

    .line 54
    iput-boolean v3, p0, Landroid/drm/mobile2/DCFHeaderInfo;->hasPreviewHeader:Z

    .line 55
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->previewHeaderName:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->previewHeaderValue:Ljava/lang/String;

    .line 58
    iput-boolean v3, p0, Landroid/drm/mobile2/DCFHeaderInfo;->hasContentURLHeader:Z

    .line 59
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->contentURLHeaderName:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->contentURLHeaderValue:Ljava/lang/String;

    .line 62
    iput-boolean v3, p0, Landroid/drm/mobile2/DCFHeaderInfo;->hasVersionIDHeader:Z

    .line 63
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->versionIDHeaderName:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->versionIDHeaderValue:Ljava/lang/String;

    .line 66
    iput-boolean v3, p0, Landroid/drm/mobile2/DCFHeaderInfo;->hasContentLocationHeader:Z

    .line 67
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->contentLocationHeaderName:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->contentLocationHeaderValue:Ljava/lang/String;

    .line 70
    iput-boolean v3, p0, Landroid/drm/mobile2/DCFHeaderInfo;->hasCustomHeader:Z

    .line 71
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->customHeaderName:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->customHeaderValue:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->versionOne:Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionOne;

    .line 76
    iput-object v1, p0, Landroid/drm/mobile2/DCFHeaderInfo;->versionTwo:Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionTwo;

    .line 16
    return-void
.end method
