.class Lcom/android/settings/AccessibilitySettings$9;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings;->displayNoAppsAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$9;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 431
    const-string v3, "ro.screenreader.market"

    const-string v4, "market://search?q=pname:com.google.android.marvin.talkback"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, screenreaderMarketLink:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 435
    .local v1, marketUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 436
    .local v0, marketIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings$9;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v3, v0}, Lcom/android/settings/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V

    .line 437
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings$9;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v3}, Lcom/android/settings/AccessibilitySettings;->finish()V

    .line 438
    return-void
.end method
