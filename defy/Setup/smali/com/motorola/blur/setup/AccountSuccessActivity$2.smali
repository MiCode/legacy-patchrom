.class Lcom/motorola/blur/setup/AccountSuccessActivity$2;
.super Ljava/lang/Object;
.source "AccountSuccessActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/AccountSuccessActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/AccountSuccessActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/AccountSuccessActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/motorola/blur/setup/AccountSuccessActivity$2;->this$0:Lcom/motorola/blur/setup/AccountSuccessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountSuccessActivity$2;->this$0:Lcom/motorola/blur/setup/AccountSuccessActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/AccountSuccessActivity;->setResult(I)V

    .line 111
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountSuccessActivity$2;->this$0:Lcom/motorola/blur/setup/AccountSuccessActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/AccountSuccessActivity;->finish()V

    .line 112
    return-void
.end method
