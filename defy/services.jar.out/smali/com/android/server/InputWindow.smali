.class public final Lcom/android/server/InputWindow;
.super Ljava/lang/Object;
.source "InputWindow.java"


# instance fields
.field public canReceiveKeys:Z

.field public dispatchingTimeoutNanos:J

.field public frameBottom:I

.field public frameLeft:I

.field public frameRight:I

.field public frameTop:I

.field public hasFocus:Z

.field public hasWallpaper:Z

.field public inputChannel:Landroid/view/InputChannel;

.field public layer:I

.field public layoutParamsFlags:I

.field public layoutParamsType:I

.field public name:Ljava/lang/String;

.field public ownerPid:I

.field public ownerUid:I

.field public paused:Z

.field public touchableAreaBottom:I

.field public touchableAreaLeft:I

.field public touchableAreaRight:I

.field public touchableAreaTop:I

.field public userdata:F

.field public visible:Z

.field public visibleFrameBottom:I

.field public visibleFrameLeft:I

.field public visibleFrameRight:I

.field public visibleFrameTop:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputWindow;->inputChannel:Landroid/view/InputChannel;

    return-void
.end method
