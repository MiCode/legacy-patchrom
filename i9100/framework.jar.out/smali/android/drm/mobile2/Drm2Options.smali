.class public Landroid/drm/mobile2/Drm2Options;
.super Ljava/lang/Object;
.source "Drm2Options.java"


# instance fields
.field public bBluetooth:Z

.field public bCopy:Z

.field public bMove:Z

.field public bMusic:Z

.field public bPreview:Z

.field public bPrint:Z

.field public bRingtone:Z

.field public bSendAs:Z

.field public bSendContentURL:Z

.field public bVideo:Z

.field public bVideotone:Z

.field public bWallpaper:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bMusic:Z

    .line 12
    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bRingtone:Z

    .line 13
    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bVideo:Z

    .line 14
    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bVideotone:Z

    .line 15
    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bCopy:Z

    .line 16
    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bMove:Z

    .line 17
    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bWallpaper:Z

    .line 18
    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bSendContentURL:Z

    .line 19
    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bBluetooth:Z

    .line 20
    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bPrint:Z

    .line 21
    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bPreview:Z

    .line 22
    iput-boolean v0, p0, Landroid/drm/mobile2/Drm2Options;->bSendAs:Z

    .line 7
    return-void
.end method
