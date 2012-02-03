.class Landroid/webkit/DebugFlags;
.super Ljava/lang/Object;
.source "DebugFlags.java"


# static fields
.field public static BROWSER_FRAME:Z = false

.field public static CACHE_MANAGER:Z = false

.field public static CALLBACK_PROXY:Z = false

.field public static COOKIE_MANAGER:Z = false

.field public static COOKIE_SYNC_MANAGER:Z = false

.field public static DRAG_TRACKER:Z = false

.field public static final DRAG_TRACKER_LOGTAG:Ljava/lang/String; = "skia"

.field public static FRAME_LOADER:Z

.field public static final J_WEB_CORE_JAVA_BRIDGE:Z

.field public static LOAD_LISTENER:Z

.field public static NETWORK:Z

.field public static SSL_ERROR_HANDLER:Z

.field public static STREAM_LOADER:Z

.field public static URL_UTIL:Z

.field public static WEB_BACK_FORWARD_LIST:Z

.field public static WEB_SETTINGS:Z

.field public static WEB_SYNC_MANAGER:Z

.field public static WEB_TEXT_VIEW:Z

.field public static WEB_VIEW:Z

.field public static WEB_VIEW_CORE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Landroid/webkit/DebugFlags;->BROWSER_FRAME:Z

    .line 31
    sput-boolean v0, Landroid/webkit/DebugFlags;->CACHE_MANAGER:Z

    .line 32
    sput-boolean v0, Landroid/webkit/DebugFlags;->CALLBACK_PROXY:Z

    .line 33
    sput-boolean v0, Landroid/webkit/DebugFlags;->COOKIE_MANAGER:Z

    .line 34
    sput-boolean v0, Landroid/webkit/DebugFlags;->COOKIE_SYNC_MANAGER:Z

    .line 35
    sput-boolean v0, Landroid/webkit/DebugFlags;->DRAG_TRACKER:Z

    .line 37
    sput-boolean v0, Landroid/webkit/DebugFlags;->FRAME_LOADER:Z

    .line 39
    sput-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    .line 40
    sput-boolean v0, Landroid/webkit/DebugFlags;->NETWORK:Z

    .line 41
    sput-boolean v0, Landroid/webkit/DebugFlags;->SSL_ERROR_HANDLER:Z

    .line 42
    sput-boolean v0, Landroid/webkit/DebugFlags;->STREAM_LOADER:Z

    .line 43
    sput-boolean v0, Landroid/webkit/DebugFlags;->URL_UTIL:Z

    .line 44
    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_BACK_FORWARD_LIST:Z

    .line 45
    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_SETTINGS:Z

    .line 46
    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_SYNC_MANAGER:Z

    .line 47
    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_TEXT_VIEW:Z

    .line 48
    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    .line 49
    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW_CORE:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
