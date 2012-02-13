.class Lcom/motorola/blur/setup/LocaleSelect$2;
.super Ljava/lang/Object;
.source "LocaleSelect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/LocaleSelect;->goToNextActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/LocaleSelect;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/LocaleSelect;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/motorola/blur/setup/LocaleSelect$2;->this$0:Lcom/motorola/blur/setup/LocaleSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 325
    iget-object v0, p0, Lcom/motorola/blur/setup/LocaleSelect$2;->this$0:Lcom/motorola/blur/setup/LocaleSelect;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/blur/setup/LocaleSelect$2;->this$0:Lcom/motorola/blur/setup/LocaleSelect;

    const-class v3, Lcom/motorola/blur/setup/ConnectionChooserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/LocaleSelect;->startActivity(Landroid/content/Intent;)V

    .line 326
    return-void
.end method
