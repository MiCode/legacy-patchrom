.class Lcom/motorola/blur/setup/LocaleSelect$1;
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
    .line 318
    iput-object p1, p0, Lcom/motorola/blur/setup/LocaleSelect$1;->this$0:Lcom/motorola/blur/setup/LocaleSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/motorola/blur/setup/LocaleSelect$1;->this$0:Lcom/motorola/blur/setup/LocaleSelect;

    #calls: Lcom/motorola/blur/setup/LocaleSelect;->goNext()V
    invoke-static {v0}, Lcom/motorola/blur/setup/LocaleSelect;->access$000(Lcom/motorola/blur/setup/LocaleSelect;)V

    .line 321
    return-void
.end method
