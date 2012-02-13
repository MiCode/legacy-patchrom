.class Lcom/motorola/blur/setup/NeedConnectionActivity$2;
.super Ljava/lang/Object;
.source "NeedConnectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/NeedConnectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/NeedConnectionActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/NeedConnectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/motorola/blur/setup/NeedConnectionActivity$2;->this$0:Lcom/motorola/blur/setup/NeedConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/blur/setup/NeedConnectionActivity$2;->this$0:Lcom/motorola/blur/setup/NeedConnectionActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/NeedConnectionActivity;->finish()V

    .line 60
    return-void
.end method
