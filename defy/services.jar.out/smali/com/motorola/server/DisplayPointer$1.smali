.class Lcom/motorola/server/DisplayPointer$1;
.super Ljava/lang/Object;
.source "DisplayPointer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/DisplayPointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/DisplayPointer;


# direct methods
.method constructor <init>(Lcom/motorola/server/DisplayPointer;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/server/DisplayPointer$1;->this$0:Lcom/motorola/server/DisplayPointer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/server/DisplayPointer$1;->this$0:Lcom/motorola/server/DisplayPointer;

    invoke-virtual {v0}, Lcom/motorola/server/DisplayPointer;->hide()V

    return-void
.end method
