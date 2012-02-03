.class public Landroid/text/ClipboardManager;
.super Ljava/lang/Object;
.source "ClipboardManager.java"


# static fields
.field private static sService:Landroid/text/IClipboard;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/text/ClipboardManager;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private static getService()Landroid/text/IClipboard;
    .locals 2

    .prologue
    .line 41
    sget-object v1, Landroid/text/ClipboardManager;->sService:Landroid/text/IClipboard;

    if-eqz v1, :cond_0

    .line 42
    sget-object v1, Landroid/text/ClipboardManager;->sService:Landroid/text/IClipboard;

    .line 46
    :goto_0
    return-object v1

    .line 44
    :cond_0
    const-string v1, "clipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 45
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v1

    sput-object v1, Landroid/text/ClipboardManager;->sService:Landroid/text/IClipboard;

    .line 46
    sget-object v1, Landroid/text/ClipboardManager;->sService:Landroid/text/IClipboard;

    goto :goto_0
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 61
    :try_start_0
    invoke-static {}, Landroid/text/ClipboardManager;->getService()Landroid/text/IClipboard;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/IClipboard;->getClipboardText()Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 63
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    .line 82
    :try_start_0
    invoke-static {}, Landroid/text/ClipboardManager;->getService()Landroid/text/IClipboard;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/IClipboard;->hasClipboardText()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 84
    :goto_0
    return v1

    .line 83
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 84
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 72
    :try_start_0
    invoke-static {}, Landroid/text/ClipboardManager;->getService()Landroid/text/IClipboard;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method
