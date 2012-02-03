.class Landroid/text/method/TextKeyListener$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "TextKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/TextKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/method/TextKeyListener;


# direct methods
.method public constructor <init>(Landroid/text/method/TextKeyListener;)V
    .locals 1
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    .line 260
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 261
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    .line 265
    iget-object v1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    #getter for: Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Landroid/text/method/TextKeyListener;->access$000(Landroid/text/method/TextKeyListener;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    #getter for: Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Landroid/text/method/TextKeyListener;->access$000(Landroid/text/method/TextKeyListener;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 267
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 268
    iget-object v1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    #setter for: Landroid/text/method/TextKeyListener;->mPrefsInited:Z
    invoke-static {v1, v2}, Landroid/text/method/TextKeyListener;->access$102(Landroid/text/method/TextKeyListener;Z)Z

    .line 275
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    :goto_0
    return-void

    .line 270
    .restart local v0       #contentResolver:Landroid/content/ContentResolver;
    :cond_0
    iget-object v1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    #calls: Landroid/text/method/TextKeyListener;->updatePrefs(Landroid/content/ContentResolver;)V
    invoke-static {v1, v0}, Landroid/text/method/TextKeyListener;->access$200(Landroid/text/method/TextKeyListener;Landroid/content/ContentResolver;)V

    goto :goto_0

    .line 273
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    :cond_1
    iget-object v1, p0, Landroid/text/method/TextKeyListener$SettingsObserver;->this$0:Landroid/text/method/TextKeyListener;

    #setter for: Landroid/text/method/TextKeyListener;->mPrefsInited:Z
    invoke-static {v1, v2}, Landroid/text/method/TextKeyListener;->access$102(Landroid/text/method/TextKeyListener;Z)Z

    goto :goto_0
.end method
