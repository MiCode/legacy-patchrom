.class Lcom/android/phone/DialpadButtonsView$1;
.super Ljava/lang/Object;
.source "DialpadButtonsView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DialpadButtonsView;->linkControls(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DialpadButtonsView;


# direct methods
.method constructor <init>(Lcom/android/phone/DialpadButtonsView;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/phone/DialpadButtonsView$1;->this$0:Lcom/android/phone/DialpadButtonsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView$1;->this$0:Lcom/android/phone/DialpadButtonsView;

    #getter for: Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/DialpadButtonsView;->access$000(Lcom/android/phone/DialpadButtonsView;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 74
    const/4 v0, 0x0

    return v0
.end method
