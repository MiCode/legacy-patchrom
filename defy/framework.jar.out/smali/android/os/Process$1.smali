.class final Landroid/os/Process$1;
.super Ljava/lang/Object;
.source "Process.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/Process;->start(Ljava/lang/String;Ljava/lang/String;II[II[Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$processClass:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/os/Process$1;->val$processClass:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/Process$1;->val$processClass:Ljava/lang/String;

    #calls: Landroid/os/Process;->invokeStaticMain(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/os/Process;->access$000(Ljava/lang/String;)V

    return-void
.end method
