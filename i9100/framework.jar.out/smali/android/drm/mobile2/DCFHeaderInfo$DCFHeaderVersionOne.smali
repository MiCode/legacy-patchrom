.class Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionOne;
.super Ljava/lang/Object;
.source "DCFHeaderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/mobile2/DCFHeaderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DCFHeaderVersionOne"
.end annotation


# instance fields
.field public contentDescription:Ljava/lang/String;

.field public contentName:Ljava/lang/String;

.field public contentVendor:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v0, p0, Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionOne;->contentDescription:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionOne;->contentName:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionOne;->contentVendor:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Landroid/drm/mobile2/DCFHeaderInfo$DCFHeaderVersionOne;->iconUrl:Ljava/lang/String;

    .line 80
    return-void
.end method
