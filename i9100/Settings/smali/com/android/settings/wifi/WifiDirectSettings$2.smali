.class Lcom/android/settings/wifi/WifiDirectSettings$2;
.super Ljava/lang/Object;
.source "WifiDirectSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiDirectSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiDirectSettings;

.field final synthetic val$not_show_again:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiDirectSettings;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDirectSettings$2;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiDirectSettings$2;->val$not_show_again:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$2;->val$not_show_again:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 313
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$2;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_not_show_again"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectSettings$2;->val$not_show_again:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    return-void

    .line 313
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
