.class Lcom/samsung/ThemeService$1;
.super Ljava/lang/Object;
.source "ThemeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/ThemeService;


# direct methods
.method constructor <init>(Lcom/samsung/ThemeService;)V
    .locals 0
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/samsung/ThemeService$1;->this$0:Lcom/samsung/ThemeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/samsung/ThemeService$1;->this$0:Lcom/samsung/ThemeService;

    #calls: Lcom/samsung/ThemeService;->updateThemeToActivityManager()Z
    invoke-static {v0}, Lcom/samsung/ThemeService;->access$000(Lcom/samsung/ThemeService;)Z

    .line 621
    return-void
.end method
