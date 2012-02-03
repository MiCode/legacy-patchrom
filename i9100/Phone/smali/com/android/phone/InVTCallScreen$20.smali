.class Lcom/android/phone/InVTCallScreen$20;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 7864
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$20;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 7866
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 7867
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "First Far End View Clicked "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7868
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$20;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5802(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 7869
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$20;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z
    invoke-static {v0, v2}, Lcom/android/phone/InVTCallScreen;->access$5902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 7871
    :cond_0
    return v2
.end method
