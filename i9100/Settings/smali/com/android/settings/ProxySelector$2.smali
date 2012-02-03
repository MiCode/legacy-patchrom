.class Lcom/android/settings/ProxySelector$2;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/settings/ProxySelector;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/settings/ProxySelector$2;->this$0:Lcom/android/settings/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const-string v2, ""

    .line 241
    iget-object v0, p0, Lcom/android/settings/ProxySelector$2;->this$0:Lcom/android/settings/ProxySelector;

    iget-object v0, v0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/ProxySelector$2;->this$0:Lcom/android/settings/ProxySelector;

    iget-object v0, v0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-void
.end method
