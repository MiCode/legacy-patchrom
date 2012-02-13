.class Lcom/android/phone/InCallScreen$42;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 7951
    iput-object p1, p0, Lcom/android/phone/InCallScreen$42;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "e"

    .prologue
    .line 7953
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 7954
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 7955
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isVoiceRecordOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7956
    iget-object v1, p0, Lcom/android/phone/InCallScreen$42;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mVaButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$5500(Lcom/android/phone/InCallScreen;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f0200d7

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 7967
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 7958
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen$42;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mVaButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$5500(Lcom/android/phone/InCallScreen;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f0200d5

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 7960
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 7961
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isVoiceRecordOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7962
    iget-object v1, p0, Lcom/android/phone/InCallScreen$42;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mVaButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$5500(Lcom/android/phone/InCallScreen;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f0200d6

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 7964
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen$42;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mVaButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$5500(Lcom/android/phone/InCallScreen;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f0200d4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method
