.class Lcom/android/phone/InCallScreen$14;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->initInCallScreen()V
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
    .line 2454
    iput-object p1, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const v4, 0x7f0200e0

    const/4 v3, 0x0

    .line 2456
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    const-string v1, "keypad button Clicked!"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 2458
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2459
    iget-object v0, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 2460
    iget-object v0, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mKeypadButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$4200(Lcom/android/phone/InCallScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2473
    :goto_0
    return-void

    .line 2462
    :cond_1
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getScreenSize(Landroid/content/Context;)Lcom/android/phone/PhoneUtils$ScreenSize;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtils$ScreenSize;->HVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    if-ne v0, v1, :cond_3

    .line 2463
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$2200()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show dialpad in Landscape mKeypadButtonAndDialer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mKeypadButtonAndDialer:Landroid/view/View;
    invoke-static {v2}, Lcom/android/phone/InCallScreen;->access$4300(Lcom/android/phone/InCallScreen;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 2464
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mKeypadButtonAndDialer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$4300(Lcom/android/phone/InCallScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2465
    iget-object v0, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mKeypadButtonAndDialer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$4300(Lcom/android/phone/InCallScreen;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x4e00

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2466
    iget-object v0, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCardFooterActive:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$4400(Lcom/android/phone/InCallScreen;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2467
    iget-object v0, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHideKeypadButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$4500(Lcom/android/phone/InCallScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2471
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    goto :goto_0

    .line 2469
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mKeypadButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$4200(Lcom/android/phone/InCallScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1
.end method
