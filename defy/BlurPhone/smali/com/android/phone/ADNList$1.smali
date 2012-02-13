.class Lcom/android/phone/ADNList$1;
.super Landroid/os/Handler;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ADNList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ADNList;


# direct methods
.method constructor <init>(Lcom/android/phone/ADNList;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/phone/ADNList$1;->this$0:Lcom/android/phone/ADNList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 91
    const/16 v0, 0x3e9

    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/phone/ADNList$1;->this$0:Lcom/android/phone/ADNList;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/ADNList;->displayProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/ADNList;->access$000(Lcom/android/phone/ADNList;Z)V

    goto :goto_0
.end method
