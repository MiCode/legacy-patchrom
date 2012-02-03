.class Landroid/webkit/WebViewCore$4;
.super Ljava/lang/Object;
.source "WebViewCore.java"

# interfaces
.implements Landroid/webkit/GeolocationPermissions$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore;->geolocationPermissionsShowPrompt(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewCore;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Landroid/webkit/WebViewCore$4;->this$0:Landroid/webkit/WebViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;ZZ)V
    .locals 3
    .parameter "origin"
    .parameter "allow"
    .parameter "remember"

    .prologue
    .line 444
    new-instance v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$GeolocationPermissionsData;-><init>()V

    .line 445
    .local v0, data:Landroid/webkit/WebViewCore$GeolocationPermissionsData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mOrigin:Ljava/lang/String;

    .line 446
    iput-boolean p2, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mAllow:Z

    .line 447
    iput-boolean p3, v0, Landroid/webkit/WebViewCore$GeolocationPermissionsData;->mRemember:Z

    .line 449
    iget-object v1, p0, Landroid/webkit/WebViewCore$4;->this$0:Landroid/webkit/WebViewCore;

    const/16 v2, 0xb4

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 450
    return-void
.end method
