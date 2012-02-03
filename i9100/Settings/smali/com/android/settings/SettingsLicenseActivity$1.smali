.class Lcom/android/settings/SettingsLicenseActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsLicenseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsLicenseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/SettingsLicenseActivity$1;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity$1;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    #getter for: Lcom/android/settings/SettingsLicenseActivity;->mAlert:Lcom/android/internal/app/AlertController;
    invoke-static {v0}, Lcom/android/settings/SettingsLicenseActivity;->access$000(Lcom/android/settings/SettingsLicenseActivity;)Lcom/android/internal/app/AlertController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsLicenseActivity$1;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    const v2, 0x7f080328

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method
