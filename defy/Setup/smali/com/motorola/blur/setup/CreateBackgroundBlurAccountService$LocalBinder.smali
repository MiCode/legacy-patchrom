.class public Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$LocalBinder;
.super Landroid/os/Binder;
.source "CreateBackgroundBlurAccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$LocalBinder;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService$LocalBinder;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountService;

    return-object v0
.end method
