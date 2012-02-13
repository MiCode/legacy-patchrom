.class Lcom/motorola/blur/setup/BlurAccountCreator$6;
.super Ljava/lang/Object;
.source "BlurAccountCreator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/BlurAccountCreator;->endProgressUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/BlurAccountCreator;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/BlurAccountCreator;)V
    .locals 0
    .parameter

    .prologue
    .line 904
    iput-object p1, p0, Lcom/motorola/blur/setup/BlurAccountCreator$6;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 906
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurAccountCreator$6;->this$0:Lcom/motorola/blur/setup/BlurAccountCreator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/BlurAccountCreator;->finishProgressUI(ZLjava/lang/String;)V

    .line 907
    return-void
.end method
