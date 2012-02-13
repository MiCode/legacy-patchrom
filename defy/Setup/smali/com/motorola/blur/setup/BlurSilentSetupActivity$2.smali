.class Lcom/motorola/blur/setup/BlurSilentSetupActivity$2;
.super Ljava/lang/Object;
.source "BlurSilentSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/BlurSilentSetupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/BlurSilentSetupActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/BlurSilentSetupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/motorola/blur/setup/BlurSilentSetupActivity$2;->this$0:Lcom/motorola/blur/setup/BlurSilentSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurSilentSetupActivity$2;->this$0:Lcom/motorola/blur/setup/BlurSilentSetupActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/BlurSilentSetupActivity;->startAutoSignUpWithRandomId()V

    .line 76
    return-void
.end method
