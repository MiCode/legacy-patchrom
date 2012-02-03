.class final enum Landroid/webkit/WebView$ZoomMode;
.super Ljava/lang/Enum;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ZoomMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkit/WebView$ZoomMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkit/WebView$ZoomMode;

.field public static final enum ZOOM_NORMAL:Landroid/webkit/WebView$ZoomMode;

.field public static final enum ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 343
    new-instance v0, Landroid/webkit/WebView$ZoomMode;

    const-string v1, "ZOOM_NORMAL"

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView$ZoomMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebView$ZoomMode;->ZOOM_NORMAL:Landroid/webkit/WebView$ZoomMode;

    .line 344
    new-instance v0, Landroid/webkit/WebView$ZoomMode;

    const-string v1, "ZOOM_ROTATE"

    invoke-direct {v0, v1, v3}, Landroid/webkit/WebView$ZoomMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    .line 342
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/webkit/WebView$ZoomMode;

    sget-object v1, Landroid/webkit/WebView$ZoomMode;->ZOOM_NORMAL:Landroid/webkit/WebView$ZoomMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    aput-object v1, v0, v3

    sput-object v0, Landroid/webkit/WebView$ZoomMode;->$VALUES:[Landroid/webkit/WebView$ZoomMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 342
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkit/WebView$ZoomMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 342
    const-class v0, Landroid/webkit/WebView$ZoomMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebView$ZoomMode;

    return-object p0
.end method

.method public static values()[Landroid/webkit/WebView$ZoomMode;
    .locals 1

    .prologue
    .line 342
    sget-object v0, Landroid/webkit/WebView$ZoomMode;->$VALUES:[Landroid/webkit/WebView$ZoomMode;

    invoke-virtual {v0}, [Landroid/webkit/WebView$ZoomMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebView$ZoomMode;

    return-object v0
.end method
