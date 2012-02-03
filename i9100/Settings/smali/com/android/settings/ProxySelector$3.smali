.class Lcom/android/settings/ProxySelector$3;
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
    .line 246
    iput-object p1, p0, Lcom/android/settings/ProxySelector$3;->this$0:Lcom/android/settings/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings/ProxySelector$3;->this$0:Lcom/android/settings/ProxySelector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ProxySelector;->populateFields(Z)V

    .line 249
    return-void
.end method
